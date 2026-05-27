package com.texa.careapp.app.sos;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.location.Location;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import com.google.gson.Gson;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.sos.countdown.CountdownFinishedEvent;
import com.texa.careapp.app.sos.countdown.CountdownTimerImpl;
import com.texa.careapp.app.sos.countdown.CountdownUpdateEvent;
import com.texa.careapp.databinding.ActivityAutomaticSosBinding;
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
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.Subscribe;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class AutomaticSosPresenter {
    public static final String DELETE_EMERGENCY_DISPOSABLE_KEY = "DELETE_EMERGENCY_DISPOSABLE_KEY";
    static boolean PLAY_ALARM = true;
    public static final String STOP_SOS_PRESENTER_DISPOSABLE_KEY = "STOP_SOS_PRESENTER_DISPOSABLE_KEY";
    private static Gson sGson = Utils.buildGsonInstance();
    private MediaPlayer alarmSound;
    private AudioManager audioManager;
    private RelativeLayout background;
    private int currentRingerMode;
    private Disposable emergencySub;
    private LinearLayout header;
    private ImageView icon;
    private ImageView iconComplete;
    private boolean isCountdownFinished;
    private Disposable locationSub;
    private Activity mActivity;

    @Inject
    protected CAReWorkerManager mCaReWorkerManager;
    private AppCompatTextView mCancelButton;
    private int mCircleColor;

    @Inject
    protected Context mContext;
    private AppCompatTextView mCountdownMessage;
    private CountdownTimerImpl mCountdownTimer;
    private CircleDisplay mCountdownView;
    private Location mCurrentLocation;

    @Inject
    protected FlavorDelegator mFlavorDelegator;
    private Date mImpactDate;
    private int mImpactType;

    @Inject
    protected LoggerManager mLoggerManager;
    private String mMainMessage;

    @Inject
    protected Profile mProfile;
    private AppCompatTextView mRequestNow;
    private String mRequestTicket;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected UserDataManager mUserDataManager;
    private Vibrator mVibrator;

    @Inject
    ReactiveLocationProvider reactiveLocationProvider;
    private final int sosServiceTypeCaught;
    private HashMap<String, Disposable> mDisposableHashMap = new HashMap<>();
    private int volume = 0;

    AutomaticSosPresenter(ActivityAutomaticSosBinding activityAutomaticSosBinding, CountdownTimerImpl countdownTimerImpl, Activity activity, int i, Date date, int i2) {
        this.mCountdownView = activityAutomaticSosBinding.activityAutomaticSosCountDownView;
        AppCompatTextView appCompatTextView = activityAutomaticSosBinding.activityAutomaticSosCancelRequest;
        this.mCancelButton = appCompatTextView;
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m471lambda$new$0$comtexacareappappsosAutomaticSosPresenter(view);
            }
        });
        AppCompatTextView appCompatTextView2 = activityAutomaticSosBinding.activityAutomaticSosRequestNow;
        this.mRequestNow = appCompatTextView2;
        appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m472lambda$new$1$comtexacareappappsosAutomaticSosPresenter(view);
            }
        });
        this.mCountdownMessage = activityAutomaticSosBinding.activityAutomaticSosMessage;
        this.header = activityAutomaticSosBinding.activityAutomaticSosHeader;
        this.background = activityAutomaticSosBinding.activityAutomaticSosBackground;
        this.iconComplete = activityAutomaticSosBinding.activityAutomaticSosIconComplete;
        this.icon = activityAutomaticSosBinding.activityAutomaticSosIcon;
        this.mCountdownTimer = countdownTimerImpl;
        this.mActivity = activity;
        this.mImpactDate = date;
        this.mVibrator = (Vibrator) activity.getSystemService("vibrator");
        setMaxVolume();
        this.alarmSound = MediaPlayer.create(this.mActivity, R.raw.alert_sos);
        this.mCircleColor = Color.parseColor("#80FFFFFF");
        this.mImpactType = i;
        this.isCountdownFinished = false;
        if (i2 == -1 || (i2 != ServiceDataModel.DongleServiceId.SOS.ordinal() && i2 != ServiceDataModel.DongleServiceId.SOS_LIGHT.ordinal())) {
            throw new IllegalArgumentException("SosServiceTypeCaught is invalid");
        }
        this.sosServiceTypeCaught = i2;
        this.mMainMessage = this.mActivity.getString(i2 == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_description : R.string.sos_alert_light_description, new Object[]{15});
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m471lambda$new$0$comtexacareappappsosAutomaticSosPresenter(View view) {
        clickOnCancelButton();
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m472lambda$new$1$comtexacareappappsosAutomaticSosPresenter(View view) {
        clickOnCallNow();
    }

    AutomaticSosPresenter(int i) {
        this.sosServiceTypeCaught = i;
    }

    public void clickOnCancelButton() {
        if (!this.mCancelButton.getText().toString().equalsIgnoreCase(this.mActivity.getString(R.string.btn_close))) {
            if (this.mRequestTicket != null) {
                Utils.safeDispose(this.mDisposableHashMap, DELETE_EMERGENCY_DISPOSABLE_KEY);
                this.mDisposableHashMap.put(DELETE_EMERGENCY_DISPOSABLE_KEY, this.mTexaCareApiServiceUser.deleteEmergency(this.mRequestTicket).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda9
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f$0.m465x91554656((ServerResponse) obj);
                    }
                }, new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda11
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f$0.m466xcb1fe835((Throwable) obj);
                    }
                }));
            }
            this.mCountdownTimer.cancel();
            this.mLoggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.SOS_COUNTDOWN_STOPPED);
        }
        finalStep();
    }

    /* JADX INFO: renamed from: lambda$clickOnCancelButton$2$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m465x91554656(ServerResponse serverResponse) throws Exception {
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, "SOS request cancelled - ticket ID: " + this.mRequestTicket);
    }

    /* JADX INFO: renamed from: lambda$clickOnCancelButton$3$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m466xcb1fe835(Throwable th) throws Exception {
        Timber.w(th, "deleteEmergency error", new Object[0]);
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.FAILED, "SOS request cancel failed - ticket ID: " + this.mRequestTicket);
    }

    private void finalStep() {
        this.mActivity.finish();
        resetVolume();
    }

    private void updateLocation() {
        Timber.d("starting location tracking", new Object[0]);
        this.locationSub = this.reactiveLocationProvider.getUpdatedLocation(Utils.buildLocationRequestForEmergency()).timeout(15L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m474x130aebaf((Location) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "exception while getting location update", new Object[0]);
            }
        }, new Action() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("location update completed", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateLocation$4$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m474x130aebaf(Location location) throws Exception {
        this.mCurrentLocation = location;
        Timber.d("received new location: %s", location);
    }

    protected void showContactsScreen() {
        this.mActivity.startActivity(MainActivity.buildIntentForContactScreen(this.mActivity));
    }

    public void clickOnCallNow() {
        this.mCancelButton.setVisibility(8);
        this.mCountdownTimer.cancel();
        notifyContactInProgress();
        invokeServerApi();
    }

    public void start() {
        this.mCountdownView.setColor(-1);
        this.mCountdownView.setWholeCircleColor(this.mCircleColor);
        this.mCountdownTimer.reset();
        this.mCountdownTimer.start();
        this.mCountdownMessage.setText(this.mMainMessage);
        updateLocation();
    }

    public void stop() {
        this.mCountdownTimer.cancel();
    }

    public void onBackPressed() {
        this.mCountdownTimer.cancel();
    }

    @Subscribe
    public void onEvent(CountdownUpdateEvent countdownUpdateEvent) {
        this.mCountdownView.showValue(countdownUpdateEvent.getCount() - 1, 15.0f, false);
        this.mVibrator.vibrate(750L);
        if (PLAY_ALARM) {
            try {
                this.alarmSound.start();
            } catch (Exception unused) {
                this.alarmSound.release();
            }
        }
    }

    @Subscribe
    public EmergencyInfo onEvent(CountdownFinishedEvent countdownFinishedEvent) {
        if (this.isCountdownFinished) {
            Timber.w("CountdownFinishedEvent already arrived!", new Object[0]);
            return null;
        }
        this.mCountdownView.showValue(0.0f, 15.0f, false);
        this.mCancelButton.setVisibility(4);
        notifyContactInProgress();
        EmergencyInfo emergencyInfoInvokeServerApi = invokeServerApi();
        Timber.d("CountdownFinishedEvent arrived!", new Object[0]);
        this.isCountdownFinished = true;
        return emergencyInfoInvokeServerApi;
    }

    void notifyContactInProgress() {
        this.mRequestNow.setVisibility(4);
        this.mCountdownMessage.setText(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_sending : R.string.sos_alert_light_sending);
        setTextStyle();
        this.icon.setVisibility(4);
        startAnimate();
    }

    void startAnimate() {
        this.header.animate().alpha(0.0f).translationY(-this.header.getHeight()).setListener(new AnimatorListenerAdapter() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AutomaticSosPresenter.this.header.setAlpha(1.0f);
                AutomaticSosPresenter.this.header.setVisibility(8);
                AutomaticSosPresenter.this.icon.animate().alpha(1.0f).setDuration(200L).setListener(new AnimatorListenerAdapter() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        super.onAnimationEnd(animator2);
                        AutomaticSosPresenter.this.icon.setVisibility(0);
                        AutomaticSosPresenter.this.icon.startAnimation(AnimationUtils.loadAnimation(AutomaticSosPresenter.this.mActivity, R.anim.shaking_animation));
                    }
                });
            }
        });
    }

    EmergencyInfo invokeServerApi() {
        Observable<AddEmergencyResponse> observableAddEmergencyMessages;
        ServerLogModel.ResultForLog resultForLog = ServerLogModel.ResultForLog.SUCCESSFULL;
        if (this.mCurrentLocation == null) {
            resultForLog = ServerLogModel.ResultForLog.FAILED;
        }
        this.mLoggerManager.log(ServerLogModel.LogEvent.SOS_LOCATION_ACQUISITION, resultForLog, "");
        final EmergencyInfo emergencyInfoBuildEmergencyData = Utils.buildEmergencyData(this.mUserDataManager.getUserCached(), this.mCurrentLocation, 2 == this.mImpactType ? 3 : 2);
        emergencyInfoBuildEmergencyData.setEventTimestamp(this.mImpactDate);
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
        this.emergencySub = observableAddEmergencyMessages.delay(3L, TimeUnit.SECONDS).observeOn(Schedulers.io()).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m468x5aeabae5((AddEmergencyResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m469x94b55cc4(emergencyInfoBuildEmergencyData, (Throwable) obj);
            }
        }, new Action() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m467x2bafee39();
            }
        });
        return emergencyInfoBuildEmergencyData;
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$7$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m468x5aeabae5(AddEmergencyResponse addEmergencyResponse) throws Exception {
        String str = addEmergencyResponse.requestTicket;
        this.mRequestTicket = str;
        Timber.d("requestTicket=%s", str);
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$8$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m469x94b55cc4(EmergencyInfo emergencyInfo, Throwable th) throws Exception {
        Timber.w(th, "addEmergency exception", new Object[0]);
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyAddEmergencyError();
            }
        });
        if (this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal()) {
            scheduleBackgroundSync(emergencyInfo);
        } else if (this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS_LIGHT.ordinal()) {
            scheduleMessageSending(emergencyInfo);
        }
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.SOS_CALL_TICKET_FAILED);
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$10$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m467x2bafee39() throws Exception {
        notifyAddEmergencySuccess();
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, "SOS request sent - ticket ID: " + this.mRequestTicket);
        Utils.safeDispose(this.mDisposableHashMap, STOP_SOS_PRESENTER_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(STOP_SOS_PRESENTER_DISPOSABLE_KEY, Observable.just(1).delay(5L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m470xce7ffea3((Integer) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$invokeServerApi$9$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m470xce7ffea3(Integer num) throws Exception {
        finalStep();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAddEmergencyError() {
        this.mCountdownMessage.setText(R.string.automatic_sos_request_error);
        this.mCancelButton.setText(R.string.btn_close);
        setTextStyle();
    }

    private void notifyAddEmergencySuccess() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.sos.AutomaticSosPresenter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m473x36a92f43();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyAddEmergencySuccess$11$com-texa-careapp-app-sos-AutomaticSosPresenter, reason: not valid java name */
    public /* synthetic */ void m473x36a92f43() {
        this.background.setBackgroundColor(Utils.getColorResource(this.mActivity, R.color.sos_alert_background_green));
        this.icon.clearAnimation();
        this.mCancelButton.setVisibility(4);
        this.iconComplete.setVisibility(0);
        this.mCountdownMessage.setText(this.sosServiceTypeCaught == ServiceDataModel.DongleServiceId.SOS.ordinal() ? R.string.sos_alert_plus_complete : R.string.sos_alert_light_complete);
        setTextStyle();
    }

    void setTextStyle() {
        this.mCountdownMessage.setTypeface(ResourcesCompat.getFont(this.mContext, R.font.font_bold));
        this.mCountdownMessage.setTextSize(this.mActivity.getResources().getDimensionPixelSize(R.dimen.sos_message_bigger_text));
    }

    private void setMaxVolume() {
        try {
            AudioManager audioManager = (AudioManager) this.mActivity.getSystemService("audio");
            this.audioManager = audioManager;
            this.currentRingerMode = audioManager.getRingerMode();
            int streamMaxVolume = this.audioManager.getStreamMaxVolume(3);
            this.volume = this.audioManager.getStreamVolume(3);
            this.audioManager.setRingerMode(2);
            this.audioManager.setStreamVolume(3, streamMaxVolume, 0);
        } catch (Exception e) {
            Timber.e(e, "SetMaxVolume() exception", new Object[0]);
        }
    }

    void resetVolume() {
        try {
            AudioManager audioManager = (AudioManager) this.mActivity.getSystemService("audio");
            this.audioManager = audioManager;
            audioManager.setStreamVolume(3, this.volume, 0);
            this.audioManager.setRingerMode(this.currentRingerMode);
            this.alarmSound.release();
        } catch (Exception e) {
            Timber.e(e, "ResetVolume() exception", new Object[0]);
        }
    }

    public void release() {
        MediaPlayer mediaPlayer = this.alarmSound;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    void destroySub() {
        Utils.safeDispose(this.emergencySub);
        Utils.safeDispose(this.locationSub);
    }

    private void scheduleBackgroundSync(EmergencyInfo emergencyInfo) {
        cacheData(this.mSharedPreferences, emergencyInfo);
        this.mCaReWorkerManager.scheduleEmergencyInfoJob();
    }

    private void scheduleMessageSending(EmergencyInfo emergencyInfo) {
        cacheData(this.mSharedPreferences, emergencyInfo);
        this.mCaReWorkerManager.scheduleEmergencyMessageJob();
    }

    private void cacheData(SharedPreferences sharedPreferences, EmergencyInfo emergencyInfo) {
        sharedPreferences.edit().putString(Constants.CACHED_EMERGENCY_INFO_KEY, sGson.toJson(emergencyInfo)).apply();
    }
}
