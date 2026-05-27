package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.CirclePageIndicator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityWalkthroughBinding extends ViewDataBinding {
    public final LinearLayout activityWalkthroughBottomLay;
    public final RelativeLayout activityWalkthroughBottomLayContent;
    public final RelativeLayout activityWalkthroughBtnNext;
    public final TextView activityWalkthroughBtnSkip;
    public final View activityWalkthroughClick;
    public final CirclePageIndicator activityWalkthroughIndicator;
    public final ViewPager activityWalkthroughPager;
    public final VideoView activityWalkthroughVideoView;

    protected ActivityWalkthroughBinding(Object obj, View view, int i, LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, View view2, CirclePageIndicator circlePageIndicator, ViewPager viewPager, VideoView videoView) {
        super(obj, view, i);
        this.activityWalkthroughBottomLay = linearLayout;
        this.activityWalkthroughBottomLayContent = relativeLayout;
        this.activityWalkthroughBtnNext = relativeLayout2;
        this.activityWalkthroughBtnSkip = textView;
        this.activityWalkthroughClick = view2;
        this.activityWalkthroughIndicator = circlePageIndicator;
        this.activityWalkthroughPager = viewPager;
        this.activityWalkthroughVideoView = videoView;
    }

    public static ActivityWalkthroughBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityWalkthroughBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityWalkthroughBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_walkthrough, viewGroup, z, obj);
    }

    public static ActivityWalkthroughBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityWalkthroughBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityWalkthroughBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_walkthrough, null, false, obj);
    }

    public static ActivityWalkthroughBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityWalkthroughBinding bind(View view, Object obj) {
        return (ActivityWalkthroughBinding) bind(obj, view, R.layout.activity_walkthrough);
    }
}
