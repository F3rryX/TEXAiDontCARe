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
import com.texa.careapp.views.ObservableWebView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenTermOfConditionsServicesBinding extends ViewDataBinding {
    public final RelativeLayout container;
    public final ProgressBar progressBarFragmentTermOfConditions;
    public final RelativeLayout tosButton;
    public final TextView tosButtonDescription;
    public final ImageView tosButtonImage;
    public final ObservableWebView tosScrollView;

    protected ScreenTermOfConditionsServicesBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, TextView textView, ImageView imageView, ObservableWebView observableWebView) {
        super(obj, view, i);
        this.container = relativeLayout;
        this.progressBarFragmentTermOfConditions = progressBar;
        this.tosButton = relativeLayout2;
        this.tosButtonDescription = textView;
        this.tosButtonImage = imageView;
        this.tosScrollView = observableWebView;
    }

    public static ScreenTermOfConditionsServicesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTermOfConditionsServicesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenTermOfConditionsServicesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_term_of_conditions_services, viewGroup, z, obj);
    }

    public static ScreenTermOfConditionsServicesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTermOfConditionsServicesBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenTermOfConditionsServicesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_term_of_conditions_services, null, false, obj);
    }

    public static ScreenTermOfConditionsServicesBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTermOfConditionsServicesBinding bind(View view, Object obj) {
        return (ScreenTermOfConditionsServicesBinding) bind(obj, view, R.layout.screen_term_of_conditions_services);
    }
}
