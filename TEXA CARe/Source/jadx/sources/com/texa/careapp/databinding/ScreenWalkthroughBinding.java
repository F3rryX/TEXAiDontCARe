package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenWalkthroughBinding extends ViewDataBinding {
    public final TextView screenWalkthroughDescription;
    public final TextView screenWalkthroughTitle;

    protected ScreenWalkthroughBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.screenWalkthroughDescription = textView;
        this.screenWalkthroughTitle = textView2;
    }

    public static ScreenWalkthroughBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenWalkthroughBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenWalkthroughBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_walkthrough, viewGroup, z, obj);
    }

    public static ScreenWalkthroughBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenWalkthroughBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenWalkthroughBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_walkthrough, null, false, obj);
    }

    public static ScreenWalkthroughBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenWalkthroughBinding bind(View view, Object obj) {
        return (ScreenWalkthroughBinding) bind(obj, view, R.layout.screen_walkthrough);
    }
}
