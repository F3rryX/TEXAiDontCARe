package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CareDongleItemBinding extends ViewDataBinding {
    public final LinearLayout careDongleDetails;
    public final ImageView careDongleItemIcon;
    public final AppCompatTextView textViewCareDongleModel;
    public final TextView textViewCareDongleSubtitle;

    protected CareDongleItemBinding(Object obj, View view, int i, LinearLayout linearLayout, ImageView imageView, AppCompatTextView appCompatTextView, TextView textView) {
        super(obj, view, i);
        this.careDongleDetails = linearLayout;
        this.careDongleItemIcon = imageView;
        this.textViewCareDongleModel = appCompatTextView;
        this.textViewCareDongleSubtitle = textView;
    }

    public static CareDongleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CareDongleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CareDongleItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.care_dongle_item, viewGroup, z, obj);
    }

    public static CareDongleItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CareDongleItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CareDongleItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.care_dongle_item, null, false, obj);
    }

    public static CareDongleItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CareDongleItemBinding bind(View view, Object obj) {
        return (CareDongleItemBinding) bind(obj, view, R.layout.care_dongle_item);
    }
}
