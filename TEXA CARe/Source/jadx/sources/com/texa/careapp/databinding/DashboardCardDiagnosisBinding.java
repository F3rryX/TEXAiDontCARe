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
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DashboardCardDiagnosisBinding extends ViewDataBinding {
    public final CardView dashboardCardDiagnosis;
    public final TextView dashboardCardDiagnosisButton;
    public final AppCompatTextView dashboardCardDiagnosisDescription;
    public final RelativeLayout dashboardCardDiagnosisHeader;
    public final ImageView dashboardCardDiagnosisIcon;
    public final RelativeTimeTextView dashboardCardDiagnosisTime;
    public final AppCompatTextView dashboardCardDiagnosisTitle;

    protected DashboardCardDiagnosisBinding(Object obj, View view, int i, CardView cardView, TextView textView, AppCompatTextView appCompatTextView, RelativeLayout relativeLayout, ImageView imageView, RelativeTimeTextView relativeTimeTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i);
        this.dashboardCardDiagnosis = cardView;
        this.dashboardCardDiagnosisButton = textView;
        this.dashboardCardDiagnosisDescription = appCompatTextView;
        this.dashboardCardDiagnosisHeader = relativeLayout;
        this.dashboardCardDiagnosisIcon = imageView;
        this.dashboardCardDiagnosisTime = relativeTimeTextView;
        this.dashboardCardDiagnosisTitle = appCompatTextView2;
    }

    public static DashboardCardDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DashboardCardDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_diagnosis, viewGroup, z, obj);
    }

    public static DashboardCardDiagnosisBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardDiagnosisBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DashboardCardDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dashboard_card_diagnosis, null, false, obj);
    }

    public static DashboardCardDiagnosisBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DashboardCardDiagnosisBinding bind(View view, Object obj) {
        return (DashboardCardDiagnosisBinding) bind(obj, view, R.layout.dashboard_card_diagnosis);
    }
}
