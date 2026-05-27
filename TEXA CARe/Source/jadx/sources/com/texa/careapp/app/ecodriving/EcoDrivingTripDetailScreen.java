package com.texa.careapp.app.ecodriving;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ObservableField;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.model.TripScoreUpdateModel;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.databinding.ScreenEcoDrivingTripDetailBinding;
import com.texa.careapp.utils.CareTypefaceSpan;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.CircleDisplay;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingTripDetailScreen extends Screen {
    private EcoDrivingTripDetailScreenAdapter adapter;

    @Inject
    protected AvgCalculator avgCalculator;
    private LinearLayout hintButton;
    private TextView hintButtonText;
    private LinearLayoutManager layoutManager;
    private TextView locations;
    private CareApplication.ApplicationComponent mComponent;
    private Disposable mDisposable;
    private RecyclerView mRecyclerView;
    private CircleDisplay mScoreCircle;
    private TextView mTripDistance;
    private TextView mTripDuration;
    private FloatingActionButton scrollToBottomButton;
    private ArrayList<String> tipsType;
    private TripObjectModel trip;
    private List<TripEventModel> tripEvents;
    private int score = 0;
    public final ObservableField<Boolean> isSmallScreen = new ObservableField<>(false);

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "EcoDrivingTripDetailScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_eco_driving_trip_detail;
    }

    EcoDrivingTripDetailScreen(CareApplication.ApplicationComponent applicationComponent, TripObjectModel tripObjectModel) {
        this.mComponent = applicationComponent;
        applicationComponent.inject(this);
        this.trip = tripObjectModel;
        this.tipsType = new ArrayList<>();
        this.tripEvents = new ArrayList();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        this.isSmallScreen.set(Boolean.valueOf(getContext().getResources().getDisplayMetrics().widthPixels < 500));
        ScreenEcoDrivingTripDetailBinding screenEcoDrivingTripDetailBinding = (ScreenEcoDrivingTripDetailBinding) DataBindingUtil.bind(view);
        this.mScoreCircle = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailScore;
        this.locations = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailLocations;
        this.mRecyclerView = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailList;
        this.mTripDuration = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailDuration;
        this.mTripDistance = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailDistance;
        this.hintButton = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailHint;
        this.hintButtonText = screenEcoDrivingTripDetailBinding.screenEcoDrivingTripDetailHintText;
        this.scrollToBottomButton = screenEcoDrivingTripDetailBinding.ecoDrivingTripDetailScrollToBottom;
        if (this.isSmallScreen.get().booleanValue()) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getContext().getResources().getDimensionPixelSize(R.dimen.eco_driving_circle_display_score_small_dimen), getContext().getResources().getDimensionPixelSize(R.dimen.eco_driving_circle_display_score_small_dimen));
            layoutParams.addRule(13, -1);
            this.mScoreCircle.setLayoutParams(layoutParams);
            this.mScoreCircle.setTextDimension(getContext().getResources().getDimensionPixelSize(R.dimen.eco_driving_circle_display_feature_small_text_dimen));
        }
        loadScoreAndTrip();
        loadTips();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.layoutManager = linearLayoutManager;
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setHasFixedSize(true);
        initArray();
        EcoDrivingTripDetailScreenAdapter ecoDrivingTripDetailScreenAdapter = new EcoDrivingTripDetailScreenAdapter(getContext(), this.tripEvents, this.mComponent, getNavigator(), this.score);
        this.adapter = ecoDrivingTripDetailScreenAdapter;
        this.mRecyclerView.setAdapter(ecoDrivingTripDetailScreenAdapter);
        initScorllToBottomButton();
        setTripInfo();
    }

    private void loadTips() {
        Context context;
        int i;
        List<Integer> badEventTypeCount = EcoDrivingEventsDataManager.getBadEventTypeCount(this.trip.getUuid());
        this.tipsType.clear();
        Iterator<Integer> it = badEventTypeCount.iterator();
        while (it.hasNext()) {
            this.tipsType.add(String.valueOf(it.next()));
        }
        int size = EcoDrivingEventsDataManager.getTips(this.tipsType).size();
        if (size > 0) {
            this.hintButton.setVisibility(0);
            this.hintButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m248xdc66ddbc(view);
                }
            });
            String string = getContext().getString(R.string.eco_driving_hint_btn_title_final_format_1);
            String string2 = getContext().getString(R.string.eco_driving_hint_format_btn_title);
            Object[] objArr = new Object[2];
            objArr[0] = String.valueOf(size);
            if (size > 1) {
                context = getContext();
                i = R.string.eco_driving_hint_format_btn_title_plural;
            } else {
                context = getContext();
                i = R.string.eco_driving_hint_format_btn_title_single;
            }
            objArr[1] = context.getString(i);
            String str = String.format(string2, objArr);
            SpannableString spannableString = new SpannableString(string + " " + str + " " + getContext().getString(R.string.eco_driving_hint_btn_title_final_format_2));
            spannableString.setSpan(new UnderlineSpan(), string.length() + 1, string.length() + str.length() + 1, 33);
            spannableString.setSpan(new CareTypefaceSpan(ResourcesCompat.getFont(getContext(), R.font.font_bold)), string.length() + 1, string.length() + str.length() + 1, 33);
            this.hintButtonText.setText(spannableString);
            return;
        }
        this.hintButton.setVisibility(4);
    }

    /* JADX INFO: renamed from: lambda$loadTips$0$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen, reason: not valid java name */
    public /* synthetic */ void m248xdc66ddbc(View view) {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_SUGGESTION.getTag(), null);
        getContext().startActivity(EcoDrivingHintActivity.buildIntent(getContext(), this.tipsType));
    }

    private void loadScoreAndTrip() {
        TripObjectModel updatedTrip = EcoDrivingEventsDataManager.getUpdatedTrip(this.trip.getUuid());
        this.trip = updatedTrip;
        int iIntValue = this.avgCalculator.getNormalizedAverageByType(EcoDrivingEventsDataManager.getOverallTripScoreList(updatedTrip.getUuid())).getValue().intValue();
        this.score = iIntValue;
        this.mScoreCircle.showValue((iIntValue < 0 || iIntValue > 100) ? 0.0f : iIntValue, EcoDrivingUtils.MAX_VALUE, false);
        this.mScoreCircle.setAnimDuration(1000);
        this.mScoreCircle.setColor(EcoDrivingUtils.getReferenceColor(getContext(), this.score));
        this.mScoreCircle.setTypeface(R.font.font_regular);
        CircleDisplay circleDisplay = this.mScoreCircle;
        int i = this.score;
        circleDisplay.setCustomText(String.valueOf((i < 0 || i > 100) ? getContext().getString(R.string.eco_driving_not_available) : Integer.valueOf(i)));
    }

    private void setTripInfo() {
        Long lValueOf;
        if (this.trip.getStartLabel() == null || this.trip.getEndLabel() == null) {
            this.locations.setVisibility(8);
        } else {
            String strSplitCityLocation = EcoDrivingUtils.splitCityLocation(this.trip.getStartLabel());
            String strSplitCityLocation2 = EcoDrivingUtils.splitCityLocation(this.trip.getEndLabel());
            if (strSplitCityLocation != null && !strSplitCityLocation.equalsIgnoreCase("") && strSplitCityLocation2 != null && !strSplitCityLocation2.equalsIgnoreCase("")) {
                this.locations.setText(String.format(getContext().getString(R.string.eco_driving_format_from_to_trip_detail), strSplitCityLocation, strSplitCityLocation2));
            } else {
                this.locations.setVisibility(8);
            }
        }
        Float startOdo = null;
        if (this.trip.isParent()) {
            startOdo = this.trip.getStartOdo();
            lValueOf = Long.valueOf(this.trip.getStartTrip());
        } else {
            TripObjectModel parentTrip = EcoDrivingEventsDataManager.getParentTrip(this.trip.getIdParent());
            if (parentTrip != null) {
                startOdo = parentTrip.getStartOdo();
                lValueOf = Long.valueOf(parentTrip.getStartTrip());
            } else {
                lValueOf = null;
            }
        }
        List<TripObjectModel> tripGroup = EcoDrivingEventsDataManager.getTripGroup(this.trip.getUuid());
        if (Utils.isEmpty(tripGroup)) {
            if (startOdo != null && startOdo.floatValue() != -1.0f && this.trip.getEndOdo() != null && this.trip.getEndOdo().floatValue() != -1.0f && this.trip.getEndOdo().floatValue() - startOdo.floatValue() >= 0.0f) {
                setTripDistance(this.trip.getEndOdo().floatValue() - startOdo.floatValue());
            } else if (startOdo != null && startOdo.floatValue() != -1.0f && this.trip.getLastTripEvent() != null && this.trip.getLastTripEvent().getOdometer() != null && this.trip.getLastTripEvent().getOdometer().floatValue() != -1.0f && this.trip.getLastTripEvent().getOdometer().floatValue() - startOdo.floatValue() >= 0.0f) {
                setTripDistance(this.trip.getLastTripEvent().getOdometer().floatValue() - startOdo.floatValue());
            } else {
                this.mTripDistance.setText("-");
            }
            if (this.trip.getLastTripEvent() != null && this.trip.getLastTripEvent().getTimestamp() != null) {
                setTripDuration(this.trip.getLastTripEvent().getTimestamp().longValue() - lValueOf.longValue());
                return;
            } else if (this.trip.getEndTrip() > 0) {
                setTripDuration(this.trip.getEndTrip() - lValueOf.longValue());
                return;
            } else {
                this.mTripDuration.setText("-");
                return;
            }
        }
        TripObjectModel tripObjectModel = tripGroup.get(tripGroup.size() - 1);
        if (tripObjectModel != null) {
            if (startOdo != null && startOdo.floatValue() != -1.0f && tripObjectModel.getEndOdo() != null && tripObjectModel.getEndOdo().floatValue() != -1.0f && tripObjectModel.getEndOdo().floatValue() - startOdo.floatValue() >= 0.0f) {
                setTripDistance(tripObjectModel.getEndOdo().floatValue() - startOdo.floatValue());
            } else if (startOdo != null && startOdo.floatValue() != -1.0f && tripObjectModel.getLastTripEvent() != null && tripObjectModel.getLastTripEvent().getOdometer() != null && tripObjectModel.getLastTripEvent().getOdometer().floatValue() != -1.0f && tripObjectModel.getLastTripEvent().getOdometer().floatValue() - startOdo.floatValue() >= 0.0f) {
                setTripDistance(tripObjectModel.getLastTripEvent().getOdometer().floatValue() - startOdo.floatValue());
            } else {
                this.mTripDistance.setText("-");
            }
            if (tripObjectModel.getLastTripEvent() != null && tripObjectModel.getLastTripEvent().getTimestamp() != null) {
                setTripDuration(tripObjectModel.getLastTripEvent().getTimestamp().longValue() - lValueOf.longValue());
            } else if (tripObjectModel.getEndTrip() > 0) {
                setTripDuration(this.trip.getEndTrip() - lValueOf.longValue());
            } else {
                this.mTripDuration.setText("-");
            }
        }
    }

    private void setTripDuration(long j) {
        long hours = TimeUnit.MILLISECONDS.toHours(j);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(hours);
        if (hours > 0 && minutes > 0) {
            this.mTripDuration.setText(String.format(getContext().getString(R.string.eco_driving_detail_format_duration_with_hour), String.valueOf(hours), String.valueOf(minutes)));
        } else if (minutes > 0) {
            this.mTripDuration.setText(String.format(getContext().getString(R.string.eco_driving_detail_format_duration_within_hour), String.valueOf(minutes)));
        } else {
            this.mTripDuration.setText("-");
        }
    }

    private void setTripDistance(float f) {
        this.mTripDistance.setText(String.format(getContext().getString(R.string.eco_driving_detail_format_distance), String.valueOf((int) f)));
    }

    private void initArray() {
        this.tripEvents.clear();
        List<TripObjectModel> tripGroup = EcoDrivingEventsDataManager.getTripGroup(this.trip.getUuid());
        if (!tripGroup.isEmpty()) {
            List<TripEventModel> list = this.tripEvents;
            TripObjectModel tripObjectModel = this.trip;
            list.addAll(tripObjectModel.getTripEventsWithoutStop(tripObjectModel.getId().longValue()));
        } else {
            List<TripEventModel> list2 = this.tripEvents;
            TripObjectModel tripObjectModel2 = this.trip;
            list2.addAll(tripObjectModel2.getTripEvents(tripObjectModel2.getId().longValue()));
        }
        for (int i = 0; i < tripGroup.size(); i++) {
            if (i < tripGroup.size() - 1) {
                this.tripEvents.addAll(tripGroup.get(i).getTripEventsWithoutStartStop(tripGroup.get(i).getId().longValue()));
            } else {
                this.tripEvents.addAll(tripGroup.get(i).getTripEventsWithoutStart(tripGroup.get(i).getId().longValue()));
            }
            addScoreUpdateEvents(tripGroup.get(i).getId().longValue());
        }
        addScoreUpdateEvents(this.trip.getId().longValue());
        new TripEventComparator().sort(this.tripEvents);
        TripEventModel tripEventModel = null;
        Iterator<TripEventModel> it = this.tripEvents.iterator();
        while (it.hasNext()) {
            TripEventModel next = it.next();
            if (tripEventModel != null && tripEventModel.getTypeId().intValue() == -1 && next.getTypeId().intValue() == -1) {
                it.remove();
            } else {
                tripEventModel = next;
            }
        }
        removeMidTripStops();
    }

    private void addScoreUpdateEvents(long j) {
        ArrayList arrayList = new ArrayList();
        for (TripScoreUpdateModel tripScoreUpdateModel : EcoDrivingEventsDataManager.getTripEventsIncrementScoreByRideId(j)) {
            TripEventModel tripEventModel = new TripEventModel();
            tripEventModel.setTypeId(EcoDrivingEventsDataManager.INCREMENT_SCORE_TYPE);
            tripEventModel.setTimestamp(Long.valueOf(tripScoreUpdateModel.getTimestamp()));
            arrayList.add(tripEventModel);
        }
        this.tripEvents.addAll(arrayList);
    }

    @Override // com.texa.care.navigation.Screen
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.menu_eco_driving_detail, menu);
        menu.findItem(R.id.menu_eco_driving_map).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen$$ExternalSyntheticLambda0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return this.f$0.m249x56898d1(menuItem);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreateOptionsMenu$1$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen, reason: not valid java name */
    public /* synthetic */ boolean m249x56898d1(MenuItem menuItem) {
        goTo(new EcoDrivingTripDetailMapScreen(this.mComponent, this.score, this.tripEvents, this.locations.getText().toString(), this.mTripDistance.getText().toString(), this.mTripDuration.getText().toString()));
        return false;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        Utils.safeDispose(this.mDisposable);
        this.mDisposable = MainEcoDrivingBus.getInstance().getEcoBusObservable().delay(2000L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m250xa717d8c((UpdateEcoDrivingDataEvent) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "MainEcoDrivingBus onError", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onResume$2$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen, reason: not valid java name */
    public /* synthetic */ void m250xa717d8c(UpdateEcoDrivingDataEvent updateEcoDrivingDataEvent) throws Exception {
        initArray();
        loadScoreAndTrip();
        setTripInfo();
        this.adapter.notifyDataSetChanged();
        initScorllToBottomButton();
        loadTips();
        this.layoutManager.scrollToPositionWithOffset(this.adapter.getItemCount() - 1, 0);
    }

    private void removeMidTripStops() {
        int i = 0;
        while (i < this.tripEvents.size()) {
            TripEventModel tripEventModel = this.tripEvents.get(i);
            int i2 = i + 1;
            if (((tripEventModel != null && tripEventModel.getTypeId() != null && tripEventModel.getTypeId().intValue() == DrivingEventType.DRIVING_STOP.getNumericType()) || tripEventModel.getTypeId().intValue() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) && i2 < this.tripEvents.size()) {
                this.tripEvents.remove(i);
            }
            i = i2;
        }
    }

    private void initScorllToBottomButton() {
        EcoDrivingTripDetailScreenAdapter ecoDrivingTripDetailScreenAdapter = this.adapter;
        if (ecoDrivingTripDetailScreenAdapter != null && ecoDrivingTripDetailScreenAdapter.getItemCount() > 5) {
            this.scrollToBottomButton.setScaleType(ImageView.ScaleType.CENTER);
            this.scrollToBottomButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m247x7fdc433b(view);
                }
            });
            this.scrollToBottomButton.setVisibility(0);
            return;
        }
        this.scrollToBottomButton.setVisibility(8);
    }

    /* JADX INFO: renamed from: lambda$initScorllToBottomButton$4$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen, reason: not valid java name */
    public /* synthetic */ void m247x7fdc433b(View view) {
        this.mRecyclerView.smoothScrollToPosition(this.adapter.getItemCount() - 1);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.mDisposable);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    public static void setLayoutWidth(View view, float f) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) f;
        view.setLayoutParams(layoutParams);
    }

    public static void setLayoutHeight(View view, float f) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = (int) f;
        view.setLayoutParams(layoutParams);
    }
}
