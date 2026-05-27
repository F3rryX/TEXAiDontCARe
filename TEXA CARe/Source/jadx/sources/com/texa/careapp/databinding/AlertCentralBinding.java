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
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AlertCentralBinding extends ViewDataBinding {
    public final RelativeLayout alertCentralBackground;
    public final AppCompatTextView alertCentralCancelRequest;
    public final CircleDisplay alertCentralCountDownView;
    public final LinearLayout alertCentralHeader;
    public final ImageView alertCentralIcon;
    public final ImageView alertCentralIconComplete;
    public final TextView alertCentralMainTitle;
    public final TextView alertCentralTitle;
    public final AppCompatTextView alertMessage;

    protected AlertCentralBinding(Object obj, View view, int i, RelativeLayout relativeLayout, AppCompatTextView appCompatTextView, CircleDisplay circleDisplay, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2) {
        super(obj, view, i);
        this.alertCentralBackground = relativeLayout;
        this.alertCentralCancelRequest = appCompatTextView;
        this.alertCentralCountDownView = circleDisplay;
        this.alertCentralHeader = linearLayout;
        this.alertCentralIcon = imageView;
        this.alertCentralIconComplete = imageView2;
        this.alertCentralMainTitle = textView;
        this.alertCentralTitle = textView2;
        this.alertMessage = appCompatTextView2;
    }

    public static AlertCentralBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertCentralBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (AlertCentralBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.alert_central, viewGroup, z, obj);
    }

    public static AlertCentralBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertCentralBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (AlertCentralBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.alert_central, null, false, obj);
    }

    public static AlertCentralBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AlertCentralBinding bind(View view, Object obj) {
        return (AlertCentralBinding) bind(obj, view, R.layout.alert_central);
    }
}
