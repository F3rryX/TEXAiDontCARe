package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogChooseChartBinding extends ViewDataBinding {
    public final ImageView dashboardCardParametersIcon;
    public final RadioGroup dialogChooseChartRadioGroup;

    protected DialogChooseChartBinding(Object obj, View view, int i, ImageView imageView, RadioGroup radioGroup) {
        super(obj, view, i);
        this.dashboardCardParametersIcon = imageView;
        this.dialogChooseChartRadioGroup = radioGroup;
    }

    public static DialogChooseChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogChooseChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogChooseChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_choose_chart, viewGroup, z, obj);
    }

    public static DialogChooseChartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogChooseChartBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogChooseChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_choose_chart, null, false, obj);
    }

    public static DialogChooseChartBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogChooseChartBinding bind(View view, Object obj) {
        return (DialogChooseChartBinding) bind(obj, view, R.layout.dialog_choose_chart);
    }
}
