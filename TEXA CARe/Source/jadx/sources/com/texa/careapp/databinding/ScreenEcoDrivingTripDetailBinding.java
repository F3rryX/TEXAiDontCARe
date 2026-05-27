package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.texa.care.R;
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingTripDetailBinding extends ViewDataBinding {
    public final FloatingActionButton ecoDrivingTripDetailScrollToBottom;
    public final TextView screenEcoDrivingTripDetailDistance;
    public final TextView screenEcoDrivingTripDetailDuration;
    public final RelativeLayout screenEcoDrivingTripDetailHeader;
    public final LinearLayout screenEcoDrivingTripDetailHint;
    public final TextView screenEcoDrivingTripDetailHintText;
    public final RecyclerView screenEcoDrivingTripDetailList;
    public final TextView screenEcoDrivingTripDetailLocations;
    public final CircleDisplay screenEcoDrivingTripDetailScore;

    protected ScreenEcoDrivingTripDetailBinding(Object obj, View view, int i, FloatingActionButton floatingActionButton, TextView textView, TextView textView2, RelativeLayout relativeLayout, LinearLayout linearLayout, TextView textView3, RecyclerView recyclerView, TextView textView4, CircleDisplay circleDisplay) {
        super(obj, view, i);
        this.ecoDrivingTripDetailScrollToBottom = floatingActionButton;
        this.screenEcoDrivingTripDetailDistance = textView;
        this.screenEcoDrivingTripDetailDuration = textView2;
        this.screenEcoDrivingTripDetailHeader = relativeLayout;
        this.screenEcoDrivingTripDetailHint = linearLayout;
        this.screenEcoDrivingTripDetailHintText = textView3;
        this.screenEcoDrivingTripDetailList = recyclerView;
        this.screenEcoDrivingTripDetailLocations = textView4;
        this.screenEcoDrivingTripDetailScore = circleDisplay;
    }

    public static ScreenEcoDrivingTripDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingTripDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_detail, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingTripDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripDetailBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingTripDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_detail, null, false, obj);
    }

    public static ScreenEcoDrivingTripDetailBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripDetailBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingTripDetailBinding) bind(obj, view, R.layout.screen_eco_driving_trip_detail);
    }
}
