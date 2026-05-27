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
public abstract class DashboardCardScheduleBinding extends ViewDataBinding {
    public final CardView dashboardCardSchedule;
    public final TextView dashboardCardScheduleButton;
    public final TextView dashboardCardScheduleDescription;
    public final RelativeLayout dashboardCardScheduleHeader;
    public final ImageView dashboardCardScheduleIcon;
    public final AppCompatTextView dashboardCardScheduleShortDescription;
    public final AppCompatTextView dashboardCardScheduleTitle;

    protected DashboardCardScheduleBinding(Object obj, View view, int i, CardView cardView, TextView textView, TextView textView2, RelativeLayout relativeLayout, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i);
        this.dashboardCardSchedule = cardView;
        this.dashboardCardScheduleButton = textView;
        this.dashboardCardScheduleDescription = textView2;
        this.dashboardCardScheduleHeader = relativeLayout;
        this.dashboardCardScheduleIcon = imageView;
        this.dashboardCardScheduleShortDescription = appCompatTextView;
        this.dashboardCardScheduleTitle = appCompatTextView2;
    }

    public static DashboardCardScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DashboardCardScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_schedule, viewGroup, z, obj);
    }

    public static DashboardCardScheduleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardScheduleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DashboardCardScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_schedule, null, false, obj);
    }

    public static DashboardCardScheduleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardScheduleBinding bind(View view, Object obj) {
        return (DashboardCardScheduleBinding) bind(obj, view, R.layout.dashboard_card_schedule);
    }
}
