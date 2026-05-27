package com.texa.careapp.app.ecodriving.pager;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.LongSparseArray;
import androidx.viewpager.widget.PagerAdapter;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingScreenDayAdapter extends PagerAdapter {
    private LongSparseArray<List<TripObjectModel>> items;
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private long time;
    final List<WeekView> mDiscardedViews = new ArrayList();
    final SparseArray<WeekView> mBindedViews = new SparseArray<>();
    private Observable mObservers = new WeekDayObserver();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 4;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public EcoDrivingScreenDayAdapter(CareApplication.ApplicationComponent applicationComponent, LongSparseArray<List<TripObjectModel>> longSparseArray, long j) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.items = longSparseArray;
        this.time = j;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        WeekView weekViewDisplayWeek = displayWeek(viewGroup, i);
        if (weekViewDisplayWeek != null) {
            this.mObservers.addObserver(weekViewDisplayWeek);
            this.mBindedViews.append(i, weekViewDisplayWeek);
            viewGroup.addView(weekViewDisplayWeek, 0);
        }
        return weekViewDisplayWeek;
    }

    private WeekView displayWeek(ViewGroup viewGroup, int i) {
        WeekView weekView = new WeekView(viewGroup.getContext());
        weekView.setPresenter(new WeekPresenter(this.mComponent, getSubList(this.items, getCount() - i), this.time));
        return weekView;
    }

    private LongSparseArray<List<TripObjectModel>> getSubList(LongSparseArray<List<TripObjectModel>> longSparseArray, int i) {
        LongSparseArray<List<TripObjectModel>> longSparseArray2 = new LongSparseArray<>();
        int size = longSparseArray.size() - (i * 7);
        int i2 = size + 7;
        while (size < i2) {
            longSparseArray2.put(longSparseArray.keyAt(size), longSparseArray.get(longSparseArray.keyAt(size)));
            size++;
        }
        return longSparseArray2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        WeekView weekView = this.mBindedViews.get(i);
        if (weekView != null) {
            this.mObservers.deleteObserver(weekView);
            this.mDiscardedViews.add(weekView);
            this.mBindedViews.remove(i);
            viewGroup.removeView(weekView);
        }
    }

    private void setTime(long j) {
        this.time = j;
    }

    public void updateViews(long j) {
        setTime(j);
        this.mObservers.notifyObservers(Long.valueOf(j));
    }
}
