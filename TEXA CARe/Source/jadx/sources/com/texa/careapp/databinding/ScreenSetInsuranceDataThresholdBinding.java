package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSetInsuranceDataThresholdBinding extends ViewDataBinding {
    public final EditableDateView editDateViewNewThreshold;
    public final Spinner insuranceDurationSpinner;
    public final LinearLayout layoutAddConfirmed;
    public final LinearLayout layoutNewExpDate;
    public final TextView thresholdTitol;
    public final TextView vehicleLabel;

    protected ScreenSetInsuranceDataThresholdBinding(Object obj, View view, int i, EditableDateView editableDateView, Spinner spinner, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.editDateViewNewThreshold = editableDateView;
        this.insuranceDurationSpinner = spinner;
        this.layoutAddConfirmed = linearLayout;
        this.layoutNewExpDate = linearLayout2;
        this.thresholdTitol = textView;
        this.vehicleLabel = textView2;
    }

    public static ScreenSetInsuranceDataThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceDataThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSetInsuranceDataThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_insurance_data_threshold, viewGroup, z, obj);
    }

    public static ScreenSetInsuranceDataThresholdBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceDataThresholdBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSetInsuranceDataThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_insurance_data_threshold, null, false, obj);
    }

    public static ScreenSetInsuranceDataThresholdBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceDataThresholdBinding bind(View view, Object obj) {
        return (ScreenSetInsuranceDataThresholdBinding) bind(obj, view, R.layout.screen_set_insurance_data_threshold);
    }
}
