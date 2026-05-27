package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenTyresOptionsBinding extends ViewDataBinding {
    public final LinearLayout buttonTyresInversion;
    public final LinearLayout buttonTyresNewInstallation;
    public final TextView textViewInversion;
    public final TextView textViewNewInstallation;

    protected ScreenTyresOptionsBinding(Object obj, View view, int i, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.buttonTyresInversion = linearLayout;
        this.buttonTyresNewInstallation = linearLayout2;
        this.textViewInversion = textView;
        this.textViewNewInstallation = textView2;
    }

    public static ScreenTyresOptionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresOptionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenTyresOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_options, viewGroup, z, obj);
    }

    public static ScreenTyresOptionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresOptionsBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenTyresOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_options, null, false, obj);
    }

    public static ScreenTyresOptionsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresOptionsBinding bind(View view, Object obj) {
        return (ScreenTyresOptionsBinding) bind(obj, view, R.layout.screen_tyres_options);
    }
}
