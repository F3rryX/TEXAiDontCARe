package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogFwUpdateBinding extends ViewDataBinding {
    public final TextView dialogFwUpdateBtn;
    public final TextView dialogFwUpdateDescription;

    protected ScreenDialogFwUpdateBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.dialogFwUpdateBtn = textView;
        this.dialogFwUpdateDescription = textView2;
    }

    public static ScreenDialogFwUpdateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogFwUpdateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogFwUpdateBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_fw_update, viewGroup, z, obj);
    }

    public static ScreenDialogFwUpdateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogFwUpdateBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogFwUpdateBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_fw_update, null, false, obj);
    }

    public static ScreenDialogFwUpdateBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogFwUpdateBinding bind(View view, Object obj) {
        return (ScreenDialogFwUpdateBinding) bind(obj, view, R.layout.screen_dialog_fw_update);
    }
}
