package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenStartEngineBinding extends ViewDataBinding {
    public final TextView screenStartEngineDescription;
    public final ImageView screenStartEngineImage;
    public final RelativeLayout screenStartEngineNext;
    public final ProgressBar screenStartEngineProgress;
    public final TextView screenStartEngineTitle;

    protected ScreenStartEngineBinding(Object obj, View view, int i, TextView textView, ImageView imageView, RelativeLayout relativeLayout, ProgressBar progressBar, TextView textView2) {
        super(obj, view, i);
        this.screenStartEngineDescription = textView;
        this.screenStartEngineImage = imageView;
        this.screenStartEngineNext = relativeLayout;
        this.screenStartEngineProgress = progressBar;
        this.screenStartEngineTitle = textView2;
    }

    public static ScreenStartEngineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenStartEngineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenStartEngineBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_start_engine, viewGroup, z, obj);
    }

    public static ScreenStartEngineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenStartEngineBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenStartEngineBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_start_engine, null, false, obj);
    }

    public static ScreenStartEngineBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenStartEngineBinding bind(View view, Object obj) {
        return (ScreenStartEngineBinding) bind(obj, view, R.layout.screen_start_engine);
    }
}
