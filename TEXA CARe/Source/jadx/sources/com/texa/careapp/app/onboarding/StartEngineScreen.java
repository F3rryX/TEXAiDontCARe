package com.texa.careapp.app.onboarding;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorDialog;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog;
import com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.configuration.OnBoardingConfigurationActivity;
import com.texa.careapp.databinding.ScreenStartEngineBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleDataModelEntity;
import com.texa.careapp.model.VehicleDataModelResponseEntity;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleModelEntity;
import com.texa.careapp.model.VehicleModelResponseEntity;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.VehiclesUsersEntity;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import io.reactivex.schedulers.Schedulers;
import java.math.BigInteger;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import retrofit2.HttpException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class StartEngineScreen extends Screen {
    private static final int ACTION_NOTIFICATION = 0;
    private static final int ACTION_OPEN_SEGNALATION = 1;
    public static final String TAG = "StartEngineScreen";
    private static final int TIME_TO_WAIT = 62;
    private DongleModel dongle;

    @Inject
    protected Accessory mAccessory;
    private CareApplication mApplication;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private Disposable mEngineDisposable;

    @Inject
    protected EventBus mEventBus;
    private ImageView mImageView;

    @Inject
    protected LoginHelperRx mLoginHelperRx;
    private OnBoardingActivity mOnBoardingActivity;

    @Inject
    protected SharedPreferences mPreferences;
    private ProgressBar mProgressBar;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private Disposable mTimerDisposable;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleInfo mVehicleInfo;
    private VehicleModel mVehicleModel;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private boolean shouldResetVin;
    private boolean shouldCreateNewVehicle = false;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    static /* synthetic */ void lambda$resetConfiguration$7() throws Exception {
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_start_engine;
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        return true;
    }

    StartEngineScreen(OnBoardingActivity onBoardingActivity) {
        this.mOnBoardingActivity = onBoardingActivity;
        CareApplication careApplication = (CareApplication) onBoardingActivity.getApplication();
        this.mApplication = careApplication;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenStartEngineBinding screenStartEngineBinding = (ScreenStartEngineBinding) DataBindingUtil.bind(view);
        RelativeLayout relativeLayout = screenStartEngineBinding.screenStartEngineNext;
        this.mProgressBar = screenStartEngineBinding.screenStartEngineProgress;
        this.mImageView = screenStartEngineBinding.screenStartEngineImage;
        this.shouldResetVin = false;
        this.mOnBoardingActivity.backButton.setVisibility(8);
        this.mOnBoardingActivity.startService(FirmwareUpdateService.buildFilterIntent(getContext(), false));
        observeEngine();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }

    private void observeEngine() {
        Utils.safeDispose(this.mEngineDisposable);
        Utils.safeDispose(this.mTimerDisposable);
        RxOnBoardingObservableObject rxOnBoardingObservableObject = new RxOnBoardingObservableObject(this.mDongleDataManager.getDongleModel(), this.mAccessory, this.mVehicleInfo);
        this.mProgressBar.setMax(60);
        this.mProgressBar.setProgress(0);
        this.mImageView.setColorFilter(ResourcesCompat.getColor(getContext().getResources(), R.color.ecu_color, null));
        this.mTimerDisposable = Observable.interval(1L, TimeUnit.SECONDS).takeUntil(Observable.timer(62L, TimeUnit.SECONDS)).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda22
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m308xfcf7d437((Long) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error in timer observable for engine", new Object[0]);
            }
        });
        this.mEngineDisposable = Observable.zip(rxOnBoardingObservableObject.observeVehicleID(), rxOnBoardingObservableObject.observeSerialNumber(), rxOnBoardingObservableObject.observeInterpreterVersion(), new Function3() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return this.f$0.m309x840e0fb9((String) obj, (String) obj2, (BigInteger) obj3);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m310xc7992d7a((DongleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m311xb244b3b((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeEngine$0$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m308xfcf7d437(Long l) throws Exception {
        this.mProgressBar.setProgress(l.intValue());
        if (l.longValue() >= 60) {
            Utils.safeDispose(this.mEngineDisposable);
            CareApplication careApplication = this.mApplication;
            OnBoardingActivity onBoardingActivity = this.mOnBoardingActivity;
            goTo(new OnBoardingErrorEngineDialog(careApplication, onBoardingActivity, onBoardingActivity.getDescription()));
        }
    }

    /* JADX INFO: renamed from: lambda$observeEngine$2$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ DongleModel m309x840e0fb9(String str, String str2, BigInteger bigInteger) throws Exception {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        dongleModel.setVinCode(str);
        dongleModel.setHwId(str2);
        dongleModel.setInterpreterVersion(bigInteger);
        dongleModel.save();
        return dongleModel;
    }

    /* JADX INFO: renamed from: lambda$observeEngine$3$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m310xc7992d7a(DongleModel dongleModel) throws Exception {
        Timber.i("observeInfosForConfigurationUpdate onNext, dongleModel= %s", dongleModel);
        Utils.safeDispose(this.mTimerDisposable);
        this.mProgressBar.setProgress(60);
        this.dongle = dongleModel;
        checkVehicleData(dongleModel.getHwid(), this.dongle.getVinCode());
    }

    /* JADX INFO: renamed from: lambda$observeEngine$4$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m311xb244b3b(Throwable th) throws Exception {
        Timber.e(th, "observeInfosForConfigurationUpdate onError", new Object[0]);
        Utils.safeDispose(this.mTimerDisposable);
        this.mProgressBar.setProgress(60);
        CareApplication careApplication = this.mApplication;
        OnBoardingActivity onBoardingActivity = this.mOnBoardingActivity;
        goTo(new OnBoardingErrorEngineDialog(careApplication, onBoardingActivity, onBoardingActivity.getDescription()));
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.mEngineDisposable);
    }

    private void checkVehicleData(String str, String str2) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.postVehicleData(new VehicleDataModelEntity(str, this.mOnBoardingActivity.getPlate(), str2)).subscribeOn(Schedulers.newThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m293x48d6a5a6((VehicleDataModelResponseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda23
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m294x8c61c367((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$checkVehicleData$5$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m293x48d6a5a6(VehicleDataModelResponseEntity vehicleDataModelResponseEntity) throws Exception {
        Timber.d(TAG, "plate found: " + vehicleDataModelResponseEntity.isPlateFound() + "\nvin found: " + vehicleDataModelResponseEntity.isVinFound() + "\nvehicle exists: " + vehicleDataModelResponseEntity.isVehicleExists() + "\nvehicle id: " + vehicleDataModelResponseEntity.getVehicleId() + "\nuser associated: " + vehicleDataModelResponseEntity.isUserAssociated() + "\ndongle associated: " + vehicleDataModelResponseEntity.isDongleAssociated() + "\ndongle association type: " + vehicleDataModelResponseEntity.getDongleAssociationType() + "\ndongle configured: " + vehicleDataModelResponseEntity.isDongleConfigured());
        onVinPlateValidation(vehicleDataModelResponseEntity);
    }

    /* JADX INFO: renamed from: lambda$checkVehicleData$6$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m294x8c61c367(Throwable th) throws Exception {
        Timber.e(th, "error checking vehicle data", new Object[0]);
        onErrorAPI(th);
    }

    private void onVinPlateValidation(VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
        if (vehicleDataModelResponseEntity.isVinFound() && vehicleDataModelResponseEntity.isPlateFound()) {
            onProcedureCompleted(vehicleDataModelResponseEntity);
            return;
        }
        if (vehicleDataModelResponseEntity.isVinFound() && !vehicleDataModelResponseEntity.isPlateFound()) {
            validatePlate(vehicleDataModelResponseEntity);
            return;
        }
        if (!vehicleDataModelResponseEntity.isVinFound() && !vehicleDataModelResponseEntity.isPlateFound()) {
            this.shouldCreateNewVehicle = true;
            onProcedureCompleted(vehicleDataModelResponseEntity);
            return;
        }
        if (vehicleDataModelResponseEntity.isVinFound() || !vehicleDataModelResponseEntity.isPlateFound()) {
            return;
        }
        boolean z = this.mPreferences.getBoolean(Constants.ERROR_VEHICLE_ALREADY_CONFIGURED, false);
        if (vehicleDataModelResponseEntity.isUserAssociated() && vehicleDataModelResponseEntity.isVehicleExists()) {
            if (vehicleDataModelResponseEntity.isDongleAssociated() && vehicleDataModelResponseEntity.isDongleConfigured()) {
                this.shouldResetVin = true;
                onProcedureCompleted(vehicleDataModelResponseEntity);
                return;
            } else {
                pairUserVehicle(this.dongle.getHwid(), vehicleDataModelResponseEntity.getVehicleId());
                return;
            }
        }
        if (vehicleDataModelResponseEntity.isUserAssociated()) {
            return;
        }
        if (!vehicleDataModelResponseEntity.isDongleConfigured()) {
            pairUserVehicle(this.dongle.getHwid(), vehicleDataModelResponseEntity.getVehicleId());
            return;
        }
        if (z) {
            SharedPreferences.Editor editorEdit = this.mPreferences.edit();
            editorEdit.putBoolean(Constants.ERROR_VEHICLE_ALREADY_CONFIGURED, false);
            editorEdit.apply();
            goTo(new VehicleAlreadyConfiguredScreenDialog(this.mApplication, this.mOnBoardingActivity, this.dongle.getHwid(), this.dongle.getVinCode(), vehicleDataModelResponseEntity.getVehicleId(), 1));
            return;
        }
        SharedPreferences.Editor editorEdit2 = this.mPreferences.edit();
        editorEdit2.putBoolean(Constants.ERROR_VEHICLE_ALREADY_CONFIGURED, true);
        editorEdit2.apply();
        goTo(new VehicleAlreadyConfiguredScreenDialog(this.mApplication, this.mOnBoardingActivity, this.dongle.getHwid(), this.dongle.getVinCode(), vehicleDataModelResponseEntity.getVehicleId(), 0));
    }

    private void resetConfiguration(String str) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.resetConfiguration(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                StartEngineScreen.lambda$resetConfiguration$7();
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m314x5bdaae42((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$resetConfiguration$8$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m314x5bdaae42(Throwable th) throws Exception {
        Timber.w(th, "exception resetting the configuration", new Object[0]);
        onErrorAPI(th);
    }

    private void validatePlate(VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
        goTo(new PlateValidationScreenDialog(this.mApplication, this.mOnBoardingActivity, vehicleDataModelResponseEntity));
    }

    private void onProcedureCompleted(VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
        String hwid = this.dongle.getHwid();
        if (this.mLoginHelperRx.isUserLogged()) {
            if (!vehicleDataModelResponseEntity.isVehicleExists() || this.shouldCreateNewVehicle) {
                createNewVehicle();
            } else {
                getUserVehicleData(hwid, vehicleDataModelResponseEntity);
            }
        }
    }

    private void createNewVehicle() {
        this.mDisposable.add(this.mTexaCareApiServiceUser.vehicleInsertion(new VehicleModelEntity(this.mOnBoardingActivity.getPlate(), this.mOnBoardingActivity.getDescription())).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m296x5a0e4f69((VehicleModelResponseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m297x9d996d2a((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$createNewVehicle$11$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m296x5a0e4f69(VehicleModelResponseEntity vehicleModelResponseEntity) throws Exception {
        this.mVehicleDataManager.insertVehicle(vehicleModelResponseEntity).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m298x7bb3a464((VehicleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m295x168331a8((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$createNewVehicle$9$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m298x7bb3a464(VehicleModel vehicleModel) throws Exception {
        this.mVehicleModel = vehicleModel;
        pairUserVehicle(this.dongle.getHwid(), this.mVehicleModel.getUid());
    }

    /* JADX INFO: renamed from: lambda$createNewVehicle$10$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m295x168331a8(Throwable th) throws Exception {
        Timber.e("vehicle insertion failed", new Object[0]);
        onErrorAPI(th);
    }

    /* JADX INFO: renamed from: lambda$createNewVehicle$12$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m297x9d996d2a(Throwable th) throws Exception {
        Timber.w(th, "exception obtaining the vehicle", new Object[0]);
        onErrorAPI(th);
    }

    private void getUserVehicleData(final String str, final VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.getUserVehicleList().flatMap(new Function() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m299xa01395de(str, vehicleDataModelResponseEntity, (UserVehicleListResponse) obj);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m300xe39eb39f(str, (UserVehicleListResponse.UserVehicleData) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m301x2729d160((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$getUserVehicleData$13$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m299xa01395de(String str, VehicleDataModelResponseEntity vehicleDataModelResponseEntity, UserVehicleListResponse userVehicleListResponse) throws Exception {
        UserVehicleListResponse.UserVehicleData userVehicleData = null;
        for (UserVehicleListResponse.UserVehicleData userVehicleData2 : userVehicleListResponse.userVehicleDataList) {
            if (userVehicleData2.plate.equals(this.mOnBoardingActivity.getPlate())) {
                userVehicleData = userVehicleData2;
            }
        }
        if (userVehicleData != null) {
            return Observable.just(userVehicleData);
        }
        pairUserVehicle(str, vehicleDataModelResponseEntity.getVehicleId());
        return Observable.empty();
    }

    /* JADX INFO: renamed from: lambda$getUserVehicleData$14$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m300xe39eb39f(String str, UserVehicleListResponse.UserVehicleData userVehicleData) throws Exception {
        pairUserVehicle(str, userVehicleData.vehicleId);
    }

    /* JADX INFO: renamed from: lambda$getUserVehicleData$15$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m301x2729d160(Throwable th) throws Exception {
        Timber.w(th, "exception getting user vehicle data", new Object[0]);
        this.mRetrofitErrorParser.parse(th);
        onErrorAPI(th);
    }

    private void pairUserVehicle(String str, final String str2) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.vehiclesUsersAssociation(new VehiclesUsersEntity(str, str2)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m312xd9816149(str2);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m313x1d0c7f0a((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$pairUserVehicle$16$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m312xd9816149(String str) throws Exception {
        try {
            Utils.safeModelSave(this.dongle, getContext());
            if (this.mVehicleModel == null) {
                this.mVehicleModel = new VehicleModel();
            }
            this.mVehicleModel.setHwid(this.dongle.getHwid());
            this.mVehicleModel.setUid(str);
            getVehiclesDetails(this.mVehicleModel.getUid());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model to database.", new Object[0]);
            Toast.makeText(getContext(), R.string.error_msg_unexpected_error_occurred, 1).show();
        }
    }

    /* JADX INFO: renamed from: lambda$pairUserVehicle$17$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m313x1d0c7f0a(Throwable th) throws Exception {
        Timber.w(th, "exception pairing vehicle", new Object[0]);
        onErrorAPI(th);
    }

    private void getVehiclesDetails(final String str) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.getVehicleDetailsObservable(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m306x2dfe6b2c(str, (VehicleResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m307x718988ed((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$22$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m306x2dfe6b2c(final String str, VehicleResponse vehicleResponse) throws Exception {
        if (this.shouldResetVin) {
            resetConfiguration(this.dongle.getHwid());
        }
        this.mVehicleModel.setBrandName(this.mOnBoardingActivity.getBrand());
        this.mVehicleModel.setModelName(this.mOnBoardingActivity.getModel());
        this.mVehicleModel.setDescription(this.mOnBoardingActivity.getDescription());
        this.mVehicleModel.setPlate(this.mOnBoardingActivity.getPlate());
        this.mVehicleDataManager.updateVehicle(this.mVehicleModel, vehicleResponse).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m302x95688353((VehicleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m303xd8f3a114((Throwable) obj);
            }
        }, new Action() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m305xea734d6b(str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$18$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m302x95688353(VehicleModel vehicleModel) throws Exception {
        this.mVehicleModel = vehicleModel;
        vehicleModel.save();
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$19$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m303xd8f3a114(Throwable th) throws Exception {
        Timber.e("error updating vehicle", new Object[0]);
        onErrorAPI(th);
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$21$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m305xea734d6b(final String str) throws Exception {
        Timber.d("update vehicle completed", new Object[0]);
        this.mOnBoardingActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m304xa6e82faa(str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$20$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m304xa6e82faa(final String str) {
        int color = ResourcesCompat.getColor(getContext().getResources(), R.color.ecu_color, null);
        int color2 = ResourcesCompat.getColor(getContext().getResources(), R.color.accent, null);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.mImageView, "colorFilter", new ArgbEvaluator(), 0, 0);
        objectAnimatorOfObject.setObjectValues(Integer.valueOf(color), Integer.valueOf(color2));
        objectAnimatorOfObject.setDuration(2000L);
        objectAnimatorOfObject.addListener(new Animator.AnimatorListener() { // from class: com.texa.careapp.app.onboarding.StartEngineScreen.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StartEngineScreen.this.mOnBoardingActivity.startActivity(OnBoardingConfigurationActivity.buildFirstRunIntent(StartEngineScreen.this.mOnBoardingActivity, str));
                StartEngineScreen.this.mOnBoardingActivity.finish();
            }
        });
        objectAnimatorOfObject.start();
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$23$com-texa-careapp-app-onboarding-StartEngineScreen, reason: not valid java name */
    public /* synthetic */ void m307x718988ed(Throwable th) throws Exception {
        Timber.e(th, "Error getting vehicle details", new Object[0]);
        onErrorAPI(th);
    }

    @Subscribe
    public void onEvent(PlateValidationScreenDialog.PlateConfirmedEvent plateConfirmedEvent) {
        this.shouldCreateNewVehicle = true;
        onProcedureCompleted(plateConfirmedEvent.mVehicleDataModelResponseEntity);
    }

    @Subscribe
    public void onEvent(OnBoardingErrorDialog.ErrorConfirmedEvent errorConfirmedEvent) {
        getNavigator().clearBackStack();
        goTo(new DongleDiscoveryScreen(this.mApplication, this.mOnBoardingActivity, false));
    }

    @Subscribe
    public void onEvent(OnBoardingErrorEngineDialog.ErrorConfirmedEvent errorConfirmedEvent) {
        getNavigator().clearBackStack();
        goTo(new DongleDiscoveryScreen(this.mApplication, this.mOnBoardingActivity, false));
    }

    private void onErrorAPI(Throwable th) {
        Timber.i("PLUG ERROR -> %s", th.getMessage());
        if (th instanceof HttpException) {
            goTo(new OnBoardingErrorDialog((HttpException) th, this.mApplication));
        }
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
