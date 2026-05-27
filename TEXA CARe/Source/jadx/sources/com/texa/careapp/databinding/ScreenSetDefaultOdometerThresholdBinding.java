package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSetDefaultOdometerThresholdBinding extends ViewDataBinding {
    public final EditText editTextViewNewExp;
    public final TextInputLayout floatabelLabelNewExpOdo;
    public final LinearLayout layoutAddConfirmed;
    public final LinearLayout layoutNewExpOdo;
    public final TextView thresholdTitol;

    protected ScreenSetDefaultOdometerThresholdBinding(Object obj, View view, int i, EditText editText, TextInputLayout textInputLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView) {
        super(obj, view, i);
        this.editTextViewNewExp = editText;
        this.floatabelLabelNewExpOdo = textInputLayout;
        this.layoutAddConfirmed = linearLayout;
        this.layoutNewExpOdo = linearLayout2;
        this.thresholdTitol = textView;
    }

    public static ScreenSetDefaultOdometerThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultOdometerThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSetDefaultOdometerThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_default_odometer_threshold, viewGroup, z, obj);
    }

    public static ScreenSetDefaultOdometerThresholdBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultOdometerThresholdBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSetDefaultOdometerThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_default_odometer_threshold, null, false, obj);
    }

    public static ScreenSetDefaultOdometerThresholdBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetDefaultOdometerThresholdBinding bind(View view, Object obj) {
        return (ScreenSetDefaultOdometerThresholdBinding) bind(obj, view, R.layout.screen_set_default_odometer_threshold);
    }
}
