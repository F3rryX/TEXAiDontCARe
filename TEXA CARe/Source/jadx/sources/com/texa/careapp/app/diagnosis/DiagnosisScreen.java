package com.texa.careapp.app.diagnosis;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import com.eftimoff.androipathview.PathView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.ScreenDiagnosisBinding;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.BatteryLevel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.ScheduleHelper;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.databind.DataBindDiagnosis;
import com.texa.careapp.views.RelativeTimeTextView;
import com.texa.carelib.care.vehicleinfo.internal.MockVehicleInfo;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisScreen extends Screen {
    private static int ANIMATION_GREEN_CAR_DELAY = 0;
    private static int ANIMATION_GREEN_CAR_DURATION = 0;
    private static int ANIMATION_ICON_DELAY = 0;
    private static int ANIMATION_ICON_DURATION = 0;
    private static final String TAG = "DiagnosisScreen";
    private ScreenDiagnosisBinding binding;
    private LinearLayout carNameLay;
    private Disposable connectionDisposable;
    private ValueAnimator mAdvancedAnimator;
    private ImageView mAdvancedCircle;
    private ImageView mAdvancedIcon;
    private ImageView mAdvancedStroke;
    private ImageView mBatteryCircle;
    private ImageView mBatteryIcon;
    private ValueAnimator mBatteryIconAnimator;
    private TextView mBatteryLevelValue;
    private ImageView mBatteryStroke;
    private TextView mBatteryValueLabel;
    private PathView.AnimatorBuilder.ListenerStart mCarAnimationListener = new PathView.AnimatorBuilder.ListenerStart() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda10
        @Override // com.eftimoff.androipathview.PathView.AnimatorBuilder.ListenerStart
        public final void onAnimationStart() {
            this.f$0.startAppearAnimation();
        }
    };
    private AppCompatTextView mCarTitleTextView;

    @Inject
    protected CommunicationObservable mCommunicationObservable;
    private RelativeTimeTextView mDiagnosisStatusTextView;
    private TextView mDiagnosisStatusTextViewPlaceholder;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private ImageView mEngineCircle;
    private ImageView mEngineIcon;
    private ValueAnimator mEngineIconAnimator;
    private ImageView mEngineStroke;
    private TextView mEngineTemperatureLabel;
    private TextView mEngineTemperatureValue;

    @Inject
    protected LampsManager mLampsManager;
    private LinearLayout mLayout;
    private Navigator mNavigator;
    private ValueAnimator mParameterAnimator;
    private ImageView mParametersCircle;
    private ImageView mParametersIcon;
    private ImageView mParametersStroke;

    @Inject
    protected PercentColorHelper mPercentColorHelper;
    private ImageView mServiceCircle;
    private ImageView mServiceIcon;
    private ValueAnimator mServiceIconAnimator;
    private TextView mServiceLabel;
    private ImageView mServiceStroke;
    private TextView mServiceValue;
    private ValueAnimator mStandardAnimator;
    private ImageView mStandardCircle;
    private ImageView mStandardIcon;
    private ImageView mStandardStroke;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private PathView pathView;
    private Animation strokeAnimation;

    @Inject
    protected VehicleParametersManagerV2 vehicleParametersManager;

    static /* synthetic */ void lambda$onResume$6(Object obj) throws Exception {
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_diagnosis;
    }

    private void setAnimationDuration(CommunicationObservable.Status status) {
        if (status == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            ANIMATION_ICON_DURATION = 1000;
            ANIMATION_ICON_DELAY = 1000;
            ANIMATION_GREEN_CAR_DURATION = MockVehicleInfo.DELAY_DATA_UPDATED;
            ANIMATION_GREEN_CAR_DELAY = 0;
            return;
        }
        ANIMATION_ICON_DURATION = 1000;
        ANIMATION_ICON_DELAY = 1000;
        ANIMATION_GREEN_CAR_DURATION = MockVehicleInfo.DELAY_DATA_UPDATED;
        ANIMATION_GREEN_CAR_DELAY = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshViewForCommunicationChange(CommunicationObservable.Status status) {
        Timber.d("CommunicationObservable doOnNext -> value: %s", status);
        setStrokeVisibility(0);
        setDiagnosisViewBeforeComplete(this.mDongleDataManager.getDongleModel(), status);
        setAnimationDuration(status);
        setDiagnosisLoadingView(this.mDongleDataManager.getDongleModel(), status);
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            setStrokeAlpha(255);
            createStrokeAnimation();
            startAppearAnimation();
            startGreenCarPathAnimation();
            return;
        }
        setStrokeAlpha(255);
        setStrokeGrey();
        createStrokeAnimation();
        startAppearAnimation();
        startGreenCarPathAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshViewForLampsChange(List<LampStatus> list) {
        Timber.d("LampStatusListObservable doOnNext", new Object[0]);
        List<LampStatus> lampsListFilteredForDiagnosisType = Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.STANDARD, list);
        List<LampStatus> lampsListFilteredForDiagnosisType2 = Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.ADVANCED, list);
        this.mAdvancedCircle.setVisibility(4);
        this.mAdvancedStroke.setVisibility(4);
        this.mStandardCircle.setVisibility(4);
        this.mStandardStroke.setVisibility(4);
        setStandardView(lampsListFilteredForDiagnosisType, CommunicationObservable.Status.CARE_CONNECTED);
        setAdvancedView(lampsListFilteredForDiagnosisType2, CommunicationObservable.Status.CARE_CONNECTED);
        standardElementAppearData();
        advancedElementAppearData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshViewForEngineTempChange(VehicleParam vehicleParam) {
        Timber.d("VehicleParamEngineTemperature doOnNext", new Object[0]);
        Double valueNumeric = vehicleParam.getValueNumeric();
        if (valueNumeric != null) {
            int colorFromEngineTemperature = getColorFromEngineTemperature(valueNumeric);
            setViewFromEngineTemperature(valueNumeric, colorFromEngineTemperature);
            this.mEngineIcon.setColorFilter(colorFromEngineTemperature);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        Navigator navigator = getNavigator();
        this.mNavigator = navigator;
        ((CareApplication) navigator.getApplication()).component().inject(this);
        ScreenDiagnosisBinding screenDiagnosisBinding = (ScreenDiagnosisBinding) DataBindingUtil.bind(view);
        this.binding = screenDiagnosisBinding;
        this.mLayout = screenDiagnosisBinding.diagnosisContainer;
        this.pathView = this.binding.diagnosisCarPathview;
        this.mCarTitleTextView = this.binding.diagnosisCarName;
        this.mDiagnosisStatusTextView = this.binding.diagnosisDiagnosisStatus;
        this.mDiagnosisStatusTextViewPlaceholder = this.binding.diagnosisDiagnosisStatusPlaceholder;
        this.mBatteryLevelValue = this.binding.diagnosisBatteryStateValue;
        this.mBatteryValueLabel = this.binding.diagnosisBatteryStateLabel;
        this.mBatteryStroke = this.binding.diagnosisBatteryStateElement;
        ImageView imageView = this.binding.diagnosisBatteryStateImage;
        this.mBatteryIcon = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m216x93f98d16(view2);
            }
        });
        this.mBatteryCircle = this.binding.diagnosisBatteryStateCircle;
        this.mEngineTemperatureValue = this.binding.diagnosisEngineTemperatureValue;
        this.mEngineTemperatureLabel = this.binding.diagnosisEngineTemperatureLabel;
        this.mEngineStroke = this.binding.diagnosisEngineTemperatureElement;
        this.mEngineIcon = this.binding.diagnosisEngineTemperatureImage;
        this.mEngineCircle = this.binding.diagnosisEngineTemperatureCircle;
        this.mServiceLabel = this.binding.diagnosisServiceLabel;
        this.mServiceValue = this.binding.diagnosisServiceValue;
        this.mServiceStroke = this.binding.diagnosisMaintenanceScheduledElement;
        ImageView imageView2 = this.binding.diagnosisMaintenanceScheduledImage;
        this.mServiceIcon = imageView2;
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m217xcdc42ef5(view2);
            }
        });
        this.mServiceCircle = this.binding.diagnosisMaintenanceScheduledCircle;
        this.mStandardStroke = this.binding.diagnosisStandardElement;
        ImageView imageView3 = this.binding.diagnosisStandardImage;
        this.mStandardIcon = imageView3;
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m218x78ed0d4(view2);
            }
        });
        this.mStandardCircle = this.binding.diagnosisStandardCircle;
        this.mAdvancedStroke = this.binding.diagnosisAdvancedElement;
        ImageView imageView4 = this.binding.diagnosisAdvancedImage;
        this.mAdvancedIcon = imageView4;
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m219x415972b3(view2);
            }
        });
        this.mAdvancedCircle = this.binding.diagnosisAdvancedCircle;
        this.mParametersStroke = this.binding.diagnosisParametersElement;
        ImageView imageView5 = this.binding.diagnosisParametersImage;
        this.mParametersIcon = imageView5;
        imageView5.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m220x7b241492(view2);
            }
        });
        this.mParametersCircle = this.binding.diagnosisParametersCircle;
        this.carNameLay = this.binding.diagnosisCarLayout;
        this.binding.diagnosisAdvancedText.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m221xb4eeb671(view2);
            }
        });
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_OPENED_DIAGNOSIS_SCREEN.getTag(), null);
        if (getContext().getResources().getDisplayMetrics().widthPixels < 500) {
            this.carNameLay.setVisibility(8);
        }
        this.strokeAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fadein_animation);
        setAnimationDuration(this.mCommunicationObservable.getCurrentStatus());
        createStrokeAnimation();
        setDiagnosisViewBeforeComplete(this.mDongleDataManager.getDongleModel(), CommunicationObservable.Status.CARE_CONNECTED);
        bindDimensionsView(this.mLayout);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m216x93f98d16(View view) {
        batteryIconClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m217xcdc42ef5(View view) {
        serviceIconClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m218x78ed0d4(View view) {
        standardIconClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m219x415972b3(View view) {
        advancedIconClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$4$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m220x7b241492(View view) {
        parametersIconClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$5$com-texa-careapp-app-diagnosis-DiagnosisScreen, reason: not valid java name */
    public /* synthetic */ void m221xb4eeb671(View view) {
        advancedDiagnosisDialog();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.connectionDisposable = Observable.merge(this.mCommunicationObservable.observeConnectionStatus().compose(Utils.applySchedulers()).doOnNext(new Consumer() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.refreshViewForCommunicationChange((CommunicationObservable.Status) obj);
            }
        }), this.mLampsManager.observeActiveLamps().compose(Utils.applySchedulers()).distinctUntilChanged().doOnNext(new Consumer() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.refreshViewForLampsChange((List) obj);
            }
        }), this.vehicleParametersManager.observeEngineTemp().compose(Utils.applySchedulers()).doOnNext(new Consumer() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.refreshViewForEngineTempChange((VehicleParam) obj);
            }
        })).subscribe(new Consumer() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                DiagnosisScreen.lambda$onResume$6(obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w("diagnosis on Error", new Object[0]);
            }
        });
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.strokeAnimation.setAnimationListener(null);
        Utils.safeDispose(this.connectionDisposable);
    }

    private void setStrokeAlpha(int i) {
        this.mEngineStroke.setImageAlpha(i);
        this.mBatteryStroke.setImageAlpha(i);
        this.mAdvancedStroke.setImageAlpha(i);
        this.mParametersStroke.setImageAlpha(i);
        this.mServiceStroke.setImageAlpha(i);
        this.mStandardStroke.setImageAlpha(i);
    }

    private void setStrokeGrey() {
        this.mEngineStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mBatteryStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mAdvancedStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mParametersStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mServiceStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mStandardStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void bindDimensionsView(final View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                DiagnosisScreen.this.binding.setDiagnosis(new DataBindDiagnosis(measuredHeight, measuredWidth, DiagnosisScreen.this.getContext()));
                DiagnosisScreen.this.startGreenCarPathAnimation();
            }
        });
    }

    private void setDiagnosisViewBeforeComplete(DongleModel dongleModel, CommunicationObservable.Status status) {
        VehicleModel selectedVehicle = dongleModel.getSelectedVehicle();
        if (selectedVehicle != null) {
            setBatteryLevelView(selectedVehicle);
            setEngineTemperatureView(selectedVehicle, status);
            setServiceView(selectedVehicle, status);
            setStandardView(Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.STANDARD, selectedVehicle.getActiveLamps()), status);
            setAdvancedView(Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.ADVANCED, selectedVehicle.getActiveLamps()), status);
            setParametersView(status);
            this.mCarTitleTextView.setText(Utils.formatVehicleModel(selectedVehicle));
        }
    }

    private void setStandardView(List<LampStatus> list, CommunicationObservable.Status status) {
        boolean zIsEmpty = list.isEmpty();
        int i = R.color.diagnosis_gray;
        if (zIsEmpty) {
            this.mStandardAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.ok), this.mStandardIcon);
            ImageView imageView = this.mStandardStroke;
            Context context = getContext();
            if (status == CommunicationObservable.Status.CARE_CONNECTED) {
                i = R.color.ok;
            }
            imageView.setColorFilter(Utils.getColorResource(context, i));
            this.mStandardCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
            return;
        }
        this.mStandardAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.error), this.mStandardIcon);
        ImageView imageView2 = this.mStandardStroke;
        Context context2 = getContext();
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            i = R.color.error;
        }
        imageView2.setColorFilter(Utils.getColorResource(context2, i));
        this.mStandardCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.error));
    }

    private void setAdvancedView(List<LampStatus> list, CommunicationObservable.Status status) {
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        int i = R.color.diagnosis_gray;
        if (selectedVehicle != null && this.mVehicleObserver.getSelectedVehicle().isHaveAdvancedDiagnosis()) {
            if (list.isEmpty()) {
                this.mAdvancedAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.ok), this.mAdvancedIcon);
                ImageView imageView = this.mAdvancedStroke;
                Context context = getContext();
                if (status == CommunicationObservable.Status.CARE_CONNECTED) {
                    i = R.color.ok;
                }
                imageView.setColorFilter(Utils.getColorResource(context, i));
                this.mAdvancedCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
                return;
            }
            this.mAdvancedAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.error), this.mAdvancedIcon);
            ImageView imageView2 = this.mAdvancedStroke;
            Context context2 = getContext();
            if (status == CommunicationObservable.Status.CARE_CONNECTED) {
                i = R.color.error;
            }
            imageView2.setColorFilter(Utils.getColorResource(context2, i));
            this.mAdvancedCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.error));
            return;
        }
        this.mAdvancedAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.diagnosis_gray), this.mAdvancedIcon);
        this.mAdvancedStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mAdvancedCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
    }

    private void setParametersView(CommunicationObservable.Status status) {
        Context context = getContext();
        int i = R.color.diagnosis_gray;
        this.mParameterAnimator = setAnimator(Utils.getColorResource(context, R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.ok), this.mParametersIcon);
        ImageView imageView = this.mParametersStroke;
        Context context2 = getContext();
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            i = R.color.ok;
        }
        imageView.setColorFilter(Utils.getColorResource(context2, i));
        this.mParametersCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
    }

    private void setEngineTemperatureView(VehicleModel vehicleModel, CommunicationObservable.Status status) {
        VehicleParam parameter = vehicleModel.getParameter(DataID.Parameter.ENGINE_TEMP.getId());
        if (parameter != null && status == CommunicationObservable.Status.CARE_CONNECTED) {
            Double valueNumeric = parameter.getValueNumeric();
            if (valueNumeric == null) {
                Timber.w("displayEngineTempIndicator: engine temperature is null", new Object[0]);
                this.mEngineStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
                this.mEngineCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
                this.mEngineTemperatureLabel.setTextColor(Utils.getColorResource(getContext(), R.color.ok));
                return;
            }
            int colorFromEngineTemperature = getColorFromEngineTemperature(valueNumeric);
            setViewFromEngineTemperature(valueNumeric, colorFromEngineTemperature);
            this.mEngineIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.ok), colorFromEngineTemperature, this.mEngineIcon);
            return;
        }
        this.mEngineStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mEngineCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
        this.mEngineTemperatureLabel.setTextColor(Utils.getColorResource(getContext(), R.color.ok));
        int colorFromEngineTemperature2 = getColorFromEngineTemperature(Double.valueOf(-100.0d));
        setViewFromEngineTemperature(Double.valueOf(-100.0d), colorFromEngineTemperature2);
        this.mEngineIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.ok), colorFromEngineTemperature2, this.mEngineIcon);
    }

    private void setViewFromEngineTemperature(Double d, int i) {
        this.mEngineTemperatureValue.setTextColor(i);
        this.mEngineStroke.setColorFilter(i);
        this.mEngineCircle.setColorFilter(i);
        this.mEngineTemperatureLabel.setTextColor(Utils.getColorResource(getContext(), R.color.primary_text_light));
        if (d.doubleValue() != -100.0d) {
            this.mEngineTemperatureValue.setText(String.format("%s %s", d, getContext().getString(R.string.unit_celsius)));
        } else {
            this.mEngineTemperatureValue.setText(String.format("%s %s", "-", getContext().getString(R.string.unit_celsius)));
        }
    }

    private int getColorFromEngineTemperature(Double d) {
        if (d.doubleValue() > 111.0d && this.mCommunicationObservable.getCurrentStatus() == CommunicationObservable.Status.CARE_CONNECTED) {
            return this.mPercentColorHelper.getErrorColor();
        }
        if (d.doubleValue() >= 97.0d && this.mCommunicationObservable.getCurrentStatus() == CommunicationObservable.Status.CARE_CONNECTED) {
            return this.mPercentColorHelper.getWarningColor();
        }
        return this.mPercentColorHelper.getOkColor();
    }

    private void setServiceView(VehicleModel vehicleModel, CommunicationObservable.Status status) {
        ScheduleHelper.ServiceScheduleInfo serviceScheduleInfo = Utils.getServiceScheduleInfo(vehicleModel);
        int i = R.color.diagnosis_gray;
        if (serviceScheduleInfo != null && status == CommunicationObservable.Status.CARE_CONNECTED) {
            try {
                if (serviceScheduleInfo.percent <= 0) {
                    this.mServiceIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.error), this.mServiceIcon);
                    this.mServiceValue.setText(getContext().getString(R.string.expired));
                    this.mServiceValue.setTextColor(Utils.getColorResource(getContext(), R.color.error));
                    this.mServiceStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.error));
                    this.mServiceCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.error));
                    return;
                }
                this.mServiceIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.ok), this.mServiceIcon);
                String string = serviceScheduleInfo.unit.getStringRes() != 0 ? getContext().getString(serviceScheduleInfo.unit.getStringRes()) : "";
                this.mServiceValue.setTextColor(Utils.getColorResource(getContext(), R.color.ok));
                this.mServiceValue.setText(String.format("%s %s", serviceScheduleInfo.value, string));
                this.mServiceStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
                this.mServiceCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
                return;
            } catch (Exception e) {
                this.mServiceValue.setTextColor(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
                this.mServiceStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
                this.mServiceCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
                Timber.d(e, "service exception", new Object[0]);
                return;
            }
        }
        this.mServiceIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), R.color.ok), this.mServiceIcon);
        this.mServiceValue.setTextColor(Utils.getColorResource(getContext(), R.color.ok));
        ImageView imageView = this.mServiceStroke;
        Context context = getContext();
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            i = R.color.ok;
        }
        imageView.setColorFilter(Utils.getColorResource(context, i));
        this.mServiceCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.ok));
    }

    private void setBatteryLevelView(VehicleModel vehicleModel) {
        BatteryLevel batteryLevel = Utils.getBatteryLevel(vehicleModel);
        if (batteryLevel != null) {
            this.mBatteryIconAnimator = setAnimator(Utils.getColorResource(getContext(), R.color.diagnosis_gray), Utils.getColorResource(getContext(), batteryLevel.getColorRes()), this.mBatteryIcon);
            this.mBatteryLevelValue.setText(batteryLevel.getStringRes());
            this.mBatteryLevelValue.setTextColor(Utils.getColorResource(getContext(), batteryLevel.getColorRes()));
            this.mBatteryStroke.setColorFilter(Utils.getColorResource(getContext(), batteryLevel.getColorRes()));
            this.mBatteryCircle.setColorFilter(Utils.getColorResource(getContext(), batteryLevel.getColorRes()));
            return;
        }
        this.mBatteryValueLabel.setTextColor(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mBatteryLevelValue.setText("");
        this.mBatteryStroke.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
        this.mBatteryCircle.setColorFilter(Utils.getColorResource(getContext(), R.color.diagnosis_gray));
    }

    private void setDiagnosisCompletedView(DongleModel dongleModel) {
        appearData();
    }

    private void setDiagnosisLoadingView(DongleModel dongleModel, CommunicationObservable.Status status) {
        if (this.mDiagnosisStatusTextViewPlaceholder == null || this.mDiagnosisStatusTextView == null) {
            return;
        }
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            this.mDiagnosisStatusTextView.setVisibility(8);
            this.mDiagnosisStatusTextViewPlaceholder.setVisibility(0);
            return;
        }
        Long lastParametersUpdate = dongleModel.getLastParametersUpdate();
        if (lastParametersUpdate != null) {
            this.mDiagnosisStatusTextView.setReferenceTime(lastParametersUpdate.longValue());
            this.mDiagnosisStatusTextView.setPrefix(getContext().getResources().getString(R.string.last_check) + ": ");
            this.mDiagnosisStatusTextView.setVisibility(0);
            this.mDiagnosisStatusTextViewPlaceholder.setVisibility(8);
            return;
        }
        this.mDiagnosisStatusTextView.setVisibility(4);
        this.mDiagnosisStatusTextViewPlaceholder.setVisibility(8);
    }

    private void appearData() {
        engineElementAppearData();
        batteryElementAppearData();
        serviceElementAppearData();
        standardElementAppearData();
        advancedElementAppearData();
        parametersElementAppearData();
    }

    private void parametersElementAppearData() {
        ImageView imageView;
        if (this.mParametersIcon == null || (imageView = this.mParametersStroke) == null) {
            return;
        }
        imageView.startAnimation(this.strokeAnimation);
        this.mParametersCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mParameterAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private void advancedElementAppearData() {
        ImageView imageView;
        if (this.mAdvancedIcon == null || (imageView = this.mAdvancedStroke) == null || this.mAdvancedCircle == null) {
            return;
        }
        imageView.startAnimation(this.strokeAnimation);
        this.mAdvancedCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mAdvancedAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private void standardElementAppearData() {
        ImageView imageView;
        if (this.mStandardIcon == null || (imageView = this.mStandardStroke) == null || this.mStandardCircle == null) {
            return;
        }
        imageView.startAnimation(this.strokeAnimation);
        this.mStandardCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mStandardAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private void serviceElementAppearData() {
        TextView textView = this.mServiceValue;
        if (textView == null || this.mServiceIcon == null || this.mServiceStroke == null) {
            return;
        }
        textView.setVisibility(0);
        this.mServiceStroke.startAnimation(this.strokeAnimation);
        this.mServiceCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mServiceIconAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private void batteryElementAppearData() {
        TextView textView = this.mBatteryLevelValue;
        if (textView == null || this.mBatteryValueLabel == null || this.mBatteryIcon == null || this.mBatteryStroke == null || this.mBatteryCircle == null) {
            return;
        }
        textView.setVisibility(0);
        this.mBatteryStroke.startAnimation(this.strokeAnimation);
        this.mBatteryCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mBatteryIconAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private void engineElementAppearData() {
        TextView textView;
        if (this.mEngineTemperatureLabel == null || (textView = this.mEngineTemperatureValue) == null || this.mEngineIcon == null || this.mEngineStroke == null || this.mEngineCircle == null) {
            return;
        }
        textView.setVisibility(0);
        this.mEngineStroke.startAnimation(this.strokeAnimation);
        this.mEngineCircle.startAnimation(this.strokeAnimation);
        ValueAnimator valueAnimator = this.mEngineIconAnimator;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    private ValueAnimator setAnimator(int i, int i2, final ImageView imageView) {
        final float[] fArr = new float[3];
        final float[] fArr2 = new float[3];
        Color.colorToHSV(i, fArr);
        Color.colorToHSV(i2, fArr2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(ANIMATION_ICON_DURATION);
        valueAnimatorOfFloat.setStartDelay(ANIMATION_ICON_DELAY);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DiagnosisScreen.lambda$setAnimator$8(fArr2, fArr, imageView, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    static /* synthetic */ void lambda$setAnimator$8(float[] fArr, float[] fArr2, ImageView imageView, ValueAnimator valueAnimator) {
        float[] fArr3 = {fArr[0], fArr2[1] + ((fArr[1] - fArr2[1]) * valueAnimator.getAnimatedFraction()), fArr2[2] + ((fArr[2] - fArr2[2]) * valueAnimator.getAnimatedFraction())};
        if (imageView != null) {
            imageView.setColorFilter(Color.HSVToColor(fArr3));
        }
    }

    private void createStrokeAnimation() {
        this.strokeAnimation.setDuration(ANIMATION_ICON_DURATION);
        this.strokeAnimation.setStartOffset(ANIMATION_ICON_DELAY);
        this.strokeAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisScreen.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                DiagnosisScreen.this.setStrokeVisibility(0);
                DiagnosisScreen.this.setCirclesVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                DiagnosisScreen.this.setStrokeVisibility(0);
                DiagnosisScreen.this.setCirclesVisibility(0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCirclesVisibility(int i) {
        this.mEngineCircle.setVisibility(i);
        this.mBatteryCircle.setVisibility(i);
        this.mAdvancedCircle.setVisibility(i);
        this.mParametersCircle.setVisibility(i);
        this.mServiceCircle.setVisibility(i);
        this.mStandardCircle.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStrokeVisibility(int i) {
        this.mEngineStroke.setVisibility(i);
        this.mBatteryStroke.setVisibility(i);
        this.mAdvancedStroke.setVisibility(i);
        this.mParametersStroke.setVisibility(i);
        this.mServiceStroke.setVisibility(i);
        this.mStandardStroke.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGreenCarPathAnimation() {
        this.pathView.useNaturalColors();
        this.pathView.setFillAfter(true);
        this.pathView.getPathAnimator().delay(ANIMATION_GREEN_CAR_DELAY).duration(ANIMATION_GREEN_CAR_DURATION).listenerStart(this.mCarAnimationListener).interpolator(new AccelerateDecelerateInterpolator()).start();
    }

    private void standardIconClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_DIAGNOSIS_STANDARD_BUTTON.getTag(), null);
        getContext().startActivity(DiagnosisDataActivity.buildIntent(getContext(), 0));
    }

    private void advancedIconClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_DIAGNOSIS_ADVANCED_BUTTON.getTag(), null);
        boolean z = false;
        if (this.mVehicleObserver.getSelectedVehicle() != null && (this.mVehicleObserver.getSelectedVehicle().isHaveAdvancedDiagnosis() || !Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.ADVANCED, this.mVehicleObserver.getSelectedVehicle().getActiveLamps()).isEmpty())) {
            getContext().startActivity(DiagnosisDataActivity.buildIntent(getContext(), 0));
            return;
        }
        Navigator navigator = this.mNavigator;
        if (this.mVehicleObserver.getSelectedVehicle() != null && this.mVehicleObserver.getSelectedVehicle().isHaveAdvancedDiagnosis()) {
            z = true;
        }
        navigator.goTo(new DiagnosisAdvancedDialog(z));
    }

    private void parametersIconClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_DIAGNOSIS_PARAMETERS_BUTTON.getTag(), null);
        launchParamsPage();
    }

    private void serviceIconClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_DIAGNOSIS_MAINTENANCE_BUTTON.getTag(), null);
        Context context = getContext();
        context.startActivity(ScheduleActivity.buildIntent(context));
    }

    private void batteryIconClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_DIAGNOSIS_BATTERY_BUTTON.getTag(), null);
        launchParamsPage();
    }

    private void launchParamsPage() {
        getContext().startActivity(DiagnosisDataActivity.buildIntent(getContext(), 1));
    }

    public static void setLayoutWidth(View view, float f, float f2) {
        if (f != f2) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = (int) f2;
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setLayoutHeight(View view, float f, float f2) {
        if (f != f2) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = (int) f2;
            view.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAppearAnimation() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel != null) {
            setDiagnosisCompletedView(dongleModel);
        }
    }

    private void advancedDiagnosisDialog() {
        this.mNavigator.goTo(new DiagnosisAdvancedDialog(this.mVehicleObserver.getSelectedVehicle() != null && this.mVehicleObserver.getSelectedVehicle().isHaveAdvancedDiagnosis()));
    }
}
