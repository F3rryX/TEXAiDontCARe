package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogActivationServiceDeleteContactBinding extends ViewDataBinding {
    public final TextView dialogActivationServiceDeleteContactConfirm;
    public final TextView dialogActivationServiceDeleteContactDescription;
    public final TextView dialogActivationServiceDeleteContactUndo;

    protected DialogActivationServiceDeleteContactBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.dialogActivationServiceDeleteContactConfirm = textView;
        this.dialogActivationServiceDeleteContactDescription = textView2;
        this.dialogActivationServiceDeleteContactUndo = textView3;
    }

    public static DialogActivationServiceDeleteContactBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceDeleteContactBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogActivationServiceDeleteContactBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_delete_contact, viewGroup, z, obj);
    }

    public static DialogActivationServiceDeleteContactBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceDeleteContactBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogActivationServiceDeleteContactBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_activation_service_delete_contact, null, false, obj);
    }

    public static DialogActivationServiceDeleteContactBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogActivationServiceDeleteContactBinding bind(View view, Object obj) {
        return (DialogActivationServiceDeleteContactBinding) bind(obj, view, R.layout.dialog_activation_service_delete_contact);
    }
}
