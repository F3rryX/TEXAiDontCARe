package com.texa.careapp.app.sos.featuremanager;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.fragment.app.FragmentManager;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.sos.AutomaticSosActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.checks.Check;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.impactdetection.ImpactDetectorListener;
import com.texa.careapp.impactdetection.ImpactEvent;
import com.texa.careapp.impactdetection.ImpactReportCreator;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.ServiceListResponse;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.impacts.CrashReportStatus;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.ImpactDetectionListener;
import com.texa.carelib.care.impacts.events.ImpactDetectedEvent;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SosFeatureDefaultManager implements SosFeatureManager {
    private Disposable buttonObservableDisposable;
    private ChecksFactory mChecksFactory;
    private final Context mContext;
    private CrashLogReader mCrashLogReader;
    private final DongleDataManager mDongleDataManager;
    private EventBus mEventBus;
    private FragmentManager mFragmentManager;
    private final ImpactDetection mImpactDetection;
    private final ImpactDetector mImpactDetector;
    private LoggerManager mLoggerManager;
    private final SharedPreferences mPrefs;
    private final ServiceDataManager mServiceDataManager;
    private final TexaCareApiServiceUser mTexaCareApiServiceUser;
    private Observable<Integer> sosButtonIsEnable;
    private ServiceDataModel sosService;
    private ImpactDetectionListener mImpactDetectionListener = new ImpactDetectionListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager.1
        @Override // com.texa.carelib.care.impacts.ImpactDetectionListener
        public void onImpactDetected(ImpactDetectedEvent impactDetectedEvent) {
            super.onImpactDetected(impactDetectedEvent);
            SosFeatureDefaultManager.this.onCAReImpactDetected(impactDetectedEvent);
        }
    };
    private ImpactDetectorListener mImpactDetectorListener = new ImpactDetectorListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda0
        @Override // com.texa.careapp.impactdetection.ImpactDetectorListener
        public final void onImpactDetected(ImpactEvent impactEvent) {
            this.f$0.onSmartPhoneImpactDetected(impactEvent);
        }
    };
    private Long mLastImpactDetected = -1L;

    public void initResources(Context context) {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean isEnabled() {
        return false;
    }

    void onCAReImpactDetected(ImpactDetectedEvent impactDetectedEvent) {
        Timber.d("CARe CRASH detected!", new Object[0]);
        if (impactDetectedEvent.getImpact().getCrashReport() != null && CrashReportStatus.Valid != impactDetectedEvent.getImpact().getCrashReport().getStatus()) {
            Timber.w("Detected impact with status: %s", impactDetectedEvent.getImpact().getCrashReport().getStatus());
            return;
        }
        try {
            try {
                this.mImpactDetector.onCareImpactDetected();
            } catch (Exception e) {
                Timber.e(e, "Error discarding smart-phone impact.", new Object[0]);
            }
        } finally {
            onImpactDetected(1, impactDetectedEvent.getImpact().getDate());
        }
    }

    void onSmartPhoneImpactDetected(ImpactEvent impactEvent) {
        Timber.d("SmartPhone CRASH detected!", new Object[0]);
        StringBuilder sb = new StringBuilder();
        try {
            sb.append(createImpactReportDump(impactEvent));
        } catch (Exception e) {
            Timber.e(e, "Could not generate impact detector report dump.", new Object[0]);
        }
        if (1 == impactEvent.getValidationStatus()) {
            this.mLoggerManager.log(ServerLogModel.LogEvent.IMPACT_DETECTED_BY_PHONE_DATA_DUMP, ServerLogModel.ResultForLog.SUCCESSFULL, sb.toString());
            onImpactDetected(2, impactEvent.getImpactTime() != null ? new Date(impactEvent.getImpactTime().longValue()) : null);
        } else {
            this.mLoggerManager.log(ServerLogModel.LogEvent.IMPACT_DETECTED_BY_PHONE_DATA_DUMP, ServerLogModel.ResultForLog.FAILED, sb.toString());
        }
    }

    void onImpactDetected(int i, Date date) {
        ServiceDataModel sosServiceForImpact = getSosServiceForImpact();
        int iOrdinal = sosServiceForImpact != null ? sosServiceForImpact.getIdType().ordinal() : -1;
        if (canStartSosCall(i, sosServiceForImpact)) {
            if (i == 2 && !isSmartphoneImpactDetectedEnabledFromPrefs()) {
                Timber.w(" ADDITIONAL_PHONE_IMPACT_DETECTION disabled !", new Object[0]);
                return;
            } else {
                this.mLastImpactDetected = Long.valueOf(date.getTime());
                Context context = this.mContext;
                context.startActivity(AutomaticSosActivity.buildIntent(context, i, date, iOrdinal));
            }
        }
        this.mCrashLogReader.read(this.mImpactDetection);
    }

    private ServiceDataModel getSosServiceForImpact() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return null;
        }
        return getPurchasedServiceForHwid(dongleModel.getHwid(), this.mServiceDataManager.getSosServices());
    }

    private boolean isSmartphoneImpactDetectedEnabledFromPrefs() {
        return this.mPrefs.getBoolean(Constants.PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION, true);
    }

    private boolean canStartSosCall(int i, ServiceDataModel serviceDataModel) {
        if (i != 2 && i != 1) {
            Timber.wtf(new NullPointerException("logEvent is null!"), "Log event could not be null!!", new Object[0]);
            return false;
        }
        ServerLogModel.LogEvent logEventGenerateLogEvent = generateLogEvent(i);
        if (isMultiCrashDetection()) {
            this.mLoggerManager.log(logEventGenerateLogEvent, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.OTHER_CRASH_DETECTED);
            return false;
        }
        if (serviceDataModel == null) {
            this.mLoggerManager.log(logEventGenerateLogEvent, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.CRASH_DETECTED_WITHOUT_PURCHASED_SERVICE);
            return false;
        }
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            return isSosServiceActiveAndAccepted(serviceDataModel, logEventGenerateLogEvent);
        }
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            return isSosServiceActiveAndAccepted(serviceDataModel, logEventGenerateLogEvent);
        }
        return false;
    }

    private boolean isMultiCrashDetection() {
        return this.mLastImpactDetected.longValue() != -1 && Long.valueOf(new Date().getTime() - this.mLastImpactDetected.longValue()).longValue() <= ((long) 15000);
    }

    private boolean isSosServiceActiveAndAccepted(ServiceDataModel serviceDataModel, ServerLogModel.LogEvent logEvent) {
        if (serviceDataModel.isActive()) {
            this.mLoggerManager.log(logEvent, ServerLogModel.ResultForLog.SUCCESSFULL, "");
            return true;
        }
        this.mLoggerManager.log(logEvent, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.CRASH_DETECTED_WITHOUT_ACTIVE_SERVICE);
        return false;
    }

    private ServerLogModel.LogEvent generateLogEvent(int i) {
        if (i == 1) {
            return ServerLogModel.LogEvent.IMPACT_DET;
        }
        return ServerLogModel.LogEvent.IMPACT_DETECTED_BY_PHONE;
    }

    public SosFeatureDefaultManager(Context context, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager, ChecksFactory checksFactory, LoggerManager loggerManager, ImpactDetection impactDetection, ImpactDetector impactDetector, SharedPreferences sharedPreferences, ServiceDataManager serviceDataManager, EventBus eventBus, CrashLogReader crashLogReader) {
        this.mContext = context;
        this.mDongleDataManager = dongleDataManager;
        this.mServiceDataManager = serviceDataManager;
        this.mTexaCareApiServiceUser = texaCareApiServiceUser;
        this.mChecksFactory = checksFactory;
        this.mLoggerManager = loggerManager;
        this.mPrefs = sharedPreferences;
        this.mImpactDetection = impactDetection;
        this.mImpactDetector = impactDetector;
        this.mEventBus = eventBus;
        this.mCrashLogReader = crashLogReader;
        initResources(context);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void initData(ServiceDataModel serviceDataModel) {
        this.sosService = serviceDataModel;
        setButtonDefault();
        this.sosButtonIsEnable = createSosButtonObserver();
    }

    private void setButtonDefault() {
        this.mEventBus.post(new UpdateButton(this.mServiceDataManager.checkServiceAndDongleStatus(Check.Result.BLOCKING, this.sosService).intValue()));
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void startButtonObserver() {
        this.buttonObservableDisposable = this.sosButtonIsEnable.compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m499x2871bea6((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("sosButtonIsEnable onError", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startButtonObserver$0$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager, reason: not valid java name */
    public /* synthetic */ void m499x2871bea6(Integer num) throws Exception {
        Timber.d("sosButtonIsEnable onNext status -> %s", num);
        this.mEventBus.post(new UpdateButton(num.intValue()));
    }

    public class UpdateButton {
        int sosStatus;

        public UpdateButton(int i) {
            this.sosStatus = i;
        }

        public int getSosStatus() {
            return this.sosStatus;
        }
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Disposable getButtonObservableSubscription() {
        return this.buttonObservableDisposable;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void setFragmentManager(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectionListener() {
        this.mImpactDetection.removeImpactDetectionListener(this.mImpactDetectionListener);
        this.mImpactDetection.addImpactDetectionListener(this.mImpactDetectionListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectionListener() {
        this.mImpactDetection.removeImpactDetectionListener(this.mImpactDetectionListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectorListener() {
        this.mImpactDetector.setImpactDetectorListener(this.mImpactDetectorListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectorListener() {
        this.mImpactDetector.setImpactDetectorListener(null);
    }

    public Observable<Integer> createSosButtonObserver() {
        if (this.sosService == null) {
            return createObsWithServerResponse();
        }
        return createObsWithDBResponse();
    }

    private Observable<Integer> createObsWithDBResponse() {
        return Observable.combineLatest(observeChecksForSosButton(), Observable.just(this.sosService), getIntervalObservable(), new Function3() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return this.f$0.m497x77628185((Check.Result) obj, (ServiceDataModel) obj2, (Long) obj3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$createObsWithDBResponse$2$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager, reason: not valid java name */
    public /* synthetic */ Integer m497x77628185(Check.Result result, ServiceDataModel serviceDataModel, Long l) throws Exception {
        return this.mServiceDataManager.checkServiceAndDongleStatus(result, serviceDataModel);
    }

    private Observable<Integer> createObsWithServerResponse() {
        return Observable.combineLatest(observeChecksForSosButton(), this.mTexaCareApiServiceUser.dongleServices().flatMap(new Function() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.persistData((ServiceListResponse) obj);
            }
        }), getIntervalObservable(), new Function3() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return this.f$0.m498xc0f11c1f((Check.Result) obj, (List) obj2, (Long) obj3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$createObsWithServerResponse$3$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager, reason: not valid java name */
    public /* synthetic */ Integer m498xc0f11c1f(Check.Result result, List list, Long l) throws Exception {
        return checkServiceAndDongleStatus(result, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Check.Result checksResult(Object[] objArr) {
        Check.Result result = Check.Result.OK;
        for (Object obj : objArr) {
            Check.Result result2 = (Check.Result) obj;
            if (result2 == Check.Result.BLOCKING) {
                return Check.Result.BLOCKING;
            }
            if (result2 == Check.Result.WARNING) {
                result = Check.Result.WARNING;
            }
        }
        return result;
    }

    private Observable<Long> getIntervalObservable() {
        return Observable.interval(1L, TimeUnit.MINUTES).startWith(-1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<List<ServiceDataModel>> persistData(ServiceListResponse serviceListResponse) {
        return Observable.just(this.mServiceDataManager.saveServiceData(serviceListResponse));
    }

    private Integer checkServiceAndDongleStatus(Check.Result result, List<ServiceDataModel> list) {
        ServiceDataModel purchasedServiceForHwid = getPurchasedServiceForHwid(this.mDongleDataManager.getDongleModel().getHwid(), list);
        this.sosService = purchasedServiceForHwid;
        return this.mServiceDataManager.checkServiceAndDongleStatus(result, purchasedServiceForHwid);
    }

    protected ServiceDataModel getPurchasedServiceForHwid(String str, List<ServiceDataModel> list) {
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        return serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(str, list));
    }

    public boolean isCareConnectedLessThen10Mins(CommunicationObservable.Status status) {
        Long lastParametersUpdate;
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            return true;
        }
        return status == CommunicationObservable.Status.CARE_NOT_CONNECTED && (lastParametersUpdate = this.mDongleDataManager.getDongleModel().getLastParametersUpdate()) != null && Long.valueOf(new Date().getTime() - lastParametersUpdate.longValue()).longValue() <= ((long) Constants.SOS_CONNECTION_TIMEOUT);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context) {
        return getSosServiceStatusDescription(context, getSosService());
    }

    private ServiceDataModel getSosService() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.e("#getSosService() currentDongle is NULL", new Object[0]);
            return null;
        }
        ServiceDataModel purchasedServiceForHwid = getPurchasedServiceForHwid(dongleModel.getHwid(), this.mServiceDataManager.getSosServices());
        this.sosService = purchasedServiceForHwid;
        return purchasedServiceForHwid;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context, ServiceDataModel serviceDataModel) {
        if (serviceDataModel == null) {
            return context.getString(R.string.sos_service_not_available_for_purchase);
        }
        ServiceDataModel.DongleServiceStatus status = serviceDataModel.getStatus();
        int i = AnonymousClass2.$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[status.ordinal()];
        if (i == 1) {
            if (serviceDataModel.isTrial()) {
                return context.getString(R.string.sos_service_not_active_availlable_for_purchase_trial);
            }
            return context.getString(R.string.sos_service_not_active_availlable_for_purchase);
        }
        if (i != 2) {
            if (i == 3) {
                return context.getString(R.string.sos_service_activating);
            }
            Timber.e("Service status not expected: %s", status);
            return "";
        }
        if (serviceDataModel.isTermsAccepted()) {
            if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
                return context.getString(R.string.service_active_configured);
            }
            if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS && !serviceDataModel.isTrial()) {
                return context.getString(R.string.service_active_subscription);
            }
            return context.getString(R.string.service_active_until, formatDate(serviceDataModel.getLastExpirationDate())) + expireDataForLastService(serviceDataModel);
        }
        return context.getString(R.string.sos_service_need_to_be_accepted);
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus;

        static {
            int[] iArr = new int[ServiceDataModel.DongleServiceStatus.values().length];
            $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus = iArr;
            try {
                iArr[ServiceDataModel.DongleServiceStatus.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[ServiceDataModel.DongleServiceStatus.ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[ServiceDataModel.DongleServiceStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private String expireDataForLastService(ServiceDataModel serviceDataModel) {
        int iCreateMonthExpiration;
        Date lastExpirationDate = serviceDataModel.getLastExpirationDate();
        Date lastExpirationForFutureServices = serviceDataModel.getLastExpirationForFutureServices();
        if (lastExpirationForFutureServices == null || (iCreateMonthExpiration = createMonthExpiration(lastExpirationDate, lastExpirationForFutureServices)) < 1) {
            return "";
        }
        return "\n" + this.mContext.getString(R.string.extension, Integer.valueOf(iCreateMonthExpiration));
    }

    int createMonthExpiration(Date date, Date date2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTime(date2);
        return (((gregorianCalendar2.get(1) - gregorianCalendar.get(1)) * 12) + gregorianCalendar2.get(2)) - gregorianCalendar.get(2);
    }

    private String formatDate(Date date) {
        DateFormat dateInstance = DateFormat.getDateInstance(3, Locale.getDefault());
        if (dateInstance instanceof SimpleDateFormat) {
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) dateInstance;
            simpleDateFormat.applyPattern(simpleDateFormat.toPattern().replaceAll("y+", "yyyy"));
            return simpleDateFormat.format(date);
        }
        return dateInstance.format(date);
    }

    @Deprecated
    protected String getSosServiceStatusDescriptionInner(Context context, DongleModel dongleModel, Date date) {
        ServiceDataModel purchasedServiceForHwid = getPurchasedServiceForHwid(dongleModel.getHwid(), dongleModel.getServices());
        if (purchasedServiceForHwid == null) {
            return context.getString(R.string.sos_service_not_available_for_purchase);
        }
        ServiceDataModel.DongleServiceStatus status = purchasedServiceForHwid.getStatus();
        if (status == ServiceDataModel.DongleServiceStatus.ACTIVE && purchasedServiceForHwid.isTermsAccepted()) {
            Date lastExpirationDateFor = dongleModel.getLastExpirationDateFor(ServiceDataModel.DongleServiceId.SOS, date);
            if (lastExpirationDateFor != null) {
                return context.getString(R.string.service_active_until, formatDate(lastExpirationDateFor));
            }
            return context.getString(R.string.service_active_until);
        }
        if (status == ServiceDataModel.DongleServiceStatus.PENDING) {
            return context.getString(R.string.service_activating);
        }
        return context.getString(R.string.service_not_active);
    }

    private Observable<Check.Result> observeChecksForSosButton() {
        return Observable.combineLatest(Arrays.asList(this.mChecksFactory.newCheckPhoneNumber().check(), this.mChecksFactory.newCheckBluetooth().check(), this.mChecksFactory.newCheckGps().check(), this.mChecksFactory.newCheckCareConnection().check(), this.mChecksFactory.newCheckNetworkConnection().check()), new SosFeatureDefaultManager$$ExternalSyntheticLambda6(this));
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecks() {
        return Observable.combineLatest(Arrays.asList(this.mChecksFactory.newCheckPhoneNumber().check(), this.mChecksFactory.newCheckBluetooth().check(), this.mChecksFactory.newCheckGps().check(), this.mChecksFactory.newCheckCareConnection().check(), this.mChecksFactory.newCheckCurrentService().check(), this.mChecksFactory.newCheckNetworkConnection().check()), new SosFeatureDefaultManager$$ExternalSyntheticLambda6(this));
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForServices() {
        return Observable.combineLatest(Arrays.asList(this.mChecksFactory.newCheckPhoneNumber().check(), this.mChecksFactory.newCheckCurrentService().check()), new SosFeatureDefaultManager$$ExternalSyntheticLambda6(this));
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForNotification() {
        return Observable.combineLatest(Arrays.asList(this.mChecksFactory.newCheckPhoneNumber().check(), this.mChecksFactory.newCheckGps().check(), this.mChecksFactory.newCheckCareConnection().check(), this.mChecksFactory.newCheckCurrentService().check(), this.mChecksFactory.newCheckNetworkConnection().check()), new SosFeatureDefaultManager$$ExternalSyntheticLambda6(this));
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean shouldCheckSosPrerequisites() {
        ServiceDataModel serviceDataModel;
        return (this.mDongleDataManager.getDongleModel() == null || (serviceDataModel = this.sosService) == null || !serviceDataModel.isActive()) ? false : true;
    }

    public ServiceDataModel getCurrentSosService() {
        return this.sosService;
    }

    protected String createImpactReportDump(ImpactEvent impactEvent) {
        try {
            return new ImpactReportCreator().create(this.mContext, impactEvent);
        } catch (IOException e) {
            Timber.e(e, "Could not generate impact report.", new Object[0]);
            return "";
        }
    }
}
