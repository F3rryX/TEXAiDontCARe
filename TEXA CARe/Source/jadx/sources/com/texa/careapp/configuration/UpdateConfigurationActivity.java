package com.texa.careapp.configuration;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.query.Delete;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.RxAccessory;
import com.texa.care.eco_driving.RxCommunication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationIntentService;
import com.texa.careapp.databinding.ActivityUpdateConfigurationBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.DtcModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateConfigurationActivity extends BaseActivity {
    private static final String PARAM_START_MAIN_ACTIVITY = "start-main-activity-param";
    public static final String TAG = "UpdateConfigurationActivity";
    private static final int TIME_TO_START_UPDATE_CONFIGURATION = 1000;

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected ICareObserver mCareObserver;

    @Inject
    protected Communication mCommunication;
    private PropertyChangeListener mCommunicationChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda11
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m602x10a32d2d(propertyChangeEvent);
        }
    };
    private TextView mConfirmButton;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;
    private boolean mOnCreate;
    private Disposable mPrerequisiteDisposable;
    private ProgressBar mProgressBar;
    private RxAccessory mRxAccessory;
    private RxCommunication mRxCommunication;
    private boolean mShouldStartMainActivity;
    private TextView mSkipButton;
    private TextView mUpdateMessage;
    private TextView mUpdateMessageSecondary;
    private TextView mUpdateMessageSuccess;

    @Inject
    protected Vehicle mVehicle;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManager;
    private AppCompatTextView message1;
    private AppCompatTextView message2;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildDefaultIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) UpdateConfigurationActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        parseExtras(getIntent());
        ActivityUpdateConfigurationBinding activityUpdateConfigurationBinding = (ActivityUpdateConfigurationBinding) DataBindingUtil.setContentView(this, R.layout.activity_update_configuration);
        this.mProgressBar = activityUpdateConfigurationBinding.careUpdateProgress;
        this.mUpdateMessage = activityUpdateConfigurationBinding.careUpdateMessagePrimary;
        this.mUpdateMessageSecondary = activityUpdateConfigurationBinding.careUpdateMessageSecondary;
        this.mConfirmButton = activityUpdateConfigurationBinding.confirm;
        TextView textView = activityUpdateConfigurationBinding.careUpdateSkip;
        this.mSkipButton = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m603x777d0241(view);
            }
        });
        this.mUpdateMessageSuccess = activityUpdateConfigurationBinding.careUpdateMessageSuccess;
        this.message1 = activityUpdateConfigurationBinding.careUpdateMessage1;
        this.message2 = activityUpdateConfigurationBinding.careUpdateMessage2;
        getCareApplication().component().inject(this);
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, false)) {
            FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_REMOTE_NOTIFICATION.getTag(), null);
        }
        this.mRxAccessory = new RxAccessory(this.mAccessory);
        this.mRxCommunication = new RxCommunication(this.mCommunication);
        if (getResources().getDisplayMetrics().widthPixels < 500) {
            this.message1.setMaxLines(3);
            this.message2.setMaxLines(3);
        }
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
        this.mOnCreate = true;
        Utils.hide(this.mSkipButton);
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m603x777d0241(View view) {
        closeActivity();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mPrerequisiteDisposable);
    }

    private boolean checkCAReBTConnected() {
        if (Utils.isCareConnected(this.mCommunication)) {
            Timber.d("#checkCAReBTConnected() == true", new Object[0]);
            return true;
        }
        showSnackBar(R.string.update_configuration_not_connected_error);
        Timber.d("#checkCAReBTConnected() == false", new Object[0]);
        return false;
    }

    private boolean checkCAReOBDConnected() {
        if (Utils.isOBDConnected(this.mAccessory)) {
            Timber.d("#checkCAReOBDConnected() == true", new Object[0]);
            return true;
        }
        showSnackBar(R.string.update_configuration_not_connected_to_vehicle_error);
        Timber.d("#checkCAReOBDConnected() == false", new Object[0]);
        return false;
    }

    private void showSnackBar(int i) {
        Snackbar snackbarMake = Snackbar.make(findViewById(android.R.id.content), i, 0);
        ((TextView) snackbarMake.getView().findViewById(R.id.snackbar_text)).setMaxLines(3);
        snackbarMake.show();
    }

    private void parseExtras(Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            return;
        }
        this.mShouldStartMainActivity = intent.getExtras().getBoolean(PARAM_START_MAIN_ACTIVITY);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        registerListeners();
        Timber.d("#onResume() mShouldStartMainActivity: %s", Boolean.valueOf(this.mShouldStartMainActivity));
        if (this.mShouldStartMainActivity) {
            Utils.hide(this.mSkipButton);
        }
        configurationStarter();
        checkOnResume();
    }

    private void checkOnResume() {
        if (this.mOnCreate) {
            this.mOnCreate = false;
            return;
        }
        if (!checkCAReBTConnected()) {
            onError(null);
        } else if (!checkCAReOBDConnected()) {
            onError(null);
        } else {
            Timber.i("checkOnResume", new Object[0]);
        }
    }

    private void registerListeners() {
        this.mEventBus.register(this);
        this.mCommunication.addPropertyChangeListener(this.mCommunicationChangeListener);
    }

    private void unRegisterListeners() {
        this.mEventBus.unregister(this);
        this.mCommunication.removePropertyChangeListener(this.mCommunicationChangeListener);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        unRegisterListeners();
    }

    private void configurationStarter() {
        this.mPrerequisiteDisposable = this.mRxCommunication.observeCommunicationStatus().distinctUntilChanged().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m596x7e206e2((Disposable) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m597xde5d241((CommunicationStatus) obj);
            }
        }).distinctUntilChanged().filter(new Predicate() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Integer) obj).equals(4);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m598x19ed68ff((Integer) obj);
            }
        }).take(1L).timeout(60L, TimeUnit.SECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m599x1ff1345e((Boolean) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.onError((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$configurationStarter$1$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m596x7e206e2(Disposable disposable) throws Exception {
        this.mVehicleParametersManager.onCareDisconnected();
    }

    /* JADX INFO: renamed from: lambda$configurationStarter$2$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ ObservableSource m597xde5d241(CommunicationStatus communicationStatus) throws Exception {
        if (communicationStatus.equals(CommunicationStatus.CONNECTED)) {
            this.mProgressBar.setVisibility(0);
            this.mProgressBar.setIndeterminate(true);
            this.mUpdateMessageSecondary.setVisibility(0);
            return this.mRxAccessory.observeStatus();
        }
        return Observable.error(new Throwable("care is not connected"));
    }

    /* JADX INFO: renamed from: lambda$configurationStarter$4$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ ObservableSource m598x19ed68ff(Integer num) throws Exception {
        try {
            return Observable.just(Boolean.valueOf(this.mVehicle.getNumericValue(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId())) == 0.0d && this.mVehicle.getNumericValue(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId())) > 500.0d));
        } catch (Exception unused) {
            return Observable.error(new Throwable("parameters are not correct"));
        }
    }

    /* JADX INFO: renamed from: lambda$configurationStarter$5$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m599x1ff1345e(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            hideConfirmButton();
            Utils.hide(this.mSkipButton);
            startToUpdateWithDelay();
            return;
        }
        onError(new Throwable("engine is off or vehicle is in motion"));
    }

    public void startToUpdateWithDelay() {
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE.getTag(), null);
        Utils.safeDispose(this.mPrerequisiteDisposable);
        this.mEventBus.post(new UpdateConfigurationIntentService.ConfigurationUpdateEvent(getString(R.string.configuration_update_in_progress), 0));
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m604xd3a22d1f();
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: lambda$startToUpdateWithDelay$6$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m604xd3a22d1f() {
        startService(new Intent(getApplicationContext(), (Class<?>) UpdateConfigurationIntentService.class));
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateSuccessEvent configurationUpdateSuccessEvent) {
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE_COMPLETED.getTag(), null);
        this.mProgressBar.setVisibility(8);
        this.mUpdateMessage.setVisibility(8);
        this.mUpdateMessageSecondary.setVisibility(8);
        this.mUpdateMessageSuccess.setVisibility(0);
        displayUpdateCompletedButton();
        this.mVehicleParametersManager.onCareConnected();
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateErrorEvent configurationUpdateErrorEvent) {
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE_COMPLETED.getTag(), null);
        Throwable exception = configurationUpdateErrorEvent.getException();
        Timber.w(exception, "Update configuration error", new Object[0]);
        onError(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(Throwable th) {
        this.mVehicleParametersManager.onCareConnected();
        Utils.safeDispose(this.mPrerequisiteDisposable);
        String string = getString(R.string.care_update_error);
        if (th != null && th.getMessage() != null && th.getMessage().contains(Constants.ERROR_KO_CONTENTS_VEHICLE_VIN_MISMATCH)) {
            string = getString(R.string.care_change_vehicle_error_message);
        }
        this.mProgressBar.setVisibility(8);
        this.mUpdateMessage.setText(string);
        this.mUpdateMessageSecondary.setVisibility(8);
        displayUpdateRetryButton();
        Utils.show(this.mSkipButton);
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateEvent configurationUpdateEvent) {
        if (this.mProgressBar.getVisibility() != 0) {
            this.mProgressBar.setVisibility(0);
        }
        if (this.mUpdateMessageSecondary.getVisibility() != 0) {
            this.mUpdateMessageSecondary.setVisibility(0);
        }
        int progress = configurationUpdateEvent.getProgress();
        String message = configurationUpdateEvent.getMessage();
        Timber.d("Info progress:" + progress + " msg:" + message, new Object[0]);
        if (progress > 0) {
            this.mProgressBar.setIndeterminate(false);
            this.mProgressBar.setProgress(progress);
            hideConfirmButton();
            Utils.hide(this.mSkipButton);
        } else {
            this.mProgressBar.setIndeterminate(true);
        }
        this.mUpdateMessage.setText(message);
    }

    private void hideConfirmButton() {
        this.mConfirmButton.setVisibility(4);
        this.mConfirmButton.setEnabled(false);
    }

    private void deleteOldVehicleParams() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(VehicleParam.class).execute();
        } else {
            new Delete().from(VehicleParam.class).where("vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void deleteOldVehicleDTC() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(DtcModel.class).execute();
        } else {
            new Delete().from(DtcModel.class).where("Vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void deleteOldVehicleLamps() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(LampStatus.class).execute();
        } else {
            new Delete().from(LampStatus.class).where("vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void closeActivity() {
        finish();
        if (this.mShouldStartMainActivity) {
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            intent.addFlags(67108864);
            startActivity(intent);
        }
    }

    private void displayUpdateCompletedButton() {
        deleteOldVehicleParams();
        deleteOldVehicleDTC();
        deleteOldVehicleLamps();
        this.mConfirmButton.setText(R.string.care_update_success);
        this.mConfirmButton.setVisibility(0);
        this.mConfirmButton.setEnabled(true);
        this.mConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m600xa7774fc3(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayUpdateCompletedButton$7$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m600xa7774fc3(View view) {
        closeActivity();
    }

    private void displayUpdateRetryButton() {
        this.mConfirmButton.setText(R.string.care_update_retry);
        this.mConfirmButton.setVisibility(0);
        this.mConfirmButton.setEnabled(true);
        this.mConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m601xdb2ae4a5(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayUpdateRetryButton$8$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m601xdb2ae4a5(View view) {
        configurationStarter();
    }

    /* JADX INFO: renamed from: lambda$new$9$com-texa-careapp-configuration-UpdateConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m602x10a32d2d(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName()) && AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()] == 1) {
            runOnUiThread(new Runnable() { // from class: com.texa.careapp.configuration.UpdateConfigurationActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onDeviceConnected();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.configuration.UpdateConfigurationActivity$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceConnected() {
        this.mConfirmButton.setEnabled(true);
    }
}
