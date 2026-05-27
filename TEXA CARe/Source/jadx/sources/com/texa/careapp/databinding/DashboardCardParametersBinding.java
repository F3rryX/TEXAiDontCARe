package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DashboardCardParametersBinding extends ViewDataBinding {
    public final AppCompatTextView appCompatTextView;
    public final ConstraintLayout constraintLayout;
    public final ConstraintLayout constraintLayout2;
    public final CardView dashboardCardParametersCard;
    public final LineChart dashboardCardParametersChart;
    public final ConstraintLayout dashboardCardParametersHeader;
    public final ImageView dashboardCardParametersIcon;
    public final AppCompatTextView dashboardCardParametersNoDataChart;
    public final ImageView dashboardCardParametersSelector;
    public final AppCompatTextView dashboardCardParametersTitle;
    public final AppCompatTextView dashboardCardParametersValue;

    protected DashboardCardParametersBinding(Object obj, View view, int i, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, CardView cardView, LineChart lineChart, ConstraintLayout constraintLayout3, ImageView imageView, AppCompatTextView appCompatTextView2, ImageView imageView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        super(obj, view, i);
        this.appCompatTextView = appCompatTextView;
        this.constraintLayout = constraintLayout;
        this.constraintLayout2 = constraintLayout2;
        this.dashboardCardParametersCard = cardView;
        this.dashboardCardParametersChart = lineChart;
        this.dashboardCardParametersHeader = constraintLayout3;
        this.dashboardCardParametersIcon = imageView;
        this.dashboardCardParametersNoDataChart = appCompatTextView2;
        this.dashboardCardParametersSelector = imageView2;
        this.dashboardCardParametersTitle = appCompatTextView3;
        this.dashboardCardParametersValue = appCompatTextView4;
    }

    public static DashboardCardParametersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardParametersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DashboardCardParametersBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_parameters, viewGroup, z, obj);
    }

    public static DashboardCardParametersBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardParametersBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DashboardCardParametersBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_parameters, null, false, obj);
    }

    public static DashboardCardParametersBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardParametersBinding bind(View view, Object obj) {
        return (DashboardCardParametersBinding) bind(obj, view, R.layout.dashboard_card_parameters);
    }
}
