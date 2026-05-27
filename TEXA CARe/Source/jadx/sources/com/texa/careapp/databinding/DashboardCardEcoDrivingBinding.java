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
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DashboardCardEcoDrivingBinding extends ViewDataBinding {
    public final CardView dashboardCardEcoDriving;
    public final TextView dashboardCardEcoDrivingButton;
    public final AppCompatTextView dashboardCardEcoDrivingDescription;
    public final RelativeLayout dashboardCardEcoDrivingHeader;
    public final ImageView dashboardCardEcoDrivingIcon;
    public final CircleDisplay dashboardCardEcoDrivingScore;
    public final AppCompatTextView dashboardCardEcoDrivingTitle;

    protected DashboardCardEcoDrivingBinding(Object obj, View view, int i, CardView cardView, TextView textView, AppCompatTextView appCompatTextView, RelativeLayout relativeLayout, ImageView imageView, CircleDisplay circleDisplay, AppCompatTextView appCompatTextView2) {
        super(obj, view, i);
        this.dashboardCardEcoDriving = cardView;
        this.dashboardCardEcoDrivingButton = textView;
        this.dashboardCardEcoDrivingDescription = appCompatTextView;
        this.dashboardCardEcoDrivingHeader = relativeLayout;
        this.dashboardCardEcoDrivingIcon = imageView;
        this.dashboardCardEcoDrivingScore = circleDisplay;
        this.dashboardCardEcoDrivingTitle = appCompatTextView2;
    }

    public static DashboardCardEcoDrivingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardEcoDrivingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DashboardCardEcoDrivingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_eco_driving, viewGroup, z, obj);
    }

    public static DashboardCardEcoDrivingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardEcoDrivingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DashboardCardEcoDrivingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_eco_driving, null, false, obj);
    }

    public static DashboardCardEcoDrivingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardEcoDrivingBinding bind(View view, Object obj) {
        return (DashboardCardEcoDrivingBinding) bind(obj, view, R.layout.dashboard_card_eco_driving);
    }
}
