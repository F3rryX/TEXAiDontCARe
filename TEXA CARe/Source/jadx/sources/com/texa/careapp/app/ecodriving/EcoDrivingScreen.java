package com.texa.careapp.app.ecodriving;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.EcoDrivingCallback;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.care.eco_driving.score.ScoreType;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.pager.EcoDrivingScreenDayAdapter;
import com.texa.careapp.app.ecodriving.pager.WeekPresenter;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.ecodriving.utils.EcoDrivingAverage;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.ScreenEcoDrivingBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.EcoDrivingProgressDialogFragment;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.CircleDisplay;
import com.texa.careapp.views.HeaderLayoutManagerFixed;
import com.texa.careapp.views.ParallaxRecyclerAdapter;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingScreen extends Screen implements EcoDrivingCallback {
    private static final int ACCELERATION_CIRCLE_ID = 1;
    private static final int COLD_ACCELERATION_CIRCLE_ID = 5;
    private static final int DEACCELERATION_CIRCLE_ID = 2;
    private static final int ENGINE_STOP_RUNNING_CIRCLE_ID = 3;
    private static final int ENGINE_WARM_CIRCLE_ID = 4;
    private static final int HIGH_SPEED_CIRCLE_ID = 6;
    private static final int SCORE_CIRCLE_ID = 0;
    private EcoDrivingScreenAdapter adapter;

    @Inject
    protected AvgCalculator avgCalculator;

    @Inject
    protected ICareObserver careObserver;
    private EcoDrivingScreenDayAdapter dayAdapter;
    private View header;
    private LongSparseArray<List<TripObjectModel>> list;
    private CircleDisplay mCarStopRunningEngineDisplay;
    private CircleDisplay mColdAccelerationsDisplay;
    private CareApplication.ApplicationComponent mComponent;
    private TextView mDayTitle;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private final EcoDrivingActivity mEcoDrivingActivity;

    @Inject
    protected EventBus mEventBus;
    private CircleDisplay mHighSpeedDisplay;
    private EcoDrivingProgressDialogFragment mProgressDialogFragment;
    private RecyclerView mRecyclerView;
    private CircleDisplay mScoreDisplay;
    private CircleDisplay mSuddenAccelerationsDisplay;
    private CircleDisplay mSuddenDeAccelerationsDisplay;
    private Observable<LongSparseArray<List<TripObjectModel>>> mTripListObservable;
    private ViewPager mViewPager;
    private CircleDisplay mWarmUpEngineDisplay;
    private TextView message;
    private LinearLayout noTrip;
    private ImageView noTripImage;
    private long timeMidnightMillis;
    private long timeMillis;
    private SimpleDateFormat dayFormat = new SimpleDateFormat("EEEE", Locale.getDefault());
    private int weekAdapterPosition = 3;
    private final List<TripObjectModel> dailyTrips = new ArrayList();
    private boolean isSmallScreen = false;
    private boolean isFirmwareUpdate = false;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_eco_driving;
    }

    public EcoDrivingScreen(CareApplication careApplication, EcoDrivingActivity ecoDrivingActivity) {
        CareApplication.ApplicationComponent applicationComponentComponent = careApplication.component();
        this.mComponent = applicationComponentComponent;
        applicationComponentComponent.inject(this);
        setIntervalTime(0L);
        this.mEcoDrivingActivity = ecoDrivingActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenEcoDrivingBinding screenEcoDrivingBinding = (ScreenEcoDrivingBinding) DataBindingUtil.bind(view);
        this.noTrip = screenEcoDrivingBinding.screenEcoDrivingNoTrip;
        this.message = screenEcoDrivingBinding.screenEcoDrivingNoTripMessage;
        this.noTripImage = screenEcoDrivingBinding.screenEcoDrivingNoTripImage;
        this.mViewPager = screenEcoDrivingBinding.screenEcoDrivingDaysPager;
        this.mRecyclerView = screenEcoDrivingBinding.screenEcoDrivingRecyclerView;
        this.isFirmwareUpdate = Utils.checkEcoDrivingMinFirmwareVersion(this.careObserver, this.mDongleDataManager.getDongleModel());
        HeaderLayoutManagerFixed headerLayoutManagerFixed = new HeaderLayoutManagerFixed(getContext());
        this.mRecyclerView.setLayoutManager(headerLayoutManagerFixed);
        this.header = LayoutInflater.from(getContext()).inflate(this.isSmallScreen ? R.layout.screen_eco_driving_header_small : R.layout.screen_eco_driving_header, (ViewGroup) this.mRecyclerView, false);
        setUpViews();
        this.mTripListObservable = Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m235xbcbbd90e(observableEmitter);
            }
        });
        this.isSmallScreen = getContext().getResources().getDisplayMetrics().widthPixels < 500;
        LongSparseArray<List<TripObjectModel>> longSparseArray = this.list;
        if (longSparseArray != null && !longSparseArray.isEmpty()) {
            this.dailyTrips.clear();
            this.dailyTrips.addAll(filterItems(this.list.get(this.timeMillis)));
        }
        LongSparseArray<List<TripObjectModel>> longSparseArray2 = this.list;
        if (longSparseArray2 == null || (longSparseArray2 != null && longSparseArray2.isEmpty())) {
            refreshAll();
        } else {
            new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m236xae657f2d();
                }
            }, 50L);
        }
        this.adapter = new EcoDrivingScreenAdapter(getContext(), this.dailyTrips);
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_DRIVING_STYLE_SCREEN.getTag(), null);
        headerLayoutManagerFixed.setHeaderIncrementFixer(this.header);
        this.adapter.setShouldClipView(false);
        this.adapter.setParallaxHeader(this.header, this.mRecyclerView);
        LongSparseArray<List<TripObjectModel>> longSparseArray3 = this.list;
        if (longSparseArray3 != null) {
            this.adapter.setData(longSparseArray3.get(this.timeMillis));
        }
        this.mRecyclerView.setAdapter(this.adapter);
        this.adapter.setOnClickEvent(new ParallaxRecyclerAdapter.OnClickEvent() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda3
            @Override // com.texa.careapp.views.ParallaxRecyclerAdapter.OnClickEvent
            public final void onClick(View view2, int i) {
                this.f$0.m237xa00f254c(view2, i);
            }
        });
        this.adapter.setOnLongClickEvent(new ParallaxRecyclerAdapter.OnLongClickEvent() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda4
            @Override // com.texa.careapp.views.ParallaxRecyclerAdapter.OnLongClickEvent
            public final void onLongClick(View view2, int i) {
                this.f$0.m238x91b8cb6b(view2, i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m235xbcbbd90e(ObservableEmitter observableEmitter) throws Exception {
        initArray();
        observableEmitter.onNext(this.list);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m236xae657f2d() {
        setUpDays();
        setUpDisplay(true);
        setDayTitle(this.timeMillis);
        checkData();
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m237xa00f254c(View view, int i) {
        if (i <= -1 || this.dailyTrips.get(i).getUuid() == null) {
            return;
        }
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_TRIP_DETAIL.getTag(), null);
        goTo(new EcoDrivingTripDetailScreen(this.mComponent, this.dailyTrips.get(i)));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m238x91b8cb6b(View view, int i) {
        if (this.dailyTrips.get(i).getUuid() != null) {
            goTo(new EcoDrivingDialogHideTrip(this.dailyTrips.get(i)));
        }
    }

    private void refreshAll() {
        this.mEcoDrivingActivity.getMDisposable().add(this.mTripListObservable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m242x9b12d4fa((Disposable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m243x8cbc7b19((LongSparseArray) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m244x7e662138((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$refreshAll$4$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m242x9b12d4fa(Disposable disposable) throws Exception {
        createProgressDialogScreen();
    }

    /* JADX INFO: renamed from: lambda$refreshAll$5$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m243x8cbc7b19(LongSparseArray longSparseArray) throws Exception {
        this.dailyTrips.clear();
        this.list = longSparseArray;
        this.dailyTrips.addAll(filterItems((List) longSparseArray.get(this.timeMillis)));
        setUpDays();
        setUpDisplay(true);
        setDayTitle(this.timeMillis);
        checkData();
        dismissProgressDialogScreen();
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: lambda$refreshAll$6$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m244x7e662138(Throwable th) throws Exception {
        th.printStackTrace();
        dismissProgressDialogScreen();
    }

    private void checkData() {
        if (this.list.get(this.timeMillis).isEmpty()) {
            this.noTrip.setVisibility(0);
            if (this.isSmallScreen) {
                this.noTripImage.setVisibility(8);
            } else {
                this.noTripImage.setVisibility(0);
            }
            if (this.isFirmwareUpdate) {
                this.message.setText(R.string.eco_driving_no_trip_message);
                return;
            } else {
                this.message.setText(R.string.eco_driving_no_firmware_description);
                return;
            }
        }
        this.noTrip.setVisibility(8);
    }

    private void setIntervalTime(long j) {
        Calendar calendar = Calendar.getInstance();
        if (j != 0) {
            calendar.setTimeInMillis(j);
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        this.timeMillis = calendar.getTimeInMillis();
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 0);
        this.timeMidnightMillis = calendar.getTimeInMillis();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        BaseScore.registerCallback(this);
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        BaseScore.unRegisterCallback(this);
        this.mEventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return super.onBackPressed();
    }

    private void setUpViews() {
        this.mScoreDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_score);
        this.mSuddenAccelerationsDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_sudden_accelerations);
        this.mSuddenDeAccelerationsDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_sudden_de_accelerations);
        this.mCarStopRunningEngineDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_car_stop_running_engine);
        this.mWarmUpEngineDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_warm_up_engine);
        this.mColdAccelerationsDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_cold_accelerations);
        this.mHighSpeedDisplay = (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_high_speed);
        this.mDayTitle = (TextView) this.header.findViewById(R.id.screen_eco_driving_day);
    }

    private CircleDisplay getCircleDisplay(int i) {
        switch (i) {
            case 0:
                CircleDisplay circleDisplay = this.mScoreDisplay;
                return circleDisplay == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_score) : circleDisplay;
            case 1:
                CircleDisplay circleDisplay2 = this.mSuddenAccelerationsDisplay;
                return circleDisplay2 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_sudden_accelerations) : circleDisplay2;
            case 2:
                CircleDisplay circleDisplay3 = this.mSuddenDeAccelerationsDisplay;
                return circleDisplay3 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_sudden_de_accelerations) : circleDisplay3;
            case 3:
                CircleDisplay circleDisplay4 = this.mCarStopRunningEngineDisplay;
                return circleDisplay4 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_car_stop_running_engine) : circleDisplay4;
            case 4:
                CircleDisplay circleDisplay5 = this.mWarmUpEngineDisplay;
                return circleDisplay5 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_warm_up_engine) : circleDisplay5;
            case 5:
                CircleDisplay circleDisplay6 = this.mColdAccelerationsDisplay;
                return circleDisplay6 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_cold_accelerations) : circleDisplay6;
            case 6:
                CircleDisplay circleDisplay7 = this.mHighSpeedDisplay;
                return circleDisplay7 == null ? (CircleDisplay) this.header.findViewById(R.id.screen_eco_driving_high_speed) : circleDisplay7;
            default:
                return null;
        }
    }

    private void setUpDisplay(boolean z) {
        List<EcoDrivingAverage> average = this.avgCalculator.getAverage(EcoDrivingEventsDataManager.getDailyScoreList(this.timeMillis, this.timeMidnightMillis, false));
        ArrayList<EcoDrivingAverage> arrayList = new ArrayList();
        for (TripObjectModel tripObjectModel : this.dailyTrips) {
            if (!Utils.isEmpty(tripObjectModel.getUuid())) {
                EcoDrivingAverage normalizedAverageByType = this.avgCalculator.getNormalizedAverageByType(EcoDrivingEventsDataManager.getOverallTripScoreList(tripObjectModel.getUuid()));
                normalizedAverageByType.setDuration(Double.valueOf(getTripDuration(tripObjectModel) / 1000));
                if (normalizedAverageByType.getValue().doubleValue() != -1.0d) {
                    arrayList.add(normalizedAverageByType);
                }
            }
        }
        resetDisplay();
        double dDoubleValue = 0.0d;
        double dDoubleValue2 = 0.0d;
        for (EcoDrivingAverage ecoDrivingAverage : arrayList) {
            if (ecoDrivingAverage.getValue() != null && ecoDrivingAverage.getDuration() != null) {
                dDoubleValue += ecoDrivingAverage.getValue().doubleValue() * ecoDrivingAverage.getDuration().doubleValue();
                dDoubleValue2 += ecoDrivingAverage.getDuration().doubleValue();
            }
        }
        int i = -1;
        if (dDoubleValue != 0.0d && dDoubleValue2 != 0.0d) {
            i = (int) (dDoubleValue / dDoubleValue2);
        }
        for (EcoDrivingAverage ecoDrivingAverage2 : average) {
            if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.OVERALL.getNumericType()) {
                if (i < 0 || i > 100) {
                    initCircleDisplay(0, ecoDrivingAverage2.getValue().intValue(), false, z);
                } else {
                    initCircleDisplay(0, i, false, z);
                }
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.ACCELERATIONS.getNumericType()) {
                initCircleDisplay(1, ecoDrivingAverage2.getValue().intValue(), true, z);
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.BRAKES.getNumericType()) {
                initCircleDisplay(2, ecoDrivingAverage2.getValue().intValue(), true, z);
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.HIGH_RPM_ENGINE_COLD.getNumericType()) {
                initCircleDisplay(5, ecoDrivingAverage2.getValue().intValue(), true, z);
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.PARKED_ENGINE_ON.getNumericType()) {
                initCircleDisplay(3, ecoDrivingAverage2.getValue().intValue(), true, z);
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.PARKED_ENGINE_ON_COLD.getNumericType()) {
                initCircleDisplay(4, ecoDrivingAverage2.getValue().intValue(), true, z);
            } else if (ecoDrivingAverage2.getTypeId().intValue() == ScoreType.HIGH_SPEED.getNumericType()) {
                initCircleDisplay(6, ecoDrivingAverage2.getValue().intValue(), true, z);
            }
        }
    }

    private void resetDisplay() {
        initCircleDisplay(0, -1, false, false);
        initCircleDisplay(1, -1, true, false);
        initCircleDisplay(2, -1, true, false);
        initCircleDisplay(5, -1, true, false);
        initCircleDisplay(3, -1, true, false);
        initCircleDisplay(4, -1, true, false);
        initCircleDisplay(6, -1, true, false);
    }

    private void initCircleDisplay(int i, int i2, boolean z, boolean z2) {
        CircleDisplay circleDisplay = getCircleDisplay(i);
        circleDisplay.showValue(i2 != -1 ? i2 : 0.0f, EcoDrivingUtils.MAX_VALUE, z2);
        circleDisplay.setAnimDuration(1000);
        circleDisplay.setColor(EcoDrivingUtils.getReferenceColor(getContext(), i2));
        if (z && i2 != -1) {
            circleDisplay.setDrawText(false);
            circleDisplay.setImageResId(EcoDrivingUtils.getReferenceDrawable(i2));
        } else {
            circleDisplay.setDrawText(true);
            circleDisplay.setImageResId(-1);
            circleDisplay.setTypeface(R.font.font_regular);
            circleDisplay.setCustomText(String.valueOf((i2 == -1 || i2 == 0) ? getContext().getString(R.string.eco_driving_not_available) : Integer.valueOf(i2)));
        }
    }

    private void setDayTitle(long j) {
        this.mDayTitle.setText(String.format(getContext().getString(R.string.eco_driving_format_day_title), this.dayFormat.format(new Date(j))));
    }

    private void setUpDays() {
        EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter = new EcoDrivingScreenDayAdapter(this.mComponent, this.list, this.timeMillis);
        this.dayAdapter = ecoDrivingScreenDayAdapter;
        this.mViewPager.setAdapter(ecoDrivingScreenDayAdapter);
        this.mViewPager.setCurrentItem(this.weekAdapterPosition, true);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                EcoDrivingScreen.this.weekAdapterPosition = i;
            }
        });
    }

    private void initArray() {
        this.list = new LongSparseArray<>();
        Calendar calendar = Calendar.getInstance();
        calendar.set(7, calendar.getFirstDayOfWeek());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(5, -21);
        for (int i = 0; i < 28; i++) {
            this.list.put(calendar.getTimeInMillis(), new ArrayList());
            calendar.add(5, 1);
        }
        long jKeyAt = this.list.keyAt(0);
        LongSparseArray<List<TripObjectModel>> longSparseArray = this.list;
        loadTrips(EcoDrivingEventsDataManager.getTrips(jKeyAt, getMidnightCalendar(longSparseArray.keyAt(longSparseArray.size() - 1))));
    }

    private long getMidnightCalendar(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    private void loadTrips(List<TripObjectModel> list) {
        Calendar calendar = Calendar.getInstance();
        for (TripObjectModel tripObjectModel : list) {
            calendar.setTime(new Date(tripObjectModel.getStartTrip()));
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            List<TripObjectModel> list2 = this.list.get(calendar.getTimeInMillis());
            list2.add(checkTrip(tripObjectModel));
            new TripComparator().sort(list2);
            this.list.put(calendar.getTimeInMillis(), list2);
        }
    }

    private TripObjectModel checkTrip(TripObjectModel tripObjectModel) {
        long endTrip = ((tripObjectModel.getStartTrip() == 0 || tripObjectModel.getLastTripEvent() == null || tripObjectModel.getLastTripEvent().getTimestamp().longValue() == 0) ? 0L : tripObjectModel.getEndTrip() - tripObjectModel.getStartTrip()) + 0;
        tripObjectModel.setTripDuration(endTrip);
        if (EcoDrivingUtils.isTripInProgress(tripObjectModel)) {
            tripObjectModel.setHidden(false);
        } else if ((endTrip < 60000 && tripObjectModel.getEndTrip() > 0) || (Utils.isEmpty(tripObjectModel.getTripGroupScores()) && tripObjectModel.getEndTrip() != 0)) {
            tripObjectModel.setHidden(true);
        } else {
            tripObjectModel.setHidden(false);
        }
        try {
            Utils.safeModelSave(tripObjectModel, getContext());
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
        return tripObjectModel;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return EcoDrivingScreen.class.getName();
    }

    private List<TripObjectModel> filterItems(List<TripObjectModel> list) {
        ArrayList arrayList = new ArrayList();
        for (TripObjectModel tripObjectModel : list) {
            if (!tripObjectModel.isHidden()) {
                if (arrayList.isEmpty()) {
                    TripObjectModel tripObjectModel2 = new TripObjectModel();
                    tripObjectModel2.setVehicleId(tripObjectModel.getVehicleId());
                    tripObjectModel2.setHwId(tripObjectModel.getHwId());
                    arrayList.add(tripObjectModel2);
                } else if (tripObjectModel.getHwId() != null && tripObjectModel.getVehicleId() != null && !tripObjectModel.getVehicleId().equalsIgnoreCase(((TripObjectModel) arrayList.get(arrayList.size() - 1)).getVehicleId())) {
                    TripObjectModel tripObjectModel3 = new TripObjectModel();
                    tripObjectModel3.setVehicleId(tripObjectModel.getVehicleId());
                    tripObjectModel3.setHwId(tripObjectModel.getHwId());
                    arrayList.add(tripObjectModel3);
                }
                arrayList.add(tripObjectModel);
            }
        }
        return arrayList;
    }

    @Override // com.texa.care.navigation.Screen
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_eco_driving, menu);
        menu.findItem(R.id.menu_eco_driving_tutorial).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.f$0.m241xad7f4fd5(menuItem);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreateOptionsMenu$7$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ boolean m241xad7f4fd5(MenuItem menuItem) {
        getContext().startActivity(EcoDrivingTutorialActivity.buildIntent(getContext(), false));
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(WeekPresenter.ShouldUpdateUIEcoDrivingEvent shouldUpdateUIEcoDrivingEvent) {
        setIntervalTime(shouldUpdateUIEcoDrivingEvent.getTimeMillis());
        this.dayAdapter.updateViews(this.timeMillis);
        this.dailyTrips.clear();
        this.dailyTrips.addAll(filterItems(this.list.get(this.timeMillis)));
        this.adapter.notifyDataSetChanged();
        checkData();
        setUpDisplay(false);
        setDayTitle(this.timeMillis);
    }

    private void refreshTripsList() {
        this.dailyTrips.clear();
        this.list.get(this.timeMillis).clear();
        loadTrips(EcoDrivingEventsDataManager.getTrips(this.timeMillis, this.timeMidnightMillis));
        this.dailyTrips.addAll(filterItems(this.list.get(this.timeMillis)));
        this.adapter.notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(EcoDrivingDialogHideTrip.ShouldHideTrip shouldHideTrip) {
        refreshTripsList();
    }

    @Override // com.texa.care.eco_driving.EcoDrivingCallback
    public void drivingEventCall(DrivingEvent drivingEvent, boolean z) {
        if (drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_START.getNumericType() || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP.getNumericType() || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) {
            final Handler handler = new Handler(Looper.getMainLooper());
            new Thread(new Runnable() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m240xdcf4fc2a(handler);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: lambda$drivingEventCall$9$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m240xdcf4fc2a(Handler handler) {
        handler.post(new Runnable() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m239xeb4b560b();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$drivingEventCall$8$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m239xeb4b560b() {
        initArray();
        setUpDays();
        checkData();
        setUpDisplay(false);
        refreshTripsList();
    }

    @Override // com.texa.care.eco_driving.EcoDrivingCallback
    public void scoreUpdateCall(ScoreUpdateEvent scoreUpdateEvent) {
        final Handler handler = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m246xa6050785(handler);
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$scoreUpdateCall$11$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m246xa6050785(Handler handler) {
        handler.post(new Runnable() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingScreen$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m245xb45b6166();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$scoreUpdateCall$10$com-texa-careapp-app-ecodriving-EcoDrivingScreen, reason: not valid java name */
    public /* synthetic */ void m245xb45b6166() {
        try {
            setUpDays();
            checkData();
            setUpDisplay(false);
            refreshTripsList();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private long getTripDuration(TripObjectModel tripObjectModel) {
        return 0 + ((tripObjectModel.getStartTrip() == 0 || tripObjectModel.getLastTripEvent() == null || tripObjectModel.getLastTripEvent().getTimestamp().longValue() == 0) ? 0L : tripObjectModel.getEndTrip() - tripObjectModel.getStartTrip());
    }

    private void createProgressDialogScreen() {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new EcoDrivingProgressDialogFragment();
        }
        this.mProgressDialogFragment.setMessage(this.mEcoDrivingActivity.getString(R.string.wait_please));
        if (this.mProgressDialogFragment.isAdded()) {
            return;
        }
        this.mProgressDialogFragment.show(this.mEcoDrivingActivity.getSupportFragmentManager(), NotificationCompat.CATEGORY_PROGRESS);
    }

    private void dismissProgressDialogScreen() {
        EcoDrivingProgressDialogFragment ecoDrivingProgressDialogFragment = this.mProgressDialogFragment;
        if (ecoDrivingProgressDialogFragment != null) {
            ecoDrivingProgressDialogFragment.dismiss();
        }
    }
}
