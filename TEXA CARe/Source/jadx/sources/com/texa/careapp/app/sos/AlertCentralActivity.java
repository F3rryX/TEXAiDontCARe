package com.texa.careapp.app.sos;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.google.gson.Gson;
import com.texa.care.R;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.sos.countdown.CountdownFinishedEvent;
import com.texa.careapp.app.sos.countdown.CountdownTimerImpl;
import com.texa.careapp.app.sos.countdown.CountdownUpdateEvent;
import com.texa.careapp.base.GooglePlayServicesActivity;
import com.texa.careapp.databinding.AlertCentralBinding;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.EmergencyInfo;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.AddEmergencyResponse;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.CircleDisplay;
import com.texa.carelib.profile.Profile;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class AlertCentralActivity extends GooglePlayServicesActivity {
    private static final int COUNTDOWN_SECONDS = BuildConfig.TIMEOUT_MANUAL_SOS_REQUEST.intValue();
    public static boolean blockEmergencyCall = false;
    private static Gson sGson = Utils.buildGsonInstance();
    private RelativeLayout background;
    private Disposable emergencySub;
    private LinearLayout header;
    private ImageView icon;
    private ImageView iconComplete;
    private boolean isCountdownFinished;

    @Inject
    protected CAReWorkerManager mCaReWorkerManager;
    private AppCompatTextView mCancelButton;
    private CountdownTimerImpl mCountdownTimer;
    private CircleDisplay mCountdownView;
    private Location mCurrentLocation;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FlavorDelegator mFlavourDelegator;

    @Inject
    protected ReactiveLocationProvider mLocationProvider;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected Profile mProfile;
    private String mRequestTicket;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private TextView mTitle;

    @Inject
    protected UserDataManager mUserDataManager;
    private Vibrator mVibrator;
    private int sosServiceTypeCaught;
    private AppCompatTextView textViewMessage;
    private Disposable updateLocationDisposable;

    public static Intent buildIntent(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) AlertCentralActivity.class);
        intent.setFlags(268435456);
        addImpactSosServiceTypeExtra(i, intent);
        return intent;
    }

    private static void addImpactSosServiceTypeExtra(int i, Intent intent) {
        intent.putExtra(Constants.KEY_SOS_SERVICE_TYPE, i);
    }

    @Override // com.texa.careapp.base.GooglePlayServicesActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AlertCentralBinding alertCentralBinding = (AlertCentralBinding) DataBindingUtil.setContentView(this, R.layout.alert_central);
        this.textViewMessage = alertCentralBinding.alertMessage;
        this.icon = alertCentralBinding.alertCentralIcon;
        this.mCountdownView = alertCentralBinding.alertCentralCountDownView;
        AppCompatTextView appCompatTextView = alertCentralBinding.alertCentralCancelRequest;
        this.mCancelButton = appCompatTextView;
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.cancelAlert(view);
            }
        });
        this.header = alertCentralBinding.alertCentralHeader;
        this.background = alertCentralBinding.alertCentralBackground;
        this.iconComplete = alertCentralBinding.alertCentralIconComplete;
        this.mTitle = alertCentralBinding.alertCentralTitle;
        int intExtra = getIntent().getIntExtra(Constants.KEY_SOS_SERVICE_TYPE, -1);
        this.sosServiceTypeCaught = intExtra;
        if (intExtra == -1 || (intExtra != ServiceDataModel.DongleServiceId.SOS.ordinal() && this.sosServiceTypeCaught != ServiceDataModel.DongleServiceId.SOS_LIGHT.ordinal())) {
            throw new IllegalArgumentException("SosServiceTypeCaught is invalid");
        }
        ((CareApplication) getApplication()).component().inject(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Utils.safeDispose(this.updateLocationDisposable);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isCountdownFinished = false;
        if (!this.mEventBus.isRegistered(this)) {
            this.mEventBus.register(this);
        }
        start();
    }

    @Override // com.texa.careapp.base.GooglePlayServicesActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mCountdownTimer.cancel();
        this.mEventBus.unregister(this);
    }

    public void start() {
        this.mVibrator = (Vibrator) getSystemService("vibrator");
        CircleDisplay circleDisplay = this.mCountdownView;
        int i = COUNTDOWN_SECONDS;
        circleDisplay.showValue(i, i, false);
        this.mCountdownView.setFormatDigits(0);
        this.mCountdownView.setTouchEnabled(false);
        this.mCountdownView.setTextSize(75.0f);
        this.mCountdownView.setUnit("");
        this.mCountdownView.setColor(-65536);
        this.mCountdownView.setWholeCircleColor(-3355444);
        CountdownTimerImpl countdownTimerImpl = new CountdownTimerImpl(i);
        this.mCountdownTimer = countdownTimerImpl;
        countdownTimerImpl.reset();
        this.mCountdownTimer.start();
        this.mLoggerManager.log(ServerLogModel.LogEvent.MANUAL_SOS, ServerLogModel.ResultForLog.SUCCESSFULL, "");
        this.mTitle.setText(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_light_title : R.string.sos_light_title);
        this.textViewMessage.setText(String.format(getString(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_description : R.string.sos_alert_light_description), Integer.valueOf(i)));
        startTracking();
    }

    public void startTracking() {
        Timber.d("starting location tracking", new Object[0]);
        Utils.safeDispose(this.updateLocationDisposable);
        this.updateLocationDisposable = this.mLocationProvider.getUpdatedLocation(Utils.buildLocationRequestForEmergency()).timeout(COUNTDOWN_SECONDS, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m462xab907f32((Location) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m463x210aa573((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startTracking$0$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m462xab907f32(Location location) throws Exception {
        this.mCurrentLocation = location;
        Timber.d("received new location: %s", location);
    }

    /* JADX INFO: renamed from: lambda$startTracking$1$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m463x210aa573(Throwable th) throws Exception {
        Timber.w(th, "exception while getting location update", new Object[0]);
        this.mLoggerManager.log(ServerLogModel.LogEvent.SOS_LOCATION_ACQUISITION, ServerLogModel.ResultForLog.FAILED, th.toString());
    }

    public void cancelAlert(View view) {
        if (!this.mCancelButton.getText().toString().equalsIgnoreCase(getString(R.string.btn_close))) {
            this.mCountdownTimer.cancel();
            Timber.d("SOS COUNTDOWN manually stopped", new Object[0]);
            this.mLoggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.SOS_COUNTDOWN_STOPPED);
            String str = this.mRequestTicket;
            if (str != null) {
                this.mDisposable.add(this.mTexaCareApiServiceUser.deleteEmergency(str).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda5
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f$0.m455x2dccf43d((ServerResponse) obj);
                    }
                }, new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda6
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f$0.m456xa3471a7e((Throwable) obj);
                    }
                }));
            }
        }
        finish();
    }

    /* JADX INFO: renamed from: lambda$cancelAlert$2$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m455x2dccf43d(ServerResponse serverResponse) throws Exception {
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, "SOS request cancelled - ticket ID: " + this.mRequestTicket);
    }

    /* JADX INFO: renamed from: lambda$cancelAlert$3$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m456xa3471a7e(Throwable th) throws Exception {
        Timber.w(th, "deleteEmergency error", new Object[0]);
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.FAILED, "SOS request cancel failed - ticket ID: " + this.mRequestTicket);
    }

    @Subscribe
    public void onEvent(CountdownUpdateEvent countdownUpdateEvent) {
        setValueOnCircleDisplay(countdownUpdateEvent.getCount() - 1, BuildConfig.TIMEOUT_MANUAL_SOS_REQUEST.intValue(), false);
        Timber.v("CountdownUpdateEvent() TIMEOUT %s", Integer.valueOf(countdownUpdateEvent.getCount() - 1));
    }

    @Subscribe
    public EmergencyInfo onEvent(CountdownFinishedEvent countdownFinishedEvent) {
        if (this.isCountdownFinished) {
            Timber.w("CountdownFinishedEvent already arrived!", new Object[0]);
            return null;
        }
        setValueOnCircleDisplay(0, BuildConfig.TIMEOUT_MANUAL_SOS_REQUEST.intValue(), false);
        ServerLogModel.ResultForLog resultForLog = ServerLogModel.ResultForLog.SUCCESSFULL;
        if (this.mCurrentLocation == null) {
            resultForLog = ServerLogModel.ResultForLog.FAILED;
        }
        this.mLoggerManager.log(ServerLogModel.LogEvent.SOS_LOCATION_ACQUISITION, resultForLog, "");
        EmergencyInfo emergencyInfoInvokeServerApi = invokeServerApi();
        Timber.d("CountdownFinishedEvent arrived!", new Object[0]);
        this.isCountdownFinished = true;
        return emergencyInfoInvokeServerApi;
    }

    public void setValueOnCircleDisplay(int i, int i2, boolean z) {
        this.mCountdownView.showValue(i, i2, z);
        if (i == 0) {
            notifyContactInProgress();
        } else {
            this.mVibrator.vibrate(750L);
        }
    }

    protected void notifyContactInProgress() {
        this.textViewMessage.setText(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_sending : R.string.sos_alert_light_sending);
        setTextStyle();
        this.icon.setVisibility(4);
        this.header.animate().alpha(0.0f).translationY(-this.header.getHeight()).setListener(new AnimatorListenerAdapter() { // from class: com.texa.careapp.app.sos.AlertCentralActivity.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AlertCentralActivity.this.header.setAlpha(1.0f);
                AlertCentralActivity.this.header.setVisibility(8);
                AlertCentralActivity.this.icon.animate().alpha(1.0f).setDuration(500L).setListener(new AnimatorListenerAdapter() { // from class: com.texa.careapp.app.sos.AlertCentralActivity.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        super.onAnimationEnd(animator2);
                        AlertCentralActivity.this.icon.setVisibility(0);
                        AlertCentralActivity.this.icon.startAnimation(AnimationUtils.loadAnimation(AlertCentralActivity.this, R.anim.shaking_animation));
                    }
                });
            }
        });
    }

    protected EmergencyInfo invokeServerApi() {
        Observable<AddEmergencyResponse> observableAddEmergencyMessages;
        final EmergencyInfo emergencyInfoBuildEmergencyData = Utils.buildEmergencyData(this.mUserDataManager.getUserCached(), this.mCurrentLocation, 1);
        if (blockEmergencyCall) {
            return emergencyInfoBuildEmergencyData;
        }
        if (this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal()) {
            observableAddEmergencyMessages = this.mTexaCareApiServiceUser.addEmergency(emergencyInfoBuildEmergencyData);
            Timber.d("SOS CALL API", new Object[0]);
        } else {
            List<ContactModel> sosLightContacts = this.mUserDataManager.getUserCached().getSosLightContacts();
            String[] strArr = new String[sosLightContacts.size()];
            for (int i = 0; i < sosLightContacts.size(); i++) {
                strArr[i] = sosLightContacts.get(i).getPhoneNumber();
            }
            emergencyInfoBuildEmergencyData.addContacts(strArr);
            observableAddEmergencyMessages = this.mTexaCareApiServiceUser.addEmergencyMessages(emergencyInfoBuildEmergencyData);
            Timber.d("SOS_LIGHT CALL API", new Object[0]);
        }
        this.emergencySub = observableAddEmergencyMessages.delay(3L, TimeUnit.SECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m457xde45cc7c((AddEmergencyResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m458x53bff2bd(emergencyInfoBuildEmergencyData, (Throwable) obj);
            }
        }, new Action() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m460x3eb43f3f();
            }
        });
        return emergencyInfoBuildEmergencyData;
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$4$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m457xde45cc7c(AddEmergencyResponse addEmergencyResponse) throws Exception {
        String str = addEmergencyResponse.requestTicket;
        this.mRequestTicket = str;
        Timber.d("requestTicket= %s", str);
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$5$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m458x53bff2bd(EmergencyInfo emergencyInfo, Throwable th) throws Exception {
        Timber.w(th, "addEmergency exception", new Object[0]);
        runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyAddEmergencyError();
            }
        });
        scheduleBackgroundSync(emergencyInfo);
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.SOS_CALL_TICKET_FAILED);
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$7$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m460x3eb43f3f() throws Exception {
        notifyAddEmergencySuccess();
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, "SOS request sent - ticket ID: " + this.mRequestTicket);
        this.mDisposable.add(Observable.empty().delay(5L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m459xc93a18fe(obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$6$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m459xc93a18fe(Object obj) throws Exception {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.emergencySub);
        Utils.safeDispose(this.mDisposable);
    }

    private void scheduleBackgroundSync(EmergencyInfo emergencyInfo) {
        cacheData(this.mSharedPreferences, emergencyInfo);
        this.mCaReWorkerManager.scheduleEmergencyInfoJob();
    }

    private void cacheData(SharedPreferences sharedPreferences, EmergencyInfo emergencyInfo) {
        sharedPreferences.edit().putString(Constants.CACHED_EMERGENCY_INFO_KEY, sGson.toJson(emergencyInfo)).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAddEmergencyError() {
        this.textViewMessage.setText(R.string.automatic_sos_request_error);
        this.mCancelButton.setText(R.string.btn_close);
        setTextStyle();
    }

    private void notifyAddEmergencySuccess() {
        runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.sos.AlertCentralActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m461x4040d36b();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyAddEmergencySuccess$8$com-texa-careapp-app-sos-AlertCentralActivity, reason: not valid java name */
    public /* synthetic */ void m461x4040d36b() {
        this.background.setBackgroundColor(Utils.getColorResource(this, R.color.sos_alert_background_green));
        this.icon.clearAnimation();
        this.mCancelButton.setVisibility(4);
        this.iconComplete.setVisibility(0);
        this.textViewMessage.setText(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_complete : R.string.sos_alert_light_complete);
        setTextStyle();
    }

    private void setTextStyle() {
        this.textViewMessage.setTypeface(ResourcesCompat.getFont(this, R.font.font_bold));
        this.textViewMessage.setTextSize(getResources().getDimensionPixelSize(R.dimen.sos_message_bigger_text));
    }
}
