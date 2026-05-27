package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.SlidingTabLayout;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDiagnosisDataBinding extends ViewDataBinding {
    public final SlidingTabLayout screenDiagnosisDataSlidingTabs;
    public final ViewPager screenDiagnosisDataViewPager;

    protected ScreenDiagnosisDataBinding(Object obj, View view, int i, SlidingTabLayout slidingTabLayout, ViewPager viewPager) {
        super(obj, view, i);
        this.screenDiagnosisDataSlidingTabs = slidingTabLayout;
        this.screenDiagnosisDataViewPager = viewPager;
    }

    public static ScreenDiagnosisDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDiagnosisDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_diagnosis_data, viewGroup, z, obj);
    }

    public static ScreenDiagnosisDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisDataBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDiagnosisDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_diagnosis_data, null, false, obj);
    }

    public static ScreenDiagnosisDataBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisDataBinding bind(View view, Object obj) {
        return (ScreenDiagnosisDataBinding) bind(obj, view, R.layout.screen_diagnosis_data);
    }
}
