package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingTripItemBinding extends ViewDataBinding {
    public final TextView screenEcoDrivingTripItemCar;
    public final CircleDisplay screenEcoDrivingTripItemCircle;
    public final TextView screenEcoDrivingTripItemDate;
    public final AppCompatTextView screenEcoDrivingTripItemFromTo;
    public final RelativeLayout screenEcoDrivingTripItemLay;
    public final View screenEcoDrivingTripItemLine;

    protected ScreenEcoDrivingTripItemBinding(Object obj, View view, int i, TextView textView, CircleDisplay circleDisplay, TextView textView2, AppCompatTextView appCompatTextView, RelativeLayout relativeLayout, View view2) {
        super(obj, view, i);
        this.screenEcoDrivingTripItemCar = textView;
        this.screenEcoDrivingTripItemCircle = circleDisplay;
        this.screenEcoDrivingTripItemDate = textView2;
        this.screenEcoDrivingTripItemFromTo = appCompatTextView;
        this.screenEcoDrivingTripItemLay = relativeLayout;
        this.screenEcoDrivingTripItemLine = view2;
    }

    public static ScreenEcoDrivingTripItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingTripItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_item, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingTripItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingTripItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_item, null, false, obj);
    }

    public static ScreenEcoDrivingTripItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripItemBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingTripItemBinding) bind(obj, view, R.layout.screen_eco_driving_trip_item);
    }
}
