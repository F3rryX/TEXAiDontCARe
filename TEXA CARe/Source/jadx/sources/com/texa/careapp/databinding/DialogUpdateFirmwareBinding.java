package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogUpdateFirmwareBinding extends ViewDataBinding {
    public final TextView dialogUpdateFirmwareDescription;
    public final View dialogUpdateFirmwareLine;
    public final TextView dialogUpdateFirmwareOk;
    public final ProgressBar dialogUpdateFirmwareProgress;
    public final TextView dialogUpdateFirmwareUndo;

    protected DialogUpdateFirmwareBinding(Object obj, View view, int i, TextView textView, View view2, TextView textView2, ProgressBar progressBar, TextView textView3) {
        super(obj, view, i);
        this.dialogUpdateFirmwareDescription = textView;
        this.dialogUpdateFirmwareLine = view2;
        this.dialogUpdateFirmwareOk = textView2;
        this.dialogUpdateFirmwareProgress = progressBar;
        this.dialogUpdateFirmwareUndo = textView3;
    }

    public static DialogUpdateFirmwareBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogUpdateFirmwareBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogUpdateFirmwareBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_update_firmware, viewGroup, z, obj);
    }

    public static DialogUpdateFirmwareBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogUpdateFirmwareBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogUpdateFirmwareBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_update_firmware, null, false, obj);
    }

    public static DialogUpdateFirmwareBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogUpdateFirmwareBinding bind(View view, Object obj) {
        return (DialogUpdateFirmwareBinding) bind(obj, view, R.layout.dialog_update_firmware);
    }
}
