package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingBinding extends ViewDataBinding {
    public final ViewPager screenEcoDrivingDaysPager;
    public final LinearLayout screenEcoDrivingNoTrip;
    public final ImageView screenEcoDrivingNoTripImage;
    public final TextView screenEcoDrivingNoTripMessage;
    public final RecyclerView screenEcoDrivingRecyclerView;

    protected ScreenEcoDrivingBinding(Object obj, View view, int i, ViewPager viewPager, LinearLayout linearLayout, ImageView imageView, TextView textView, RecyclerView recyclerView) {
        super(obj, view, i);
        this.screenEcoDrivingDaysPager = viewPager;
        this.screenEcoDrivingNoTrip = linearLayout;
        this.screenEcoDrivingNoTripImage = imageView;
        this.screenEcoDrivingNoTripMessage = textView;
        this.screenEcoDrivingRecyclerView = recyclerView;
    }

    public static ScreenEcoDrivingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving, null, false, obj);
    }

    public static ScreenEcoDrivingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingBinding) bind(obj, view, R.layout.screen_eco_driving);
    }
}
