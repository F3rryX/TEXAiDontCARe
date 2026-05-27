package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EditabledateLayoutBinding extends ViewDataBinding {
    public final TextView editabledateValue;

    protected EditabledateLayoutBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.editabledateValue = textView;
    }

    public static EditabledateLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditabledateLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (EditabledateLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.editabledate_layout, viewGroup, z, obj);
    }

    public static EditabledateLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditabledateLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (EditabledateLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.editabledate_layout, null, false, obj);
    }

    public static EditabledateLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditabledateLayoutBinding bind(View view, Object obj) {
        return (EditabledateLayoutBinding) bind(obj, view, R.layout.editabledate_layout);
    }
}
