package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.CirclePageIndicator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityEcoDrivingTutorialBinding extends ViewDataBinding {
    public final TextView activityEcoDrivingTutorialBtn;
    public final CirclePageIndicator activityEcoDrivingTutorialIndicator;
    public final ViewPager activityEcoDrivingTutorialPager;

    protected ActivityEcoDrivingTutorialBinding(Object obj, View view, int i, TextView textView, CirclePageIndicator circlePageIndicator, ViewPager viewPager) {
        super(obj, view, i);
        this.activityEcoDrivingTutorialBtn = textView;
        this.activityEcoDrivingTutorialIndicator = circlePageIndicator;
        this.activityEcoDrivingTutorialPager = viewPager;
    }

    public static ActivityEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityEcoDrivingTutorialBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_eco_driving_tutorial, viewGroup, z, obj);
    }

    public static ActivityEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityEcoDrivingTutorialBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_eco_driving_tutorial, null, false, obj);
    }

    public static ActivityEcoDrivingTutorialBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityEcoDrivingTutorialBinding bind(View view, Object obj) {
        return (ActivityEcoDrivingTutorialBinding) bind(obj, view, R.layout.activity_eco_driving_tutorial);
    }
}
