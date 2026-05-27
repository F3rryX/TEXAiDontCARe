package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SettingsMyVehiclesListBinding extends ViewDataBinding {
    public final LinearLayout settingsMyVehiclesList;
    public final View settingsMyVehiclesListDiv;

    protected SettingsMyVehiclesListBinding(Object obj, View view, int i, LinearLayout linearLayout, View view2) {
        super(obj, view, i);
        this.settingsMyVehiclesList = linearLayout;
        this.settingsMyVehiclesListDiv = view2;
    }

    public static SettingsMyVehiclesListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsMyVehiclesListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SettingsMyVehiclesListBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_my_vehicles_list, viewGroup, z, obj);
    }

    public static SettingsMyVehiclesListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsMyVehiclesListBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SettingsMyVehiclesListBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_my_vehicles_list, null, false, obj);
    }

    public static SettingsMyVehiclesListBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsMyVehiclesListBinding bind(View view, Object obj) {
        return (SettingsMyVehiclesListBinding) bind(obj, view, R.layout.settings_my_vehicles_list);
    }
}
