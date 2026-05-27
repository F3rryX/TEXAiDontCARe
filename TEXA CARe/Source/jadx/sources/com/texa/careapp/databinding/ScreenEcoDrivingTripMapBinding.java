package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingTripMapBinding extends ViewDataBinding {
    public final LinearLayout screenEcoDrivingTripMapBottomLay;
    public final TextView screenEcoDrivingTripMapDistance;
    public final TextView screenEcoDrivingTripMapDistanceLabel;
    public final TextView screenEcoDrivingTripMapDuration;
    public final TextView screenEcoDrivingTripMapDurationLabel;
    public final TextView screenEcoDrivingTripMapLocations;
    public final CircleDisplay screenEcoDrivingTripMapScore;

    protected ScreenEcoDrivingTripMapBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, CircleDisplay circleDisplay) {
        super(obj, view, i);
        this.screenEcoDrivingTripMapBottomLay = linearLayout;
        this.screenEcoDrivingTripMapDistance = textView;
        this.screenEcoDrivingTripMapDistanceLabel = textView2;
        this.screenEcoDrivingTripMapDuration = textView3;
        this.screenEcoDrivingTripMapDurationLabel = textView4;
        this.screenEcoDrivingTripMapLocations = textView5;
        this.screenEcoDrivingTripMapScore = circleDisplay;
    }

    public static ScreenEcoDrivingTripMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingTripMapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_map, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingTripMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripMapBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingTripMapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_map, null, false, obj);
    }

    public static ScreenEcoDrivingTripMapBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripMapBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingTripMapBinding) bind(obj, view, R.layout.screen_eco_driving_trip_map);
    }
}
