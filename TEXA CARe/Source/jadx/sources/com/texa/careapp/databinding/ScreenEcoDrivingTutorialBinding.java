package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingTutorialBinding extends ViewDataBinding {
    public final AppCompatTextView screenEcoDrivingTutorialDescription;
    public final ImageView screenEcoDrivingTutorialImage;
    public final TextView screenEcoDrivingTutorialTitle;

    protected ScreenEcoDrivingTutorialBinding(Object obj, View view, int i, AppCompatTextView appCompatTextView, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.screenEcoDrivingTutorialDescription = appCompatTextView;
        this.screenEcoDrivingTutorialImage = imageView;
        this.screenEcoDrivingTutorialTitle = textView;
    }

    public static ScreenEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingTutorialBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_tutorial, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTutorialBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingTutorialBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_tutorial, null, false, obj);
    }

    public static ScreenEcoDrivingTutorialBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTutorialBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingTutorialBinding) bind(obj, view, R.layout.screen_eco_driving_tutorial);
    }
}
