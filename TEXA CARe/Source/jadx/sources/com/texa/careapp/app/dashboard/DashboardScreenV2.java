package com.texa.careapp.app.dashboard;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.PowerManager;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.dashboard.card.ParametersChooseChartDialog;
import com.texa.careapp.app.dashboard.vehicle.VehiclePagerAdapter;
import com.texa.careapp.app.dashboard.vehicle.VehiclePresenter;
import com.texa.careapp.app.diagnosis.DiagnosisActivity;
import com.texa.careapp.app.diagnosis.DiagnosisDataActivity;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.app.events.BatteryChargeEvent;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.app.sos.ContactsActivity;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.FragmentDashboardV2Binding;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleScheduleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.BatteryLevel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.ScheduleHelper;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.ArrowViewPagerIndicator;
import com.texa.careapp.views.CircleDisplay;
import com.texa.careapp.views.CirclePageIndicator;
import com.texa.careapp.views.ControlledViewPager;
import com.texa.careapp.views.DashboardEmergencyButton;
import com.texa.careapp.views.ViewPagerContainer;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardScreenV2 extends Screen {
    public static boolean mCanMoveCard = true;
    private DashboardScreenAdapter dashboardScreenAdapter;
    private Drawable drawable;
    private ImageView image;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;
    protected CareApplication mCareApplication;

    @Inject
    protected ICareObserver mCareObserver;
    private Disposable mCareStatusDisposable;
    private boolean mCircleAnimated = true;
    private TextView mCircleDisplayLabels1;
    private TextView mCircleDisplayLabels2;
    private TextView mCircleDisplayLabels3;
    private CircleDisplay mCircleDisplays1;
    private CircleDisplay mCircleDisplays2;
    private CircleDisplay mCircleDisplays3;
    private CirclePageIndicator mCirclePageIndicator;

    @Inject
    protected CommunicationObservable mCommunicationObservable;

    @Inject
    protected Context mContext;
    private DashboardEmergencyButton mDashboardEmergencyButton;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FlavorDelegator mFlavorDelegator;

    @Inject
    protected LampsManager mLampsManager;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected PercentColorHelper mPercentColorHelper;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected SosFeatureManager mSosFeatureManager;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected UserDataManager mUserDataManager;
    private ArrowViewPagerIndicator mVehicleArrowViewPager;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private Disposable mVehicleLampsDisposable;
    private List<VehicleModel> mVehicleList;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private VehiclePagerAdapter mVehiclePagerAdapter;
    private Disposable mVehicleParamDisposable;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private ControlledViewPager mVehicleViewPager;
    private ViewPager mViewPager;
    private ViewPagerContainer mViewPagerContainer;
    private AppCompatTextView vehicleName;
    private RelativeLayout vehicleNameLay;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "dashboard";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.fragment_dashboard_v2;
    }

    public DashboardScreenV2(CareApplication careApplication) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        FragmentDashboardV2Binding fragmentDashboardV2Binding = (FragmentDashboardV2Binding) DataBindingUtil.bind(view);
        DashboardEmergencyButton dashboardEmergencyButton = fragmentDashboardV2Binding.btnDashboardSos;
        this.mDashboardEmergencyButton = dashboardEmergencyButton;
        dashboardEmergencyButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda6
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return this.f$0.touchSosButton(view2, motionEvent);
            }
        });
        this.mCircleDisplays1 = fragmentDashboardV2Binding.circleDisplay1;
        this.mCircleDisplays2 = fragmentDashboardV2Binding.circleDisplay2;
        this.mCircleDisplays3 = fragmentDashboardV2Binding.circleDisplay3;
        this.mCircleDisplayLabels1 = fragmentDashboardV2Binding.circleDisplay1Label;
        this.mCircleDisplayLabels2 = fragmentDashboardV2Binding.circleDisplay2Label;
        this.mCircleDisplayLabels3 = fragmentDashboardV2Binding.circleDisplay3Label;
        this.mCirclePageIndicator = fragmentDashboardV2Binding.fragmentDashboardViewPagerIndicator;
        this.mViewPagerContainer = fragmentDashboardV2Binding.fragmentDashboardViewPagerContainer;
        this.mVehicleViewPager = fragmentDashboardV2Binding.fragmentDashboardVehiclePager;
        this.mVehicleArrowViewPager = fragmentDashboardV2Binding.fragmentDashboardVehiclePagerArrow;
        this.vehicleNameLay = fragmentDashboardV2Binding.fragmentDashboardVehicleNameLay;
        this.vehicleName = fragmentDashboardV2Binding.fragmentDashboardVehicleName;
        this.image = fragmentDashboardV2Binding.fragmentDashboardVehicleNameIcon;
        this.drawable = ContextCompat.getDrawable(this.mContext, com.texa.careapp.R.drawable.ic_care_connected);
        this.mVehicleList = this.mVehicleDataManager.getAllVehicles();
        VehiclePagerAdapter vehiclePagerAdapter = new VehiclePagerAdapter(this.mCareApplication.component(), this.mVehicleList);
        this.mVehiclePagerAdapter = vehiclePagerAdapter;
        this.mVehicleViewPager.setAdapter(vehiclePagerAdapter);
        this.mVehiclePagerAdapter.setViewPager(this.mVehicleViewPager);
        this.mVehicleArrowViewPager.bind(this.mVehicleViewPager);
        this.mVehicleViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                DashboardScreenV2.this.mDongleDataManager.setDongleLikeSelectedWithHWID(DashboardScreenV2.this.mVehiclePagerAdapter.getItem(i).getHwid());
                DashboardScreenV2.this.mVehicleDataManager.setVehicleLikeSelected(DashboardScreenV2.this.mVehiclePagerAdapter.getItem(i).getUid());
                DashboardScreenV2.this.mVehicleObserver.forceUpdate();
                DashboardScreenV2.this.mCircleAnimated = true;
                DashboardScreenV2 dashboardScreenV2 = DashboardScreenV2.this;
                dashboardScreenV2.displayVehicleData(dashboardScreenV2.mVehicleObserver.getSelectedVehicle());
                DashboardScreenV2.this.updateBatteryCircleView();
                DashboardScreenV2.this.dashboardScreenAdapter.updateViews();
                if (DashboardScreenV2.this.getLocationCar() == null || !DashboardScreenV2.mCanMoveCard) {
                    return;
                }
                DashboardScreenV2.this.mViewPager.setCurrentItem(3, true);
            }
        });
        this.dashboardScreenAdapter = new DashboardScreenAdapter(this.mCareApplication, getNavigator());
        ViewPager viewPager = this.mViewPagerContainer.getViewPager();
        this.mViewPager = viewPager;
        viewPager.setLayoutParams(new FrameLayout.LayoutParams(getViewPagerWidth(), getViewPagerHeight(), 17));
        this.mViewPager.setAdapter(this.dashboardScreenAdapter);
        this.dashboardScreenAdapter.setViewPager(this.mViewPager);
        this.mCirclePageIndicator.setViewPager(this.mViewPager);
        this.mViewPager.setOffscreenPageLimit(this.dashboardScreenAdapter.getCount());
        this.mViewPager.setPageMargin(15);
        this.mViewPager.setClipChildren(false);
        setupCircleDisplays();
        selectCurrentVehicle(false);
        if (getContext().getResources().getDisplayMetrics().widthPixels < 500) {
            this.mVehicleArrowViewPager.setVisibility(8);
            this.vehicleName.setText(Utils.formatVehicleModel(this.mVehicleObserver.getSelectedVehicle()));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mCirclePageIndicator.getLayoutParams();
            layoutParams.setMargins(0, this.mContext.getResources().getDimensionPixelSize(R.dimen.margin_smaller), 0, this.mContext.getResources().getDimensionPixelSize(R.dimen.margin_smaller));
            this.mCirclePageIndicator.setLayoutParams(layoutParams);
        } else {
            this.vehicleNameLay.setVisibility(8);
        }
        if (getLocationCar() != null && mCanMoveCard) {
            this.mViewPager.setCurrentItem(3, true);
        }
        if (Build.VERSION.SDK_INT < 21) {
            getNavigator().goTo(new UnsupportedAndroidDialog(this.mCareApplication));
        }
        if (((PowerManager) this.mContext.getSystemService("power")).isPowerSaveMode()) {
            getNavigator().goTo(new PowerSaveScreenDialog(this.mCareApplication));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Double> getLocationCar() {
        Timber.i("Get car location", new Object[0]);
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        if (selectedVehicle != null) {
            return selectedVehicle.getLastLocation();
        }
        return null;
    }

    private Disposable observeActiveLamps() {
        return this.mLampsManager.observeActiveLamps().compose(Utils.applySchedulers()).distinctUntilChanged().subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.refreshDiagnosisCard((List) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "LampStatusObserver onError", new Object[0]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshDiagnosisCard(List<LampStatus> list) {
        Timber.i("LAMP LIST SIZE --> %s", Integer.valueOf(list.size()));
        this.dashboardScreenAdapter.updateViews();
    }

    private Disposable observeCareStatus() {
        return Observable.combineLatest(this.mCareObserver.observeCareStatus(), this.mCommunicationObservable.observeConnectionStatus(), new BiFunction() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.m195x1f1877a8((Integer) obj, (CommunicationObservable.Status) obj2);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m196x10c21dc7((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing care status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$1$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ Integer m195x1f1877a8(Integer num, CommunicationObservable.Status status) throws Exception {
        if (status != CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            this.mVehicleViewPager.setCanScroll(false);
            if (mCanMoveCard) {
                this.mViewPager.setCurrentItem(1, true);
            }
        } else {
            this.mVehicleViewPager.setCanScroll(true);
            if (getLocationCar() != null && mCanMoveCard) {
                this.mViewPager.setCurrentItem(3, true);
            }
        }
        return VehiclePresenter.careConditions(num, status);
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$2$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ void m196x10c21dc7(Integer num) throws Exception {
        mCanMoveCard = true;
        this.mVehicleArrowViewPager.handleVisibility();
        selectCurrentVehicle(true);
        this.mVehiclePagerAdapter.setCareCondition(num.intValue());
        this.mVehiclePagerAdapter.updateViews();
        this.drawable.setColorFilter(Utils.getColorResource(this.mContext, VehiclePresenter.getIconColor(num.intValue())), PorterDuff.Mode.SRC_IN);
        this.image.setImageDrawable(this.drawable);
    }

    private void selectCurrentVehicle(boolean z) {
        List<VehicleModel> items = this.mVehiclePagerAdapter.getItems();
        if (items.isEmpty() || items.size() <= 1 || this.mVehicleObserver.getCurrentVehicle() == null) {
            if (z) {
                this.dashboardScreenAdapter.updateViews();
                return;
            }
            return;
        }
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).getHwid() != null && items.get(i).isCurrentVehicle() && items.get(i).getHwid().equals(this.mDongleDataManager.getDongleModel().getHwid())) {
                if (i != this.mVehicleViewPager.getCurrentItem()) {
                    this.mVehicleViewPager.setCurrentItem(i, true);
                    return;
                } else {
                    if (z) {
                        this.dashboardScreenAdapter.updateViews();
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        this.mCareStatusDisposable = observeCareStatus();
        this.mVehicleLampsDisposable = observeActiveLamps();
        this.mCircleAnimated = false;
        updateVehicleList(this.mVehicleDataManager.getAllVehicles());
        displayVehicleData(this.mVehicleObserver.getSelectedVehicle());
        this.dashboardScreenAdapter.updateViews();
        updateBatteryCircleView();
        displaySecondCircleIndicator(this.mVehicleDataManager.getCurrentVehicle());
        this.mDashboardEmergencyButton.bindTo(this.mSosFeatureManager, this.mEventBus);
        scheduleLogSyncTask();
    }

    private void updateVehicleList(List<VehicleModel> list) {
        if (this.mVehicleList.size() != list.size()) {
            Timber.d("Vehicle list is changed! Need to be update", new Object[0]);
            this.mVehicleList.clear();
            this.mVehicleList.addAll(list);
            this.mVehiclePagerAdapter.notifyDataSetChanged();
        }
        this.mVehiclePagerAdapter.updateViews();
        this.drawable.setColorFilter(Utils.getColorResource(this.mContext, VehiclePresenter.getIconColor(this.mVehiclePagerAdapter.getCareCondition())), PorterDuff.Mode.SRC_IN);
        this.image.setImageDrawable(this.drawable);
    }

    private void scheduleLogSyncTask() {
        this.mCAReWorkerManager.scheduleLogSend();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.mCareStatusDisposable);
        Utils.safeDispose(this.mVehicleLampsDisposable);
        Utils.safeDispose(this.mVehicleParamDisposable);
    }

    private void setupCircleDisplays() {
        this.mCircleDisplays1.setAnimDuration(1000);
        this.mCircleDisplays2.setAnimDuration(1000);
        this.mCircleDisplays3.setAnimDuration(1000);
        this.mCircleDisplays1.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m197xe16c8846(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setupCircleDisplays$4$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ void m197xe16c8846(View view) {
        goToDiagosisPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayVehicleData(VehicleModel vehicleModel) {
        Timber.w("mVehicleModelObservable onNext, vehicle= %s", vehicleModel);
        if (vehicleModel == null) {
            return;
        }
        displaySecondCircleIndicator(vehicleModel);
        displayThirdCircleIndicator(vehicleModel);
        displayEmergencyButtonInformation();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(BatteryChargeEvent batteryChargeEvent) {
        updateBatteryCircleView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryCircleView() {
        BatteryLevel batteryLevel;
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        if (selectedVehicle == null) {
            return;
        }
        String strName = null;
        for (VehicleAlarm vehicleAlarm : selectedVehicle.getAlarms()) {
            if (vehicleAlarm.getAlarmType() == AlarmType.BATTERY_STATE) {
                strName = vehicleAlarm.getAlarmStatus().name();
            }
        }
        if (strName != null && strName.equals(AlarmStatus.RED.name())) {
            batteryLevel = BatteryLevel.RED;
        } else if (strName != null && strName.equals(AlarmStatus.YELLOW.name())) {
            batteryLevel = BatteryLevel.YELLOW;
        } else {
            batteryLevel = BatteryLevel.GREEN;
        }
        displayBatteryIndicator(batteryLevel, this.mCircleDisplays1, this.mCircleDisplayLabels1);
    }

    private void displayBatteryIndicator(BatteryLevel batteryLevel, CircleDisplay circleDisplay, TextView textView) {
        int colorResource = Utils.getColorResource(this.mContext, batteryLevel.getColorRes());
        circleDisplay.showValue(batteryLevel.getPercent(), 100.0f, this.mCircleAnimated);
        circleDisplay.setDrawText(false);
        circleDisplay.setImageResId(batteryLevel.getDrawableRes());
        circleDisplay.setColor(colorResource);
        textView.setText(batteryLevel.getStringRes());
    }

    private void displaySecondCircleIndicator(VehicleModel vehicleModel) {
        if (isServiceScheduleAvailable(vehicleModel)) {
            displayServiceData(vehicleModel, this.mCircleDisplays2, this.mCircleDisplayLabels2);
        } else {
            displayTyresIndicator(vehicleModel, this.mCircleDisplays2, this.mCircleDisplayLabels2);
        }
    }

    private void displayThirdCircleIndicator(VehicleModel vehicleModel) {
        if (isServiceScheduleAvailable(vehicleModel)) {
            displayTyresIndicator(vehicleModel, this.mCircleDisplays3, this.mCircleDisplayLabels3);
        } else {
            displayEngineTempIndicator(vehicleModel, this.mCircleDisplays3, this.mCircleDisplayLabels3);
        }
    }

    private boolean isServiceScheduleAvailable(VehicleModel vehicleModel) {
        return vehicleModel != null && vehicleModel.hasServiceSchedules();
    }

    private void displayServiceData(VehicleModel vehicleModel, CircleDisplay circleDisplay, TextView textView) {
        circleDisplay.setCustomText(this.mContext.getString(R.string.service_circle_indicator));
        try {
            VehicleScheduleModel schedule = vehicleModel.getSchedule(ScheduleType.DIAG_SERVICE_ODO);
            VehicleScheduleModel schedule2 = vehicleModel.getSchedule(ScheduleType.DIAG_SERVICE_TIME);
            if (schedule == null && schedule2 == null) {
                schedule = vehicleModel.getSchedule(ScheduleType.SERVICE_ODO);
                schedule2 = vehicleModel.getSchedule(ScheduleType.SERVICE_TIME);
            }
            ScheduleHelper.ServiceScheduleInfo serviceScheduleInfo = new ScheduleHelper(schedule, schedule2, vehicleModel.getOdometer().intValue()).parse();
            if (serviceScheduleInfo != null) {
                if (serviceScheduleInfo.percent <= 0) {
                    circleDisplay.showValue(100.0f, 100.0f, this.mCircleAnimated);
                    circleDisplay.setColor(this.mPercentColorHelper.getErrorColor());
                    textView.setText(this.mContext.getString(R.string.expired));
                } else {
                    circleDisplay.showValue(serviceScheduleInfo.percent, 100.0f, this.mCircleAnimated);
                    circleDisplay.setColor(this.mPercentColorHelper.getColor(serviceScheduleInfo.percent));
                    textView.setText(String.format(this.mContext.getString(R.string.format_string_space), serviceScheduleInfo.value, serviceScheduleInfo.unit.getStringRes() != 0 ? this.mContext.getString(serviceScheduleInfo.unit.getStringRes()) : ""));
                }
                circleDisplay.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m193xbc0e344c(view);
                    }
                });
            }
        } catch (Exception e) {
            Timber.d(e, "display service circle indicator exception", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: lambda$displayServiceData$5$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ void m193xbc0e344c(View view) {
        mCanMoveCard = false;
        this.mContext.startActivity(ScheduleActivity.buildIntent(this.mContext));
    }

    private void displayTyresIndicator(final VehicleModel vehicleModel, CircleDisplay circleDisplay, TextView textView) {
        circleDisplay.setCustomText(this.mContext.getString(R.string.tyres_swap));
        if (vehicleModel == null) {
            Timber.w("displayTyresIndicator, vehicle is null", new Object[0]);
            return;
        }
        VehicleScheduleModel schedule = vehicleModel.getSchedule(ScheduleType.TYRES_SWAP);
        if (schedule == null) {
            Timber.d("displayTyresIndicator: not configured", new Object[0]);
            textView.setText(this.mContext.getString(R.string.tyres_swap_not_configured));
            circleDisplay.setBlurred(false);
            circleDisplay.showValue(100.0f, 100.0f, false);
            circleDisplay.setColor(this.mPercentColorHelper.getWarningColor());
            circleDisplay.setClickable(true);
        } else {
            Timber.d("displayTyresIndicator: data available", new Object[0]);
            int iIntValue = schedule.getKmToExpirePercent(vehicleModel.getOdometer().intValue()).intValue();
            int iIntValue2 = schedule.getKmToExpire(vehicleModel.getOdometer().intValue()).intValue();
            circleDisplay.setBlurred(false);
            if (iIntValue == 0) {
                circleDisplay.showValue(100.0f, 100.0f, this.mCircleAnimated);
                circleDisplay.setColor(this.mPercentColorHelper.getErrorColor());
                textView.setText(this.mContext.getString(R.string.expired));
            } else {
                circleDisplay.showValue(iIntValue, 100.0f, this.mCircleAnimated);
                circleDisplay.setColor(this.mPercentColorHelper.getColor(iIntValue));
                textView.setText(this.mContext.getString(R.string.km, Integer.valueOf(iIntValue2)));
            }
        }
        circleDisplay.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m194x3b217d4c(vehicleModel, view);
            }
        });
        circleDisplay.invalidate();
    }

    /* JADX INFO: renamed from: lambda$displayTyresIndicator$6$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ void m194x3b217d4c(VehicleModel vehicleModel, View view) {
        mCanMoveCard = false;
        this.mEventBus.post(new MainActivity.RequestTyresSwapConfigurationDialogEvent(vehicleModel.getUid()));
    }

    private void displayEngineTempIndicator(VehicleModel vehicleModel, final CircleDisplay circleDisplay, final TextView textView) {
        if (vehicleModel != null) {
            VehicleParam parameter = vehicleModel.getParameter(DataID.Parameter.ENGINE_TEMP.getId());
            if (parameter != null) {
                m191x62bb0bd0(parameter, circleDisplay, textView);
            } else {
                setEmptyCircle(circleDisplay, textView);
            }
        }
        this.mVehicleParamDisposable = this.mVehicleParametersManagerV2.observeEngineTemp().subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m191x62bb0bd0(circleDisplay, textView, (VehicleParam) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "got exception in displayEngineTempIndicator", new Object[0]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: displayEngineTempIndicator, reason: merged with bridge method [inline-methods] */
    public void m191x62bb0bd0(VehicleParam vehicleParam, CircleDisplay circleDisplay, TextView textView) {
        int okColor;
        Double valueNumeric = vehicleParam.getValueNumeric();
        if (valueNumeric == null) {
            Timber.w("displayEngineTempIndicator: engine temperature is null", new Object[0]);
            return;
        }
        if (valueNumeric.doubleValue() > 112.0d) {
            okColor = this.mPercentColorHelper.getErrorColor();
        } else if (valueNumeric.doubleValue() >= 98.0d) {
            okColor = this.mPercentColorHelper.getWarningColor();
        } else {
            okColor = this.mPercentColorHelper.getOkColor();
        }
        circleDisplay.setColor(okColor);
        circleDisplay.setCustomText(this.mContext.getString(R.string.engine_temp_short));
        circleDisplay.showValue(valueNumeric.intValue(), 112.0f, this.mCircleAnimated);
        textView.setText(String.format(this.mContext.getString(R.string.format_string_space), String.valueOf(valueNumeric), this.mContext.getString(R.string.unit_celsius)));
        circleDisplay.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.DashboardScreenV2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m192x460e580e(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayEngineTempIndicator$9$com-texa-careapp-app-dashboard-DashboardScreenV2, reason: not valid java name */
    public /* synthetic */ void m192x460e580e(View view) {
        goToParamsPage();
    }

    private void setEmptyCircle(CircleDisplay circleDisplay, TextView textView) {
        circleDisplay.setColor(this.mPercentColorHelper.getOkColor());
        circleDisplay.setCustomText(null);
        circleDisplay.showValue(-1.0f, 112.0f, this.mCircleAnimated);
        textView.setText((CharSequence) null);
        circleDisplay.setOnClickListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean touchSosButton(View view, MotionEvent motionEvent) {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_DASHBOARD_EMERGENCY_BUTTON.getTag(), null);
        int action = motionEvent.getAction();
        if (action == 0) {
            view.setPressed(true);
            vibrateOnTouch();
            return true;
        }
        if (action != 1) {
            return false;
        }
        view.setPressed(false);
        mCanMoveCard = false;
        this.mContext.startActivity(ContactsActivity.buildIntent(this.mContext));
        return true;
    }

    private void vibrateOnTouch() {
        ((Vibrator) getContext().getSystemService("vibrator")).vibrate(Constants.TIME_TO_VIBRATE_ON_TOUCH);
    }

    private void displayEmergencyButtonInformation() {
        this.mDashboardEmergencyButton.bindTo(this.mSosFeatureManager, this.mEventBus);
    }

    private void goToParamsPage() {
        mCanMoveCard = false;
        this.mContext.startActivity(DiagnosisDataActivity.buildIntent(this.mContext, 1));
    }

    private void goToDiagosisPage() {
        mCanMoveCard = false;
        this.mContext.startActivity(DiagnosisActivity.buildIntent(this.mContext));
    }

    private int getViewPagerWidth() {
        return getContext().getResources().getDisplayMetrics().widthPixels - getContext().getResources().getDimensionPixelSize(R.dimen.dashboard_view_pager_margin);
    }

    private int getViewPagerHeight() {
        return (getViewPagerWidth() * 3) / 4;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ParametersChooseChartDialog.ShouldUpdateChartParameterTypeEvent shouldUpdateChartParameterTypeEvent) {
        this.dashboardScreenAdapter.updateViews();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ScoreUpdateEvent scoreUpdateEvent) {
        this.dashboardScreenAdapter.updateViews();
    }

    protected DashboardScreenV2() {
    }
}
