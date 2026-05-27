package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogActivationServiceSelectContactNumberBinding extends ViewDataBinding {
    public final LinearLayout dialogActivationServiceSelectContactNumberLay;

    protected DialogActivationServiceSelectContactNumberBinding(Object obj, View view, int i, LinearLayout linearLayout) {
        super(obj, view, i);
        this.dialogActivationServiceSelectContactNumberLay = linearLayout;
    }

    public static DialogActivationServiceSelectContactNumberBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceSelectContactNumberBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogActivationServiceSelectContactNumberBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_select_contact_number, viewGroup, z, obj);
    }

    public static DialogActivationServiceSelectContactNumberBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceSelectContactNumberBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogActivationServiceSelectContactNumberBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_select_contact_number, null, false, obj);
    }

    public static DialogActivationServiceSelectContactNumberBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceSelectContactNumberBinding bind(View view, Object obj) {
        return (DialogActivationServiceSelectContactNumberBinding) bind(obj, view, R.layout.dialog_activation_service_select_contact_number);
    }
}
