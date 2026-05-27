package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingHintBinding extends ViewDataBinding {
    public final RelativeLayout screenEcoDrivingHintBackground;
    public final LinearLayout screenEcoDrivingHintBottomLay;
    public final ImageView screenEcoDrivingHintClose;
    public final TextView screenEcoDrivingHintDescription;
    public final ImageView screenEcoDrivingHintIcon;
    public final TextView screenEcoDrivingHintInfo;
    public final AppCompatTextView screenEcoDrivingHintTitle;

    protected ScreenEcoDrivingHintBinding(Object obj, View view, int i, RelativeLayout relativeLayout, LinearLayout linearLayout, ImageView imageView, TextView textView, ImageView imageView2, TextView textView2, AppCompatTextView appCompatTextView) {
        super(obj, view, i);
        this.screenEcoDrivingHintBackground = relativeLayout;
        this.screenEcoDrivingHintBottomLay = linearLayout;
        this.screenEcoDrivingHintClose = imageView;
        this.screenEcoDrivingHintDescription = textView;
        this.screenEcoDrivingHintIcon = imageView2;
        this.screenEcoDrivingHintInfo = textView2;
        this.screenEcoDrivingHintTitle = appCompatTextView;
    }

    public static ScreenEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingHintBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_hint, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingHintBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingHintBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_hint, null, false, obj);
    }

    public static ScreenEcoDrivingHintBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingHintBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingHintBinding) bind(obj, view, R.layout.screen_eco_driving_hint);
    }
}
