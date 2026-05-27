package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogCountryItemBinding extends ViewDataBinding {
    public final TextView screenDialogCountryItem;

    protected ScreenDialogCountryItemBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.screenDialogCountryItem = textView;
    }

    public static ScreenDialogCountryItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogCountryItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_country_item, viewGroup, z, obj);
    }

    public static ScreenDialogCountryItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogCountryItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_country_item, null, false, obj);
    }

    public static ScreenDialogCountryItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryItemBinding bind(View view, Object obj) {
        return (ScreenDialogCountryItemBinding) bind(obj, view, R.layout.screen_dialog_country_item);
    }
}
