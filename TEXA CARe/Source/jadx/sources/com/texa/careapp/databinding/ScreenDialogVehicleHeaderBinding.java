package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogVehicleHeaderBinding extends ViewDataBinding {
    public final TextView screenDialogVehicleHeader;

    protected ScreenDialogVehicleHeaderBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.screenDialogVehicleHeader = textView;
    }

    public static ScreenDialogVehicleHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogVehicleHeaderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle_header, viewGroup, z, obj);
    }

    public static ScreenDialogVehicleHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleHeaderBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogVehicleHeaderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle_header, null, false, obj);
    }

    public static ScreenDialogVehicleHeaderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleHeaderBinding bind(View view, Object obj) {
        return (ScreenDialogVehicleHeaderBinding) bind(obj, view, R.layout.screen_dialog_vehicle_header);
    }
}
