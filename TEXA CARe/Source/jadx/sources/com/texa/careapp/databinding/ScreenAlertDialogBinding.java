package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenAlertDialogBinding extends ViewDataBinding {
    public final TextView okButton;
    public final TextView subtitle;
    public final TextView title;

    protected ScreenAlertDialogBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.okButton = textView;
        this.subtitle = textView2;
        this.title = textView3;
    }

    public static ScreenAlertDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenAlertDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenAlertDialogBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_alert_dialog, viewGroup, z, obj);
    }

    public static ScreenAlertDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenAlertDialogBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenAlertDialogBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_alert_dialog, null, false, obj);
    }

    public static ScreenAlertDialogBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenAlertDialogBinding bind(View view, Object obj) {
        return (ScreenAlertDialogBinding) bind(obj, view, R.layout.screen_alert_dialog);
    }
}
