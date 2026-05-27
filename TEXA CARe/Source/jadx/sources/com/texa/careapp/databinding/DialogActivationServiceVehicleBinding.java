package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogActivationServiceVehicleBinding extends ViewDataBinding {
    public final TextView dialogActivationServiceVehicleConfirm;
    public final TextView dialogActivationServiceVehicleDescription;
    public final TextView dialogActivationServiceVehicleUndo;

    protected DialogActivationServiceVehicleBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.dialogActivationServiceVehicleConfirm = textView;
        this.dialogActivationServiceVehicleDescription = textView2;
        this.dialogActivationServiceVehicleUndo = textView3;
    }

    public static DialogActivationServiceVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogActivationServiceVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_vehicle, viewGroup, z, obj);
    }

    public static DialogActivationServiceVehicleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceVehicleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogActivationServiceVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_vehicle, null, false, obj);
    }

    public static DialogActivationServiceVehicleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceVehicleBinding bind(View view, Object obj) {
        return (DialogActivationServiceVehicleBinding) bind(obj, view, R.layout.dialog_activation_service_vehicle);
    }
}
