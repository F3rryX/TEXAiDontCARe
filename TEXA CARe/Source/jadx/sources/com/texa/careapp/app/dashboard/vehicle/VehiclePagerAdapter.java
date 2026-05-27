package com.texa.careapp.app.dashboard.vehicle;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.dashboard.card.DashboardCardObserver;
import com.texa.careapp.model.VehicleModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class VehiclePagerAdapter extends PagerAdapter {
    private int careCondition;
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private ViewPager mViewPager;
    private List<VehicleModel> vehicleModels;
    private Observable mObservers = new DashboardCardObserver();
    private final List<VehicleView> mDiscardedViews = new ArrayList();
    private final SparseArray<VehicleView> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return "";
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public VehiclePagerAdapter(CareApplication.ApplicationComponent applicationComponent, List<VehicleModel> list) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.vehicleModels = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.vehicleModels.size();
    }

    public VehicleModel getItem(int i) {
        return this.vehicleModels.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        VehicleView vehicleViewDisplayVehicle = displayVehicle(viewGroup, i);
        if (vehicleViewDisplayVehicle != null) {
            this.mObservers.addObserver(vehicleViewDisplayVehicle);
            this.mBindedViews.append(i, vehicleViewDisplayVehicle);
            viewGroup.addView(vehicleViewDisplayVehicle, 0);
        }
        return vehicleViewDisplayVehicle;
    }

    private VehicleView displayVehicle(ViewGroup viewGroup, int i) {
        VehicleView vehicleView = new VehicleView(viewGroup.getContext());
        vehicleView.setPresenter(new VehiclePresenter(this.mComponent, this.vehicleModels.get(i), this.careCondition));
        return vehicleView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        VehicleView vehicleView = this.mBindedViews.get(i);
        if (vehicleView != null) {
            this.mObservers.deleteObserver(vehicleView);
            this.mDiscardedViews.add(vehicleView);
            this.mBindedViews.remove(i);
            viewGroup.removeView(vehicleView);
        }
    }

    protected RecyclerView.LayoutManager getLayoutManager() {
        return new GridLayoutManager(this.mContext, 1, 1, false);
    }

    public List<VehicleModel> getItems() {
        return this.vehicleModels;
    }

    public void setViewPager(ViewPager viewPager) {
        this.mViewPager = viewPager;
    }

    public void updateViews() {
        this.mObservers.notifyObservers(Integer.valueOf(this.careCondition));
    }

    public void setCareCondition(int i) {
        this.careCondition = i;
    }

    public int getCareCondition() {
        return this.careCondition;
    }
}
