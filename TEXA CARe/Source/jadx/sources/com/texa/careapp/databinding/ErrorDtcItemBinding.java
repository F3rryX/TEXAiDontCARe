package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ErrorDtcItemBinding extends ViewDataBinding {
    public final ImageView errorDtcImgLamp;
    public final TextView errorDtcInfoTextview;
    public final RelativeTimeTextView errorDtcLastUpdateTextview;
    public final View errorDtcStatusLine;

    protected ErrorDtcItemBinding(Object obj, View view, int i, ImageView imageView, TextView textView, RelativeTimeTextView relativeTimeTextView, View view2) {
        super(obj, view, i);
        this.errorDtcImgLamp = imageView;
        this.errorDtcInfoTextview = textView;
        this.errorDtcLastUpdateTextview = relativeTimeTextView;
        this.errorDtcStatusLine = view2;
    }

    public static ErrorDtcItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ErrorDtcItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.error_dtc_item, viewGroup, z, obj);
    }

    public static ErrorDtcItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ErrorDtcItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.error_dtc_item, null, false, obj);
    }

    public static ErrorDtcItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcItemBinding bind(View view, Object obj) {
        return (ErrorDtcItemBinding) bind(obj, view, R.layout.error_dtc_item);
    }
}
