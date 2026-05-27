package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DashboardCardFindVehicleBinding extends ViewDataBinding {
    public final TextView dashboardCardFindVehicleAddress;
    public final CardView dashboardCardFindVehicleCard;
    public final AppCompatTextView dashboardCardFindVehicleCity;
    public final AppCompatTextView dashboardCardFindVehicleDescription;
    public final RelativeLayout dashboardCardFindVehicleHeader;
    public final ImageView dashboardCardFindVehicleIcon;
    public final RelativeLayout dashboardCardFindVehicleMapContainer;

    protected DashboardCardFindVehicleBinding(Object obj, View view, int i, TextView textView, CardView cardView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, RelativeLayout relativeLayout, ImageView imageView, RelativeLayout relativeLayout2) {
        super(obj, view, i);
        this.dashboardCardFindVehicleAddress = textView;
        this.dashboardCardFindVehicleCard = cardView;
        this.dashboardCardFindVehicleCity = appCompatTextView;
        this.dashboardCardFindVehicleDescription = appCompatTextView2;
        this.dashboardCardFindVehicleHeader = relativeLayout;
        this.dashboardCardFindVehicleIcon = imageView;
        this.dashboardCardFindVehicleMapContainer = relativeLayout2;
    }

    public static DashboardCardFindVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardFindVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DashboardCardFindVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_find_vehicle, viewGroup, z, obj);
    }

    public static DashboardCardFindVehicleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardFindVehicleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DashboardCardFindVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_find_vehicle, null, false, obj);
    }

    public static DashboardCardFindVehicleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardFindVehicleBinding bind(View view, Object obj) {
        return (DashboardCardFindVehicleBinding) bind(obj, view, R.layout.dashboard_card_find_vehicle);
    }
}
