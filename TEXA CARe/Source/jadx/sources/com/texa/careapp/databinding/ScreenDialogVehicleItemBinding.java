package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogVehicleItemBinding extends ViewDataBinding {
    public final TextView screenDialogVehicleItemModel;
    public final TextView screenDialogVehicleItemPlate;

    protected ScreenDialogVehicleItemBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.screenDialogVehicleItemModel = textView;
        this.screenDialogVehicleItemPlate = textView2;
    }

    public static ScreenDialogVehicleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogVehicleItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle_item, viewGroup, z, obj);
    }

    public static ScreenDialogVehicleItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogVehicleItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle_item, null, false, obj);
    }

    public static ScreenDialogVehicleItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleItemBinding bind(View view, Object obj) {
        return (ScreenDialogVehicleItemBinding) bind(obj, view, R.layout.screen_dialog_vehicle_item);
    }
}
