package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AlertDialogFirmwareVersionBinding extends ViewDataBinding {
    public final TextView fwDialogDescription;
    public final TextView fwDialogOkButton;
    public final TextView fwDialogTitle;

    protected AlertDialogFirmwareVersionBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.fwDialogDescription = textView;
        this.fwDialogOkButton = textView2;
        this.fwDialogTitle = textView3;
    }

    public static AlertDialogFirmwareVersionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertDialogFirmwareVersionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (AlertDialogFirmwareVersionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.alert_dialog_firmware_version, viewGroup, z, obj);
    }

    public static AlertDialogFirmwareVersionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertDialogFirmwareVersionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (AlertDialogFirmwareVersionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.alert_dialog_firmware_version, null, false, obj);
    }

    public static AlertDialogFirmwareVersionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertDialogFirmwareVersionBinding bind(View view, Object obj) {
        return (AlertDialogFirmwareVersionBinding) bind(obj, view, R.layout.alert_dialog_firmware_version);
    }
}
