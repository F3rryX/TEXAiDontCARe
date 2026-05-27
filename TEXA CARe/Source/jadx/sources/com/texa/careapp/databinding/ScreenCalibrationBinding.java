package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenCalibrationBinding extends ViewDataBinding {
    public final TextView screenCalibrationBtn;
    public final TextView screenCalibrationBtnSkip;
    public final TextView screenCalibrationSecondDescription;
    public final TextView screenCalibrationTitle;

    protected ScreenCalibrationBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        super(obj, view, i);
        this.screenCalibrationBtn = textView;
        this.screenCalibrationBtnSkip = textView2;
        this.screenCalibrationSecondDescription = textView3;
        this.screenCalibrationTitle = textView4;
    }

    public static ScreenCalibrationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCalibrationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenCalibrationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_calibration, viewGroup, z, obj);
    }

    public static ScreenCalibrationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCalibrationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenCalibrationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_calibration, null, false, obj);
    }

    public static ScreenCalibrationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCalibrationBinding bind(View view, Object obj) {
        return (ScreenCalibrationBinding) bind(obj, view, R.layout.screen_calibration);
    }
}
