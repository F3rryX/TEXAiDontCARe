package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityVehicleFinderBinding extends ViewDataBinding {
    public final TextView address;
    public final TextView addressCity;
    public final LinearLayout bussola;
    public final ImageView compass;
    public final FrameLayout container;
    public final TextView distance;
    public final LinearLayout distanceContainer;
    public final TextView distanceRoad;
    public final RelativeLayout navigatorButton;
    public final TextView timeago;
    public final LinearLayout timeagoContainer;
    public final View toolbarActionbar;
    public final AppCompatTextView unit;
    public final TextView unitRoad;
    public final TextView whyText;

    protected ActivityVehicleFinderBinding(Object obj, View view, int i, TextView textView, TextView textView2, LinearLayout linearLayout, ImageView imageView, FrameLayout frameLayout, TextView textView3, LinearLayout linearLayout2, TextView textView4, RelativeLayout relativeLayout, TextView textView5, LinearLayout linearLayout3, View view2, AppCompatTextView appCompatTextView, TextView textView6, TextView textView7) {
        super(obj, view, i);
        this.address = textView;
        this.addressCity = textView2;
        this.bussola = linearLayout;
        this.compass = imageView;
        this.container = frameLayout;
        this.distance = textView3;
        this.distanceContainer = linearLayout2;
        this.distanceRoad = textView4;
        this.navigatorButton = relativeLayout;
        this.timeago = textView5;
        this.timeagoContainer = linearLayout3;
        this.toolbarActionbar = view2;
        this.unit = appCompatTextView;
        this.unitRoad = textView6;
        this.whyText = textView7;
    }

    public static ActivityVehicleFinderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleFinderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityVehicleFinderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_vehicle_finder, viewGroup, z, obj);
    }

    public static ActivityVehicleFinderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleFinderBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityVehicleFinderBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_vehicle_finder, null, false, obj);
    }

    public static ActivityVehicleFinderBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleFinderBinding bind(View view, Object obj) {
        return (ActivityVehicleFinderBinding) bind(obj, view, R.layout.activity_vehicle_finder);
    }
}
