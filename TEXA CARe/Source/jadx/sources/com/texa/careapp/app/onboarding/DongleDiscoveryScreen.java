package com.texa.careapp.app.onboarding;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.onboarding.adapters.DongleAdapter;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.ScreenDongleDiscoveryBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.SelectionModel;
import com.texa.careapp.networking.HardwareIdList;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.DongleListResponse;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.UniqueList;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceDiscoveryListener;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.events.DeviceFoundEvent;
import com.texa.carelib.communication.events.DeviceNameChangedEvent;
import com.texa.carelib.core.CareLibException;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DongleDiscoveryScreen extends Screen {
    private static boolean isConfigured = false;
    private Disposable communicationSub;
    private DeviceInfo deviceInfo;
    private Disposable dongleSummarySub;
    private boolean hasSkipped;
    private CareApplication mApplication;
    private ImageView mCareImage;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected CommunicationObservable mCommunicationObservable;
    private TextView mDiscoveryDescription;
    private RelativeLayout mDiscoveryEmpty;
    private RelativeLayout mDiscoveryStartButton;
    private DongleAdapter mDongleAdapter;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private RecyclerView mDongleList;

    @Inject
    protected EventBus mEventBus;
    private TextView mListTitle;
    private TextView mNoDevicesDescription;
    private TextView mNoDevicesLabel;
    private OnBoardingActivity mOnBoardingActivity;
    private CoordinatorLayout mParentRelativeLayout;
    private ProgressDialogFragment mProgressDialogFragment;
    private RelativeLayout mProgressLayout;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private TextView mStartDiscoveryTextView;

    @Inject
    protected TexaCareApiServiceClient mTexaCareApiServiceClient;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected TexaProfileDelegate mTexaProfileDelegate;
    private Disposable scanSub;
    private Disposable timerDisposable;
    private UniqueList<DeviceInfoExt> mDongles = new UniqueList<>();
    private boolean mAtLeastOnScanHasStarted = false;
    private boolean isProgressDialogShown = false;
    private boolean isOperationFinished = false;
    private HashMap<String, DeviceInfoExt> deviceInfoExtHashMap = new HashMap<>();
    private final DeviceDiscoveryListener mDeviceDiscoveryListener = new AnonymousClass1();
    private final View.OnClickListener mOnClickRetryConnection = new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DongleDiscoveryScreen dongleDiscoveryScreen = DongleDiscoveryScreen.this;
            dongleDiscoveryScreen.onDeviceSelected(dongleDiscoveryScreen.deviceInfo);
        }
    };
    private final PropertyChangeListener mCommunicationChangeListener = new AnonymousClass3();

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "DongleDiscoveryScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dongle_discovery;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return 0;
    }

    public static boolean isConfigured() {
        return isConfigured;
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$1, reason: invalid class name */
    class AnonymousClass1 extends DeviceDiscoveryListener {
        AnonymousClass1() {
        }

        @Override // com.texa.carelib.communication.DeviceDiscoveryListener
        public void onDeviceFound(final DeviceFoundEvent deviceFoundEvent) {
            Log.i("TEST_SCAN", "onDeviceFound");
            DongleDiscoveryScreen.this.mDongleList.post(new Runnable() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m284x88f901a2(deviceFoundEvent);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onDeviceFound$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$1, reason: not valid java name */
        public /* synthetic */ void m284x88f901a2(DeviceFoundEvent deviceFoundEvent) {
            DongleDiscoveryScreen.this.onDeviceFound(deviceFoundEvent.getDeviceInfo());
        }

        @Override // com.texa.carelib.communication.DeviceDiscoveryListener
        public void onDeviceNameChanged(final DeviceNameChangedEvent deviceNameChangedEvent) {
            super.onDeviceNameChanged(deviceNameChangedEvent);
            DongleDiscoveryScreen.this.mDongleList.post(new Runnable() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m285xea70cf8a(deviceNameChangedEvent);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onDeviceNameChanged$1$com-texa-careapp-app-onboarding-DongleDiscoveryScreen$1, reason: not valid java name */
        public /* synthetic */ void m285xea70cf8a(DeviceNameChangedEvent deviceNameChangedEvent) {
            DongleDiscoveryScreen.this.onDeviceNameChanged(deviceNameChangedEvent.getDeviceInfo());
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$3, reason: invalid class name */
    class AnonymousClass3 implements PropertyChangeListener {
        AnonymousClass3() {
        }

        @Override // java.beans.PropertyChangeListener
        /* JADX INFO: renamed from: propertyChange, reason: merged with bridge method [inline-methods] */
        public void m286x74422a36(final PropertyChangeEvent propertyChangeEvent) {
            Communication communication = (Communication) propertyChangeEvent.getSource();
            if (Looper.getMainLooper() != Looper.myLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m286x74422a36(propertyChangeEvent);
                    }
                });
                return;
            }
            if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                int i = AnonymousClass4.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()];
                if (i == 1) {
                    DongleDiscoveryScreen.this.onScanCompleted();
                } else if (i == 2 || i == 3) {
                    DongleDiscoveryScreen.this.goBack();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.SCANNING_FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DongleDiscoveryScreen(CareApplication careApplication, OnBoardingActivity onBoardingActivity, boolean z) {
        careApplication.component().inject(this);
        this.mApplication = careApplication;
        this.mOnBoardingActivity = onBoardingActivity;
        this.hasSkipped = z;
    }

    private void requestAdditionalData(String str) {
        final HardwareIdList hardwareIdList = new HardwareIdList(str);
        this.dongleSummarySub = this.mTexaCareApiServiceClient.getDongleSummary(hardwareIdList).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).take(1L).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m279x9842a7c8(hardwareIdList, (DongleListResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m280xc196fd09((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$requestAdditionalData$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m279x9842a7c8(HardwareIdList hardwareIdList, DongleListResponse dongleListResponse) throws Exception {
        parseAdditionalData(hardwareIdList, dongleListResponse.list);
    }

    /* JADX INFO: renamed from: lambda$requestAdditionalData$1$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m280xc196fd09(Throwable th) throws Exception {
        Timber.w(th, "getDongleSummary exception.", new Object[0]);
        this.mRetrofitErrorParser.parse(th);
    }

    private void parseAdditionalData(HardwareIdList hardwareIdList, List<DongleListResponse.DongleVehicleDetails> list) {
        if (Utils.isEmpty(list)) {
            Timber.v("DongleListResponse is empty for: %s", hardwareIdList);
            return;
        }
        DongleListResponse.DongleVehicleDetails dongleVehicleDetails = list.get(0);
        DeviceInfoExt dongleByHwId = getDongleByHwId(this.mDongles, dongleVehicleDetails.hwid);
        if (dongleByHwId == null) {
            Timber.v("DeviceInfoExt not found with hwId= %s", dongleVehicleDetails.hwid);
            return;
        }
        this.deviceInfoExtHashMap.put(dongleByHwId.getDeviceInfo().getName(), dongleByHwId);
        dongleByHwId.setVehicleModelFormatted(Utils.formatVehicleModel(dongleVehicleDetails.selectionData));
        if (Utils.isEmpty(dongleByHwId.getVehicleModelFormatted())) {
            dongleByHwId.setVehicleModelFormatted(dongleVehicleDetails.description);
        }
        dongleByHwId.setPlate(dongleVehicleDetails.plate);
        dongleByHwId.setSelectable(true);
        this.mOnBoardingActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m278xcd13cc2e();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$parseAdditionalData$2$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m278xcd13cc2e() {
        this.mDongleAdapter.notifyDataSetChanged();
    }

    private DeviceInfoExt getDongleByHwId(List<DeviceInfoExt> list, String str) {
        for (DeviceInfoExt deviceInfoExt : list) {
            if (str.equals(deviceInfoExt.getDeviceInfo().getName())) {
                return deviceInfoExt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceSelected(final DeviceInfo deviceInfo) {
        createProgressDialogScreen();
        this.deviceInfo = deviceInfo;
        this.mTexaProfileDelegate.setPassword("");
        Utils.safeDispose(this.timerDisposable);
        this.communicationSub = removeBond(deviceInfo).delay(5L, TimeUnit.SECONDS).flatMap(new Function() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m275xff8ab7d5(deviceInfo, (DeviceInfo) obj);
            }
        }).timeout(60L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m276x28df0d16((Communication) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m277x52336257((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onDeviceSelected$3$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m275xff8ab7d5(DeviceInfo deviceInfo, DeviceInfo deviceInfo2) throws Exception {
        return this.mCommunicationObservable.connect(deviceInfo);
    }

    /* JADX INFO: renamed from: lambda$onDeviceSelected$4$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m276x28df0d16(Communication communication) throws Exception {
        Timber.d(" communication= %s", communication);
        onDeviceConnected();
    }

    /* JADX INFO: renamed from: lambda$onDeviceSelected$5$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m277x52336257(Throwable th) throws Exception {
        dismissProgressDialogScreen();
        Timber.e(th, " exception while connecting.", new Object[0]);
        this.mCommunication.stopReconnect();
        CoordinatorLayout coordinatorLayout = this.mParentRelativeLayout;
        if (coordinatorLayout != null) {
            Snackbar.make(coordinatorLayout, getContext().getString(R.string.bluetooth_connection_not_available), 0).setAction(getContext().getString(R.string.care_update_retry), this.mOnClickRetryConnection).show();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenDongleDiscoveryBinding screenDongleDiscoveryBinding = (ScreenDongleDiscoveryBinding) DataBindingUtil.bind(view);
        this.mDongleList = screenDongleDiscoveryBinding.discoveryDongleList;
        RelativeLayout relativeLayout = screenDongleDiscoveryBinding.screenDongleDiscoveryStart;
        this.mDiscoveryStartButton = relativeLayout;
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.startScanForDevices(view2);
            }
        });
        this.mDiscoveryEmpty = screenDongleDiscoveryBinding.screenDongleDiscoveryEmptyLayout;
        this.mStartDiscoveryTextView = screenDongleDiscoveryBinding.screenDongleDiscoveryBtnStart;
        this.mDiscoveryDescription = screenDongleDiscoveryBinding.screenDongleDiscoveryDescription;
        this.mParentRelativeLayout = screenDongleDiscoveryBinding.parentCoordinator;
        this.mCareImage = screenDongleDiscoveryBinding.screenDongleDiscoveryImageView;
        this.mNoDevicesLabel = screenDongleDiscoveryBinding.screenDongleDiscoveryNoDevicesLabel;
        this.mNoDevicesDescription = screenDongleDiscoveryBinding.screenDongleDiscoveryNoDevicesDescription;
        this.mListTitle = screenDongleDiscoveryBinding.screenDongleDiscoveryListTitle;
        this.mProgressLayout = screenDongleDiscoveryBinding.dongleSearchProgressLayout;
        resetDongleList();
        setupViewsDefault();
        startScanForDevices(this.mDiscoveryStartButton);
    }

    private void resetDongleList() {
        this.mDongleList.setLayoutManager(new LinearLayoutManager(getContext()));
        DongleAdapter dongleAdapter = new DongleAdapter(getContext(), this.mDongles);
        this.mDongleAdapter = dongleAdapter;
        dongleAdapter.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda3
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m281xd7c97f98(adapterView, view, i, j);
            }
        });
        this.mDongleList.setAdapter(this.mDongleAdapter);
        this.mDongleAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: lambda$resetDongleList$6$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m281xd7c97f98(AdapterView adapterView, View view, int i, long j) {
        UniqueList<DeviceInfoExt> uniqueList = this.mDongles;
        if (uniqueList != null && !uniqueList.isEmpty() && this.mDongles.get(i).isSelectable()) {
            isConfigured = true;
            onDeviceSelected(this.mDongles.get(i).getDeviceInfo());
        } else {
            if (this.hasSkipped) {
                goTo(new BaseVehicleDataScreen(this.mApplication, this.mOnBoardingActivity));
            } else {
                onDeviceSelected(this.mDongles.get(i).getDeviceInfo());
            }
            Timber.d("Device is not configured", new Object[0]);
        }
    }

    private Observable<DeviceInfo> removeBond(final DeviceInfo deviceInfo) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                DongleDiscoveryScreen.lambda$removeBond$7(deviceInfo, observableEmitter);
            }
        });
    }

    static /* synthetic */ void lambda$removeBond$7(DeviceInfo deviceInfo, ObservableEmitter observableEmitter) throws Exception {
        boolean z;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
            Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
            if (bondedDevices == null || bondedDevices.size() <= 0) {
                z = false;
            } else {
                Iterator<BluetoothDevice> it = bondedDevices.iterator();
                z = false;
                while (it.hasNext()) {
                    if (it.next().getAddress().equals(deviceInfo.getAddress())) {
                        z = true;
                    }
                }
            }
            if (z) {
                try {
                    observableEmitter.onNext(deviceInfo);
                    return;
                } catch (IllegalAccessException e) {
                    observableEmitter.onError(e);
                    Timber.d(e, "3.got exception", new Object[0]);
                    return;
                } catch (NoSuchMethodException e2) {
                    observableEmitter.onError(e2);
                    Timber.d(e2, "1.got exception", new Object[0]);
                    return;
                } catch (InvocationTargetException e3) {
                    observableEmitter.onError(e3);
                    Timber.d(e3, "2.got exception", new Object[0]);
                    return;
                }
            }
            observableEmitter.onNext(deviceInfo);
            return;
        }
        observableEmitter.onError(new Throwable("defaultAdapter is null"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScanForDevices(View view) {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_BLUETOOTH_SCANNING.getTag(), null);
        try {
            this.mCommunication.stopScan();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        if (Utils.isPermissionEnabled(getContext(), CorePermission.USE_ACCESS_LOCATION)) {
            this.mDongles = new UniqueList<>();
            resetDongleList();
            this.scanSub = this.mCommunicationObservable.prepareForScan().subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m282xaf7febe3((Communication) obj);
                }
            });
            Utils.show(this.mProgressLayout);
            Utils.show(this.mDongleList);
            Utils.hide(this.mDiscoveryStartButton);
            Utils.show(this.mDiscoveryEmpty);
            Utils.show(this.mCareImage);
            Utils.show(this.mNoDevicesLabel);
            Utils.hide(this.mNoDevicesDescription);
            Utils.hide(this.mListTitle);
            this.mNoDevicesLabel.setText(getContext().getText(R.string.dongle_search_progress));
            this.mDiscoveryDescription.setText(getContext().getText(R.string.screen_dongle_discovery_description));
            return;
        }
        this.mOnBoardingActivity.requestLocationPermission();
    }

    /* JADX INFO: renamed from: lambda$startScanForDevices$8$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m282xaf7febe3(Communication communication) throws Exception {
        startScanDevicesInner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScanCompleted() {
        Utils.show(this.mDiscoveryStartButton);
        this.mStartDiscoveryTextView.setText(R.string.try_again_discovery_bt);
        if (Utils.isEmpty(this.mDongles)) {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_NO_DEVICE.getTag(), null);
            this.mDiscoveryDescription.setText(getContext().getText(R.string.dongle_discovery_description_finished_empty));
            Utils.hide(this.mDongleList);
            Utils.show(this.mDiscoveryEmpty);
            Utils.show(this.mCareImage);
            Utils.show(this.mNoDevicesLabel);
            Utils.show(this.mNoDevicesDescription);
            Utils.hide(this.mListTitle);
            Utils.hide(this.mProgressLayout);
            this.mNoDevicesLabel.setText(getContext().getText(R.string.screen_dongle_discovery_no_devices_label));
            return;
        }
        this.mDiscoveryDescription.setText(getContext().getText(R.string.screen_dongle_discovery_description));
        Utils.show(this.mDongleList);
        Utils.hide(this.mDiscoveryEmpty);
        Utils.hide(this.mNoDevicesLabel);
        Utils.hide(this.mNoDevicesDescription);
        Utils.hide(this.mCareImage);
        Utils.hide(this.mProgressLayout);
        Utils.show(this.mListTitle);
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        this.mCommunication.addDeviceDiscoveryListener(this.mDeviceDiscoveryListener);
        synchronizeDiscoveredDevices();
        this.isOperationFinished = false;
        if (!this.mAtLeastOnScanHasStarted || isScanning()) {
            return;
        }
        onScanCompleted();
    }

    private void synchronizeDiscoveredDevices() {
        Iterator<DeviceInfo> it = this.mCommunication.getDevices().iterator();
        while (it.hasNext()) {
            onDeviceFound(it.next());
        }
    }

    private boolean isScanning() {
        return CommunicationStatus.SCANNING == this.mCommunication.getStatus();
    }

    private void startScanDevicesInner() {
        try {
            this.mCommunication.startScan();
            this.mAtLeastOnScanHasStarted = true;
            startTimer();
        } catch (CareLibException unused) {
            onScanCompleted();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        resetDongleList();
        try {
            this.mCommunication.stopScan();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        this.mCommunication.removeDeviceDiscoveryListener(this.mDeviceDiscoveryListener);
        this.mCommunication.removePropertyChangeListener(this.mCommunicationChangeListener);
    }

    private void startTimer() {
        this.timerDisposable = Completable.timer(30L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.computation()).subscribe(new Action() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m283xb62b0d4e();
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.DongleDiscoveryScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Throwable) obj).printStackTrace();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startTimer$9$com-texa-careapp-app-onboarding-DongleDiscoveryScreen, reason: not valid java name */
    public /* synthetic */ void m283xb62b0d4e() throws Exception {
        if (this.isOperationFinished) {
            return;
        }
        onScanCompleted();
    }

    private void onDeviceConnected() {
        this.mDongles.clear();
        Utils.safeDispose(this.timerDisposable);
        this.isOperationFinished = true;
        DeviceInfoExt deviceInfoExt = this.deviceInfoExtHashMap.get(this.deviceInfo.getName());
        if (validateDeviceInfo(deviceInfoExt) && Utils.isEmpty(this.mOnBoardingActivity.getModel()) && Utils.isEmpty(this.mOnBoardingActivity.getPlate())) {
            String vehicleModelFormatted = deviceInfoExt.getVehicleModelFormatted();
            this.mOnBoardingActivity.setDescription(vehicleModelFormatted);
            if (vehicleModelFormatted.contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) {
                String[] strArrSplit = vehicleModelFormatted.split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                this.mOnBoardingActivity.setBrand(strArrSplit[0]);
                this.mOnBoardingActivity.setModel(Utils.formatVehicleModel(strArrSplit[1]));
            } else {
                List<SelectionModel> selections = SelectionModel.getSelections(vehicleModelFormatted);
                this.mOnBoardingActivity.setBrand(selections.get(0).getBrand());
                this.mOnBoardingActivity.setModel(selections.get(0).getModel());
                this.mOnBoardingActivity.setDescription(selections.get(0).getBrand() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + selections.get(0).getModel());
            }
            this.mOnBoardingActivity.setPlate(deviceInfoExt.getPlate());
        }
        Utils.safeDispose(this.dongleSummarySub);
        Utils.safeDispose(this.communicationSub);
        Utils.safeDispose(this.scanSub);
        dismissProgressDialogScreen();
        goTo(new CareAuthenticationScreen(this.mOnBoardingActivity, this.deviceInfo));
    }

    private boolean validateDeviceInfo(DeviceInfoExt deviceInfoExt) {
        return (deviceInfoExt == null || deviceInfoExt.getVehicleModelFormatted() == null || deviceInfoExt.getPlate() == null || deviceInfoExt.getVehicleModelFormatted().equals("") || deviceInfoExt.getPlate().equals("")) ? false : true;
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.timerDisposable);
        this.isOperationFinished = true;
    }

    private void setupViewsDefault() {
        Utils.show(this.mDiscoveryStartButton);
        Utils.hide(this.mDiscoveryEmpty);
        Utils.hide(this.mProgressLayout);
        this.mDiscoveryDescription.setText(getContext().getText(R.string.screen_dongle_discovery_description));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceFound(DeviceInfo deviceInfo) {
        this.mDiscoveryDescription.setText(getContext().getText(R.string.screen_dongle_discovery_description));
        Utils.hide(this.mCareImage);
        Utils.show(this.mListTitle);
        Utils.show(this.mDongleList);
        Utils.hide(this.mDiscoveryEmpty);
        Utils.hide(this.mNoDevicesLabel);
        Utils.hide(this.mNoDevicesDescription);
        DeviceInfoExt deviceInfoExt = new DeviceInfoExt();
        deviceInfoExt.setDeviceInfo(deviceInfo);
        if (Utils.isEmpty(deviceInfoExt.getDeviceInfo().getName()) || this.mDongles.contains(deviceInfoExt)) {
            return;
        }
        this.mDongles.add(deviceInfoExt);
        requestAdditionalData(deviceInfoExt.getDeviceInfo().getName());
        this.mDongleAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceNameChanged(DeviceInfo deviceInfo) {
        DeviceInfoExt deviceInfoExt = new DeviceInfoExt();
        deviceInfoExt.setDeviceInfo(deviceInfo);
        this.mDongles.remove(deviceInfoExt);
        onDeviceFound(deviceInfo);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        return super.onBackPressed();
    }

    private void createProgressDialogScreen() {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new ProgressDialogFragment();
        }
        if (this.isProgressDialogShown) {
            return;
        }
        this.mProgressDialogFragment.show(getNavigator().getFragmentManager(), NotificationCompat.CATEGORY_PROGRESS);
        this.isProgressDialogShown = true;
    }

    private void dismissProgressDialogScreen() {
        ProgressDialogFragment progressDialogFragment = this.mProgressDialogFragment;
        if (progressDialogFragment != null) {
            if (progressDialogFragment.isResumed()) {
                this.mProgressDialogFragment.dismissAllowingStateLoss();
            }
            this.isProgressDialogShown = false;
        }
    }
}
