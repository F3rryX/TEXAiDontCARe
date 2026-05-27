package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FragmentDashboardVehicleBinding extends ViewDataBinding {
    public final ImageView fragmentDashboardVehicleIcon;
    public final ImageView fragmentDashboardVehicleIconInvisible;
    public final RelativeLayout fragmentDashboardVehicleLayout;
    public final AppCompatTextView fragmentDashboardVehicleName;
    public final TextView fragmentDashboardVehicleStatus;

    protected FragmentDashboardVehicleBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout, AppCompatTextView appCompatTextView, TextView textView) {
        super(obj, view, i);
        this.fragmentDashboardVehicleIcon = imageView;
        this.fragmentDashboardVehicleIconInvisible = imageView2;
        this.fragmentDashboardVehicleLayout = relativeLayout;
        this.fragmentDashboardVehicleName = appCompatTextView;
        this.fragmentDashboardVehicleStatus = textView;
    }

    public static FragmentDashboardVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentDashboardVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_dashboard_vehicle, viewGroup, z, obj);
    }

    public static FragmentDashboardVehicleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardVehicleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentDashboardVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_dashboard_vehicle, null, false, obj);
    }

    public static FragmentDashboardVehicleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardVehicleBinding bind(View view, Object obj) {
        return (FragmentDashboardVehicleBinding) bind(obj, view, R.layout.fragment_dashboard_vehicle);
    }
}
