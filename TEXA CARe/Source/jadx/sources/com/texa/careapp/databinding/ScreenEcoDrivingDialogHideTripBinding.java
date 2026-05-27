package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingDialogHideTripBinding extends ViewDataBinding {
    public final TextView ecoDrivingDialogHideTripBtnHide;
    public final TextView ecoDrivingDialogHideTripBtnUndo;
    public final TextView ecoDrivingDialogHideTripText;

    protected ScreenEcoDrivingDialogHideTripBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.ecoDrivingDialogHideTripBtnHide = textView;
        this.ecoDrivingDialogHideTripBtnUndo = textView2;
        this.ecoDrivingDialogHideTripText = textView3;
    }

    public static ScreenEcoDrivingDialogHideTripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDialogHideTripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingDialogHideTripBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_dialog_hide_trip, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingDialogHideTripBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDialogHideTripBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingDialogHideTripBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_dialog_hide_trip, null, false, obj);
    }

    public static ScreenEcoDrivingDialogHideTripBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDialogHideTripBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingDialogHideTripBinding) bind(obj, view, R.layout.screen_eco_driving_dialog_hide_trip);
    }
}
