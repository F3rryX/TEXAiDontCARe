package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityOnBoardingBinding extends ViewDataBinding {
    public final ImageView activityOnBoardingBackBtn;
    public final FrameLayout activityOnBoardingContainer;
    public final RelativeLayout activityOnBoardingHeader;

    protected ActivityOnBoardingBinding(Object obj, View view, int i, ImageView imageView, FrameLayout frameLayout, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.activityOnBoardingBackBtn = imageView;
        this.activityOnBoardingContainer = frameLayout;
        this.activityOnBoardingHeader = relativeLayout;
    }

    public static ActivityOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_on_boarding, viewGroup, z, obj);
    }

    public static ActivityOnBoardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOnBoardingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_on_boarding, null, false, obj);
    }

    public static ActivityOnBoardingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityOnBoardingBinding bind(View view, Object obj) {
        return (ActivityOnBoardingBinding) bind(obj, view, R.layout.activity_on_boarding);
    }
}
