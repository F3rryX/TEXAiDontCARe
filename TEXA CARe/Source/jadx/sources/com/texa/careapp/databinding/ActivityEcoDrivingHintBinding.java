package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.CirclePageIndicator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityEcoDrivingHintBinding extends ViewDataBinding {
    public final TextView activityEcoDrivingHintBtnNext;
    public final ImageView activityEcoDrivingHintClose;
    public final CirclePageIndicator activityEcoDrivingHintIndicator;
    public final ViewPager activityEcoDrivingHintPager;
    public final LinearLayout activityWalkthroughBottomLay;

    protected ActivityEcoDrivingHintBinding(Object obj, View view, int i, TextView textView, ImageView imageView, CirclePageIndicator circlePageIndicator, ViewPager viewPager, LinearLayout linearLayout) {
        super(obj, view, i);
        this.activityEcoDrivingHintBtnNext = textView;
        this.activityEcoDrivingHintClose = imageView;
        this.activityEcoDrivingHintIndicator = circlePageIndicator;
        this.activityEcoDrivingHintPager = viewPager;
        this.activityWalkthroughBottomLay = linearLayout;
    }

    public static ActivityEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityEcoDrivingHintBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_eco_driving_hint, viewGroup, z, obj);
    }

    public static ActivityEcoDrivingHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityEcoDrivingHintBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_eco_driving_hint, null, false, obj);
    }

    public static ActivityEcoDrivingHintBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingHintBinding bind(View view, Object obj) {
        return (ActivityEcoDrivingHintBinding) bind(obj, view, R.layout.activity_eco_driving_hint);
    }
}
