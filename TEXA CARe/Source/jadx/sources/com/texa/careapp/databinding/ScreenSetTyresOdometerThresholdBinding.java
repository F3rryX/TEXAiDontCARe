package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSetTyresOdometerThresholdBinding extends ViewDataBinding {
    public final EditText editTextViewNewExp;
    public final TextInputLayout floatabelLabelNewExpOdo;
    public final LinearLayout layoutAddConfirmed;
    public final LinearLayout layoutNewExpOdo;
    public final LinearLayout layoutTyresType;
    public final TextView thresholdTitol;
    public final Spinner tyresTypeSpinnerNewInstall;
    public final TextView vehicleLabel;

    protected ScreenSetTyresOdometerThresholdBinding(Object obj, View view, int i, EditText editText, TextInputLayout textInputLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, Spinner spinner, TextView textView2) {
        super(obj, view, i);
        this.editTextViewNewExp = editText;
        this.floatabelLabelNewExpOdo = textInputLayout;
        this.layoutAddConfirmed = linearLayout;
        this.layoutNewExpOdo = linearLayout2;
        this.layoutTyresType = linearLayout3;
        this.thresholdTitol = textView;
        this.tyresTypeSpinnerNewInstall = spinner;
        this.vehicleLabel = textView2;
    }

    public static ScreenSetTyresOdometerThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetTyresOdometerThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSetTyresOdometerThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_tyres_odometer_threshold, viewGroup, z, obj);
    }

    public static ScreenSetTyresOdometerThresholdBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetTyresOdometerThresholdBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSetTyresOdometerThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_tyres_odometer_threshold, null, false, obj);
    }

    public static ScreenSetTyresOdometerThresholdBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetTyresOdometerThresholdBinding bind(View view, Object obj) {
        return (ScreenSetTyresOdometerThresholdBinding) bind(obj, view, R.layout.screen_set_tyres_odometer_threshold);
    }
}
