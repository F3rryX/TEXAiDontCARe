package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSetDefaultDataThresholdBinding extends ViewDataBinding {
    public final EditableDateView editDateViewNewThreshold;
    public final LinearLayout layoutAddConfirmed;
    public final LinearLayout layoutNewExpDate;
    public final TextView thresholdTitol;
    public final TextView vehicleLabel;

    protected ScreenSetDefaultDataThresholdBinding(Object obj, View view, int i, EditableDateView editableDateView, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.editDateViewNewThreshold = editableDateView;
        this.layoutAddConfirmed = linearLayout;
        this.layoutNewExpDate = linearLayout2;
        this.thresholdTitol = textView;
        this.vehicleLabel = textView2;
    }

    public static ScreenSetDefaultDataThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultDataThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSetDefaultDataThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_default_data_threshold, viewGroup, z, obj);
    }

    public static ScreenSetDefaultDataThresholdBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultDataThresholdBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSetDefaultDataThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_default_data_threshold, null, false, obj);
    }

    public static ScreenSetDefaultDataThresholdBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultDataThresholdBinding bind(View view, Object obj) {
        return (ScreenSetDefaultDataThresholdBinding) bind(obj, view, R.layout.screen_set_default_data_threshold);
    }
}
