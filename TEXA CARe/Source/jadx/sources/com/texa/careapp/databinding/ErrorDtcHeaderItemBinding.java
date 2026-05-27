package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ErrorDtcHeaderItemBinding extends ViewDataBinding {
    public final TextView titleHeader;

    protected ErrorDtcHeaderItemBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.titleHeader = textView;
    }

    public static ErrorDtcHeaderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcHeaderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ErrorDtcHeaderItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.error_dtc_header_item, viewGroup, z, obj);
    }

    public static ErrorDtcHeaderItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcHeaderItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ErrorDtcHeaderItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.error_dtc_header_item, null, false, obj);
    }

    public static ErrorDtcHeaderItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ErrorDtcHeaderItemBinding bind(View view, Object obj) {
        return (ErrorDtcHeaderItemBinding) bind(obj, view, R.layout.error_dtc_header_item);
    }
}
