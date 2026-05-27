package com.texa.careapp.app.ecodriving.pager;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.ecodriving.utils.EcoDrivingAverage;
import com.texa.careapp.databinding.ScreenEcoDrivingDayBinding;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.Utils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class WeekPresenter {
    private static final long millisDay = 86400000;

    @Inject
    protected AvgCalculator avgCalculator;
    private SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM", Locale.getDefault());
    private SimpleDateFormat dayFormat = new SimpleDateFormat("EEE", Locale.getDefault());
    private LongSparseArray<List<TripObjectModel>> dayTrips;

    @Inject
    protected Context mContext;
    private List<TextView> mDates;
    private List<TextView> mDays;

    @Inject
    protected EventBus mEventBus;
    private List<TextView> mScores;
    private long time;
    private long timeToday;

    WeekPresenter(CareApplication.ApplicationComponent applicationComponent, LongSparseArray<List<TripObjectModel>> longSparseArray, long j) {
        applicationComponent.inject(this);
        this.dayTrips = longSparseArray;
        this.time = j;
        initTodayTime();
    }

    public void afterViewInjection(ScreenEcoDrivingDayBinding screenEcoDrivingDayBinding) {
        ArrayList arrayList = new ArrayList();
        this.mDates = arrayList;
        arrayList.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay1);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay2);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay3);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay4);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay5);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay6);
        this.mDates.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDateDay7);
        ArrayList arrayList2 = new ArrayList();
        this.mScores = arrayList2;
        arrayList2.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay1);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay2);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay3);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay4);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay5);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay6);
        this.mScores.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemScoreDay7);
        ArrayList arrayList3 = new ArrayList();
        this.mDays = arrayList3;
        arrayList3.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay1);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay2);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay3);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay4);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay5);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay6);
        this.mDays.add(screenEcoDrivingDayBinding.screeEcoDrivingDayItemDay7);
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay1.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay3.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay4.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay5.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay6.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        screenEcoDrivingDayBinding.screeEcoDrivingDayItemLayoutDay7.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.pager.WeekPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickItem(view);
            }
        });
        initData();
    }

    private void initTodayTime() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        this.timeToday = calendar.getTimeInMillis();
    }

    private void initData() {
        for (int i = 0; i < this.mScores.size(); i++) {
            List<TripObjectModel> trips = EcoDrivingEventsDataManager.getTrips(this.dayTrips.keyAt(i), this.dayTrips.keyAt(i) + millisDay);
            ArrayList<EcoDrivingAverage> arrayList = new ArrayList();
            for (TripObjectModel tripObjectModel : trips) {
                if (!Utils.isEmpty(tripObjectModel.getUuid())) {
                    EcoDrivingAverage normalizedAverageByType = this.avgCalculator.getNormalizedAverageByType(EcoDrivingEventsDataManager.getOverallTripScoreList(tripObjectModel.getUuid()));
                    normalizedAverageByType.setDuration(Double.valueOf(getTripDuration(tripObjectModel) / 1000));
                    if (normalizedAverageByType.getValue().doubleValue() != -1.0d) {
                        arrayList.add(normalizedAverageByType);
                    }
                }
            }
            double dDoubleValue = 0.0d;
            double dDoubleValue2 = 0.0d;
            for (EcoDrivingAverage ecoDrivingAverage : arrayList) {
                if (ecoDrivingAverage.getValue() != null && ecoDrivingAverage.getDuration() != null) {
                    dDoubleValue += ecoDrivingAverage.getValue().doubleValue() * ecoDrivingAverage.getDuration().doubleValue();
                    dDoubleValue2 += ecoDrivingAverage.getDuration().doubleValue();
                }
            }
            int iIntValue = (dDoubleValue == 0.0d || dDoubleValue2 == 0.0d) ? -1 : (int) (dDoubleValue / dDoubleValue2);
            if (iIntValue < 0 || iIntValue > 100) {
                iIntValue = this.avgCalculator.getAverageByType(EcoDrivingEventsDataManager.getDailyScoreList(this.dayTrips.keyAt(i), this.dayTrips.keyAt(i) + millisDay, true)).getValue().intValue();
            }
            TextView textView = this.mScores.get(i);
            LongSparseArray<List<TripObjectModel>> longSparseArray = this.dayTrips;
            textView.setBackground(getDayBackground(longSparseArray.get(longSparseArray.keyAt(i)).size(), iIntValue, this.dayTrips.keyAt(i) == this.time));
            this.mDays.get(i).setText(this.dayFormat.format(new Date(this.dayTrips.keyAt(i))));
            this.mDates.get(i).setText(this.dateFormat.format(new Date(this.dayTrips.keyAt(i))));
            LongSparseArray<List<TripObjectModel>> longSparseArray2 = this.dayTrips;
            if (longSparseArray2.get(longSparseArray2.keyAt(i)).size() == 0) {
                this.mDays.get(i).setTextColor(Color.parseColor("#666E77"));
                this.mDates.get(i).setTextColor(Color.parseColor("#666E77"));
                this.mScores.get(i).setText("");
            } else {
                this.mScores.get(i).setText(String.valueOf((iIntValue == -1 || iIntValue == 0) ? this.mContext.getString(R.string.eco_driving_not_available) : Integer.valueOf(iIntValue)));
                this.mDays.get(i).setTextColor(-1);
                this.mDates.get(i).setTextColor(-1);
            }
        }
    }

    private Drawable getDayBackground(int i, int i2, boolean z) {
        if (i == 0) {
            return ContextCompat.getDrawable(this.mContext, z ? R.drawable.eco_driving_item_day_selected_no_data : R.drawable.eco_driving_item_day_no_data);
        }
        if (i2 < EcoDrivingUtils.PROBLEM_VALUE) {
            return ContextCompat.getDrawable(this.mContext, z ? R.drawable.eco_driving_item_day_selected_negative : R.drawable.eco_driving_item_day_negative);
        }
        if (i2 >= EcoDrivingUtils.WARN_VALUE || i2 <= EcoDrivingUtils.PROBLEM_VALUE) {
            return ContextCompat.getDrawable(this.mContext, z ? R.drawable.eco_driving_item_day_selected_positive : R.drawable.eco_driving_item_day_positive);
        }
        return ContextCompat.getDrawable(this.mContext, z ? R.drawable.eco_driving_item_day_selected_warning : R.drawable.eco_driving_item_day_warning);
    }

    void updateSelected(long j) {
        this.time = j;
        for (int i = 0; i < this.mScores.size(); i++) {
            boolean z = true;
            int iIntValue = this.avgCalculator.getAverageByType(EcoDrivingEventsDataManager.getDailyScoreList(this.dayTrips.keyAt(i), this.dayTrips.keyAt(i) + millisDay, true)).getValue().intValue();
            TextView textView = this.mScores.get(i);
            LongSparseArray<List<TripObjectModel>> longSparseArray = this.dayTrips;
            int size = longSparseArray.get(longSparseArray.keyAt(i)).size();
            if (this.dayTrips.keyAt(i) != this.time) {
                z = false;
            }
            textView.setBackground(getDayBackground(size, iIntValue, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClickItem(View view) {
        if (view.getId() == R.id.scree_eco_driving_day_item_layout_day1) {
            if (canPerformClick(0)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(0)));
                return;
            }
            return;
        }
        if (view.getId() == R.id.scree_eco_driving_day_item_layout_day2) {
            if (canPerformClick(1)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(1)));
                return;
            }
            return;
        }
        if (view.getId() == R.id.scree_eco_driving_day_item_layout_day3) {
            if (canPerformClick(2)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(2)));
                return;
            }
            return;
        }
        if (view.getId() == R.id.scree_eco_driving_day_item_layout_day4) {
            if (canPerformClick(3)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(3)));
            }
        } else if (view.getId() == R.id.scree_eco_driving_day_item_layout_day5) {
            if (canPerformClick(4)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(4)));
            }
        } else if (view.getId() == R.id.scree_eco_driving_day_item_layout_day6) {
            if (canPerformClick(5)) {
                this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(5)));
            }
        } else if (view.getId() == R.id.scree_eco_driving_day_item_layout_day7 && canPerformClick(6)) {
            this.mEventBus.post(new ShouldUpdateUIEcoDrivingEvent(this.dayTrips.keyAt(6)));
        }
    }

    private boolean canPerformClick(int i) {
        LongSparseArray<List<TripObjectModel>> longSparseArray = this.dayTrips;
        return longSparseArray.get(longSparseArray.keyAt(i)).size() > 0 || this.dayTrips.keyAt(i) == this.timeToday;
    }

    private long getTripDuration(TripObjectModel tripObjectModel) {
        return 0 + ((tripObjectModel.getStartTrip() == 0 || tripObjectModel.getLastTripEvent() == null || tripObjectModel.getLastTripEvent().getTimestamp().longValue() == 0) ? 0L : tripObjectModel.getEndTrip() - tripObjectModel.getStartTrip());
    }

    public class ShouldUpdateUIEcoDrivingEvent {
        private long timeMillis;

        ShouldUpdateUIEcoDrivingEvent(long j) {
            this.timeMillis = j;
        }

        public long getTimeMillis() {
            return this.timeMillis;
        }
    }
}
