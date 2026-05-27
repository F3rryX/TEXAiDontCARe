package com.texa.careapp.app.settings.troubleshooting;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.ScreenProblemResolutionBinding;
import com.texa.careapp.model.TripModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ProblemResolutionScreen extends Screen {
    private static final int END_CURRENT_TRIP_TIMEOUT = 120;
    private static final int SHOW_ERROR = 1500;
    private static final int START_ENGINE_TIMEOUT = 60;
    private static final String TAG = "ProblemResolutionScreen";
    private static final int TRY_AGAIN_TIMEOUT = 500;
    private static final int state_error = 2131231012;
    private static final int state_ok = 2131230974;

    @Inject
    protected Communication communication;

    @Inject
    protected Accessory mAccessory;
    private ImageView mBluetoothImg;
    private RelativeLayout mButtonStartProcedure;
    private ImageView mCareImg;

    @Inject
    protected ICareObserver mCareObserver;
    private ProgressBar mCareProgress;
    private LinearLayout mCompletedDiagnostic;

    @Inject
    protected Context mContext;

    @Inject
    protected CurrentTrip mCurrentTrip;
    private Handler mHandler;
    private ImageView mTempImageView;
    private ProgressBar mTempProgressBar;
    private ImageView mTripImg;
    private ProgressBar mTripProgress;
    private ImageView mTurnOffImg;
    private ProgressBar mTurnOffProgress;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private Activity problemResolutionActivity;

    @Inject
    protected TexaCareApiServiceUser texaCareApiServiceUser;
    private Disposable tripDataSub;
    private Disposable tripTroubleSub;
    private static int[] mBluetoothStepId = {R.id.text_view_title_bt_diagnostic, R.id.text_view_subtitle_bt_diagnostic};
    private static int[] mCareStepId = {R.id.text_view_title_care_diagnostic, R.id.text_view_subtitle_care_diagnostic};
    private static int[] mTurnOffStepId = {R.id.text_view_title_turn_off_diagnostic, R.id.text_view_subtitle_turn_off_diagnostic};
    private static int[] mTripStepId = {R.id.text_view_title_trip_diagnostic, R.id.text_view_subtitle_trip_diagnostic};
    private PropertyChangeListener mCommunicationChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda4
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m416x3d5a95d5(propertyChangeEvent);
        }
    };
    private Runnable showRunnableError = new Runnable() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen.1
        @Override // java.lang.Runnable
        public void run() {
            ProblemResolutionScreen.this.unRegisterListeners();
            if (ProblemResolutionScreen.this.mTempProgressBar != null) {
                ProblemResolutionScreen.this.mTempProgressBar.setVisibility(8);
            }
            if (ProblemResolutionScreen.this.mTempImageView != null) {
                ProblemResolutionScreen.this.mTempImageView.setImageResource(2131231012);
            }
            ProblemResolutionScreen.this.enableButton(true);
        }
    };
    private final BroadcastReceiver mBluetoothBroadcastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
                if (intExtra == 10 || intExtra == 13) {
                    ProblemResolutionScreen.this.startProcedure();
                }
            }
        }
    };

    static /* synthetic */ boolean lambda$updateTripStatus$13(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_problem_resolution;
    }

    public ProblemResolutionScreen(Activity activity) {
        this.problemResolutionActivity = activity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenProblemResolutionBinding screenProblemResolutionBinding = (ScreenProblemResolutionBinding) DataBindingUtil.bind(view);
        this.mBluetoothImg = screenProblemResolutionBinding.imgBtDiagnostic;
        this.mCareImg = screenProblemResolutionBinding.imgCareDiagnostic;
        this.mCareProgress = screenProblemResolutionBinding.progressCareDiagnostic;
        this.mTurnOffImg = screenProblemResolutionBinding.imgTurnOffEngineDiagnostic;
        this.mTurnOffProgress = screenProblemResolutionBinding.progressTurnOffEngineDiagnostic;
        this.mTripImg = screenProblemResolutionBinding.imgTripDiagnostic;
        this.mTripProgress = screenProblemResolutionBinding.progressTripDiagnostic;
        this.mCompletedDiagnostic = screenProblemResolutionBinding.containerCompletedDiagnostic;
        this.mButtonStartProcedure = screenProblemResolutionBinding.problemResolutionButton;
        screenProblemResolutionBinding.problemResolutionButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onDiagnosticClicked(view2);
            }
        });
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mHandler = new Handler();
        startStep();
        enableButton(true);
        this.mVehicleParametersManagerV2.startHighFreqUpdate();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        try {
            this.mHandler.removeCallbacksAndMessages(this.showRunnableError);
            this.mHandler = null;
        } catch (Exception e) {
            Timber.e(e, "Error", new Object[0]);
        }
        unRegisterListeners();
        this.mVehicleParametersManagerV2.stopHighFreqUpdate();
        Utils.safeDispose(this.tripTroubleSub);
        Utils.safeDispose(this.tripDataSub);
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ void m416x3d5a95d5(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
            int i = AnonymousClass3.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                startProcedure();
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.RECONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void enableButton(boolean z) {
        if (z) {
            this.mButtonStartProcedure.setEnabled(true);
            this.mButtonStartProcedure.setContentDescription("enable");
            this.mButtonStartProcedure.setBackgroundResource(R.drawable.background_accent);
        } else {
            this.mButtonStartProcedure.setEnabled(false);
            this.mButtonStartProcedure.setContentDescription("disable");
            this.mButtonStartProcedure.setBackgroundResource(R.drawable.background_gray);
        }
    }

    public RelativeLayout getButton() {
        return this.mButtonStartProcedure;
    }

    public void startStep() {
        setAlpha(mBluetoothStepId, Constants.ALPHA_TRANSPARENT);
        setAlpha(mCareStepId, Constants.ALPHA_TRANSPARENT);
        setAlpha(mTurnOffStepId, Constants.ALPHA_TRANSPARENT);
        setAlpha(mTripStepId, Constants.ALPHA_TRANSPARENT);
        this.mBluetoothImg.setImageResource(0);
        this.mCareImg.setImageResource(0);
        this.mTurnOffImg.setImageResource(0);
        this.mTripImg.setImageResource(0);
        this.mCareProgress.setVisibility(8);
        this.mTurnOffProgress.setVisibility(8);
        this.mTripProgress.setVisibility(8);
        this.mCompletedDiagnostic.setVisibility(8);
    }

    public void setAlpha(int[] iArr, int i) {
        for (int i2 : iArr) {
            try {
                TextView textView = (TextView) this.problemResolutionActivity.findViewById(i2);
                textView.setTextColor(textView.getTextColors().withAlpha(i));
                textView.setHintTextColor(textView.getHintTextColors().withAlpha(i));
            } catch (Exception e) {
                Timber.w(e, " set Alpha exception ", new Object[0]);
            }
        }
    }

    public void registerListeners() {
        this.communication.addPropertyChangeListener(this.mCommunicationChangeListener);
        this.mContext.registerReceiver(this.mBluetoothBroadcastReceiver, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
    }

    public void unRegisterListeners() {
        try {
            this.communication.removePropertyChangeListener(this.mCommunicationChangeListener);
            this.mContext.unregisterReceiver(this.mBluetoothBroadcastReceiver);
        } catch (Exception unused) {
        }
    }

    public boolean isBtReady() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public boolean initBluetooth(boolean z) {
        this.mTempImageView = this.mBluetoothImg;
        setAlpha(mBluetoothStepId, Constants.ALPHA_VISIBLE);
        setAlpha(mCareStepId, Constants.ALPHA_TRANSPARENT);
        this.mCareProgress.setVisibility(8);
        this.mCareImg.setImageResource(0);
        setAlpha(mTurnOffStepId, Constants.ALPHA_TRANSPARENT);
        this.mTurnOffProgress.setVisibility(8);
        this.mTurnOffImg.setImageResource(0);
        setAlpha(mTripStepId, Constants.ALPHA_TRANSPARENT);
        this.mTripProgress.setVisibility(8);
        this.mTripImg.setImageResource(0);
        this.mBluetoothImg.setVisibility(0);
        Timber.d("%s initBluetooth: %s", TAG, Boolean.valueOf(z));
        if (z) {
            this.mBluetoothImg.setImageResource(2131230974);
            this.mBluetoothImg.setContentDescription("bt_ok");
        } else {
            showError();
            this.mBluetoothImg.setContentDescription("bt_error");
        }
        return z;
    }

    public void showError() {
        Handler handler = this.mHandler;
        if (handler != null) {
            try {
                handler.removeCallbacksAndMessages(this.showRunnableError);
            } catch (Exception e) {
                Timber.e(e, "Exception", new Object[0]);
            }
            this.mHandler.postDelayed(this.showRunnableError, 1500L);
        }
    }

    public boolean isCareReady() {
        return Utils.isCareConnected(this.communication) && this.mAccessory.isHostAuthenticated() && this.mAccessory.getStatus() == 4;
    }

    public boolean initCare(boolean z) {
        ImageView imageView = this.mCareImg;
        this.mTempImageView = imageView;
        if (z) {
            imageView.setImageResource(2131230974);
            this.mCareProgress.setVisibility(8);
            this.mCareImg.setContentDescription("care_ok");
        } else {
            this.mCareProgress.setVisibility(0);
            this.mTempProgressBar = this.mCareProgress;
            showError();
            this.mCareImg.setContentDescription("care_error");
        }
        Timber.d("%s initCare: %s", TAG, Boolean.valueOf(z));
        setAlpha(mCareStepId, Constants.ALPHA_VISIBLE);
        setAlpha(mTurnOffStepId, Constants.ALPHA_TRANSPARENT);
        this.mTurnOffProgress.setVisibility(8);
        this.mTurnOffImg.setImageResource(0);
        setAlpha(mTripStepId, Constants.ALPHA_TRANSPARENT);
        this.mTripProgress.setVisibility(8);
        this.mTripImg.setImageResource(0);
        return z;
    }

    public void startProcedure() {
        if (initBluetooth(isBtReady()) && initCare(isCareReady())) {
            checkEndTrip();
        }
    }

    public void checkEndTrip() {
        Timber.d("%s checkEndTrip()", TAG);
        this.mTurnOffImg.setContentDescription("turn_off_error");
        this.mTempImageView = this.mTurnOffImg;
        ProgressBar progressBar = this.mTurnOffProgress;
        this.mTempProgressBar = progressBar;
        progressBar.setVisibility(0);
        setAlpha(mTurnOffStepId, Constants.ALPHA_VISIBLE);
        setAlpha(mTripStepId, Constants.ALPHA_TRANSPARENT);
        this.tripTroubleSub = observeTripStopInfoTroubleshooting().timeout(120L, TimeUnit.SECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m414x30a1bf08((CurrentTrip) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m415x13cd7249((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkEndTrip$1$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ void m414x30a1bf08(CurrentTrip currentTrip) throws Exception {
        this.mTurnOffImg.setImageResource(2131230974);
        uploadCurrentTrip(currentTrip);
    }

    /* JADX INFO: renamed from: lambda$checkEndTrip$2$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ void m415x13cd7249(Throwable th) throws Exception {
        Timber.e(th, "%s on Error checkEndTrip()", TAG);
        showError();
    }

    protected Observable<Boolean> observeSpeedUnderThreshold(final float f) {
        return this.mVehicleParametersManagerV2.observeVehicleSpeed().filter(new Predicate() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ProblemResolutionScreen.lambda$observeSpeedUnderThreshold$3(f, (VehicleParam) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just(true);
            }
        });
    }

    static /* synthetic */ boolean lambda$observeSpeedUnderThreshold$3(float f, VehicleParam vehicleParam) throws Exception {
        return vehicleParam.getValueNumeric().doubleValue() <= ((double) f);
    }

    protected Observable<Boolean> observeRpmUnderThreshold(final float f) {
        return this.mVehicleParametersManagerV2.observeEngineRpm().filter(new Predicate() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ProblemResolutionScreen.lambda$observeRpmUnderThreshold$5(f, (VehicleParam) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just(true);
            }
        });
    }

    static /* synthetic */ boolean lambda$observeRpmUnderThreshold$5(float f, VehicleParam vehicleParam) throws Exception {
        return vehicleParam.getValueNumeric().doubleValue() <= ((double) f);
    }

    static /* synthetic */ Boolean lambda$observeRpmAndSpeedUnderThreshold$7(Boolean bool, Boolean bool2) throws Exception {
        return true;
    }

    protected Observable<Boolean> observeRpmAndSpeedUnderThreshold(float f, float f2) {
        return Observable.zip(observeRpmUnderThreshold(f), observeSpeedUnderThreshold(f2), new BiFunction() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ProblemResolutionScreen.lambda$observeRpmAndSpeedUnderThreshold$7((Boolean) obj, (Boolean) obj2);
            }
        });
    }

    private Observable<CurrentTrip> observeTripStopInfoTroubleshooting() {
        return Observable.merge(observeRpmAndSpeedUnderThreshold(200.0f, 5.0f).flatMap(new Function() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m418x1195ab60((Boolean) obj);
            }
        }), Observable.defer(new Callable() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m417x4d959603();
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$observeTripStopInfoTroubleshooting$8$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m418x1195ab60(Boolean bool) throws Exception {
        return Observable.just(this.mCurrentTrip);
    }

    /* JADX INFO: renamed from: lambda$observeTripStopInfoTroubleshooting$10$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m417x4d959603() throws Exception {
        return this.mCareObserver.observeTripStopInfo().flatMap(new Function() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m419xf4c15ea1((CurrentTrip) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeTripStopInfoTroubleshooting$9$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m419xf4c15ea1(CurrentTrip currentTrip) throws Exception {
        return Observable.just(this.mCurrentTrip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiagnosticClicked(View view) {
        enableButton(false);
        this.mCompletedDiagnostic.setOnTouchListener(null);
        this.mCompletedDiagnostic.setVisibility(8);
        registerListeners();
        startStep();
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startProcedure();
            }
        }, 500L);
    }

    public void uploadCurrentTrip(CurrentTrip currentTrip) {
        Timber.d("%s uploadCurrentTrip(CurrentTrip)", TAG);
        this.mTurnOffImg.setContentDescription("turn_off_ok");
        this.mTempImageView = this.mTripImg;
        this.mTempProgressBar = this.mTripProgress;
        this.mTurnOffProgress.setVisibility(8);
        this.mTripProgress.setVisibility(0);
        setAlpha(mTripStepId, Constants.ALPHA_VISIBLE);
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        if (currentVehicle == null) {
            Timber.e("VehicleModel NULL  <-- mVehicleObserver.getCurrentVehicle()", new Object[0]);
            return;
        }
        TripModel tripModelFrom = null;
        try {
            tripModelFrom = TripModel.from(currentTrip, currentVehicle.getUid());
        } catch (IllegalStateException e) {
            Timber.w(e, "TripModel.from() exception", new Object[0]);
        }
        this.tripDataSub = this.texaCareApiServiceUser.updateTripData(tripModelFrom).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m420x14f1bf6a((ServerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m421xf81d72ab((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$uploadCurrentTrip$11$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ void m420x14f1bf6a(ServerResponse serverResponse) throws Exception {
        if (serverResponse != null) {
            updateTripStatus(false);
        } else {
            updateTripStatus(true);
        }
    }

    /* JADX INFO: renamed from: lambda$uploadCurrentTrip$12$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen, reason: not valid java name */
    public /* synthetic */ void m421xf81d72ab(Throwable th) throws Exception {
        Timber.e(th, "%s on Error uploadCurrentTrip()", TAG);
        updateTripStatus(false);
    }

    public void updateTripStatus(boolean z) {
        Timber.d("%s updateTripStatus(boolean)", TAG);
        if (!z) {
            showError();
        } else {
            this.mTripProgress.setVisibility(8);
            this.mTripImg.setImageResource(2131230974);
            this.mCompletedDiagnostic.setVisibility(0);
            this.mCompletedDiagnostic.setAlpha(0.9f);
            this.mCompletedDiagnostic.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen$$ExternalSyntheticLambda7
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return ProblemResolutionScreen.lambda$updateTripStatus$13(view, motionEvent);
                }
            });
            enableButton(true);
        }
        unRegisterListeners();
    }
}
