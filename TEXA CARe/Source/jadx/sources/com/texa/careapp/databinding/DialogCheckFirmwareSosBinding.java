package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogCheckFirmwareSosBinding extends ViewDataBinding {
    public final TextView dialogCheckFirmwareSosOk;
    public final TextView dialogCheckFirmwareSosUndo;

    protected DialogCheckFirmwareSosBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.dialogCheckFirmwareSosOk = textView;
        this.dialogCheckFirmwareSosUndo = textView2;
    }

    public static DialogCheckFirmwareSosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCheckFirmwareSosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogCheckFirmwareSosBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_check_firmware_sos, viewGroup, z, obj);
    }

    public static DialogCheckFirmwareSosBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCheckFirmwareSosBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogCheckFirmwareSosBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_check_firmware_sos, null, false, obj);
    }

    public static DialogCheckFirmwareSosBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCheckFirmwareSosBinding bind(View view, Object obj) {
        return (DialogCheckFirmwareSosBinding) bind(obj, view, R.layout.dialog_check_firmware_sos);
    }
}
