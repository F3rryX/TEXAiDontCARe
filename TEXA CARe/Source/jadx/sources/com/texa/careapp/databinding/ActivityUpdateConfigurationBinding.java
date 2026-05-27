package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityUpdateConfigurationBinding extends ViewDataBinding {
    public final LinearLayout activityUpdateProgressLayout;
    public final ImageView careImage;
    public final AppCompatTextView careUpdateMessage1;
    public final AppCompatTextView careUpdateMessage2;
    public final TextView careUpdateMessagePrimary;
    public final TextView careUpdateMessageSecondary;
    public final TextView careUpdateMessageSuccess;
    public final ProgressBar careUpdateProgress;
    public final TextView careUpdateSkip;
    public final TextView careUpdateTitle;
    public final TextView confirm;

    protected ActivityUpdateConfigurationBinding(Object obj, View view, int i, LinearLayout linearLayout, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, TextView textView2, TextView textView3, ProgressBar progressBar, TextView textView4, TextView textView5, TextView textView6) {
        super(obj, view, i);
        this.activityUpdateProgressLayout = linearLayout;
        this.careImage = imageView;
        this.careUpdateMessage1 = appCompatTextView;
        this.careUpdateMessage2 = appCompatTextView2;
        this.careUpdateMessagePrimary = textView;
        this.careUpdateMessageSecondary = textView2;
        this.careUpdateMessageSuccess = textView3;
        this.careUpdateProgress = progressBar;
        this.careUpdateSkip = textView4;
        this.careUpdateTitle = textView5;
        this.confirm = textView6;
    }

    public static ActivityUpdateConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityUpdateConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityUpdateConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_update_configuration, viewGroup, z, obj);
    }

    public static ActivityUpdateConfigurationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityUpdateConfigurationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityUpdateConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_update_configuration, null, false, obj);
    }

    public static ActivityUpdateConfigurationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityUpdateConfigurationBinding bind(View view, Object obj) {
        return (ActivityUpdateConfigurationBinding) bind(obj, view, R.layout.activity_update_configuration);
    }
}
