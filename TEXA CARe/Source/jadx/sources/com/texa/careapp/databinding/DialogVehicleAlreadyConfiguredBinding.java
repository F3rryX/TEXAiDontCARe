package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogVehicleAlreadyConfiguredBinding extends ViewDataBinding {
    public final TextView dialogVehicleAlreadyConfiguredBtn;
    public final TextView dialogVehicleAlreadyConfiguredDescription;

    protected DialogVehicleAlreadyConfiguredBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.dialogVehicleAlreadyConfiguredBtn = textView;
        this.dialogVehicleAlreadyConfiguredDescription = textView2;
    }

    public static DialogVehicleAlreadyConfiguredBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogVehicleAlreadyConfiguredBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogVehicleAlreadyConfiguredBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_vehicle_already_configured, viewGroup, z, obj);
    }

    public static DialogVehicleAlreadyConfiguredBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogVehicleAlreadyConfiguredBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogVehicleAlreadyConfiguredBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_vehicle_already_configured, null, false, obj);
    }

    public static DialogVehicleAlreadyConfiguredBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogVehicleAlreadyConfiguredBinding bind(View view, Object obj) {
        return (DialogVehicleAlreadyConfiguredBinding) bind(obj, view, R.layout.dialog_vehicle_already_configured);
    }
}
