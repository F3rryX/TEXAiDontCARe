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
public abstract class ActivityAutomaticSosBinding extends ViewDataBinding {
    public final RelativeLayout activityAutomaticSosBackground;
    public final AppCompatTextView activityAutomaticSosCancelRequest;
    public final CircleDisplay activityAutomaticSosCountDownView;
    public final LinearLayout activityAutomaticSosHeader;
    public final ImageView activityAutomaticSosIcon;
    public final ImageView activityAutomaticSosIconComplete;
    public final AppCompatTextView activityAutomaticSosMessage;
    public final AppCompatTextView activityAutomaticSosRequestNow;
    public final TextView activityAutomaticSosTitle;
    public final TextView alertCentralMainTitle;

    protected ActivityAutomaticSosBinding(Object obj, View view, int i, RelativeLayout relativeLayout, AppCompatTextView appCompatTextView, CircleDisplay circleDisplay, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.activityAutomaticSosBackground = relativeLayout;
        this.activityAutomaticSosCancelRequest = appCompatTextView;
        this.activityAutomaticSosCountDownView = circleDisplay;
        this.activityAutomaticSosHeader = linearLayout;
        this.activityAutomaticSosIcon = imageView;
        this.activityAutomaticSosIconComplete = imageView2;
        this.activityAutomaticSosMessage = appCompatTextView2;
        this.activityAutomaticSosRequestNow = appCompatTextView3;
        this.activityAutomaticSosTitle = textView;
        this.alertCentralMainTitle = textView2;
    }

    public static ActivityAutomaticSosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityAutomaticSosBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityAutomaticSosBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_automatic_sos, viewGroup, z, obj);
    }

    public static ActivityAutomaticSosBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityAutomaticSosBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityAutomaticSosBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_automatic_sos, null, false, obj);
    }

    public static ActivityAutomaticSosBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityAutomaticSosBinding bind(View view, Object obj) {
        return (ActivityAutomaticSosBinding) bind(obj, view, R.layout.activity_automatic_sos);
    }
}
