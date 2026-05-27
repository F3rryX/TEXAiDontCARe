package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogPlateValidationBinding extends ViewDataBinding {
    public final TextView dialogPlateValidationBtnConfirm;
    public final TextView dialogPlateValidationBtnNegative;
    public final TextView dialogPlateValidationDescription;

    protected DialogPlateValidationBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.dialogPlateValidationBtnConfirm = textView;
        this.dialogPlateValidationBtnNegative = textView2;
        this.dialogPlateValidationDescription = textView3;
    }

    public static DialogPlateValidationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPlateValidationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogPlateValidationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_plate_validation, viewGroup, z, obj);
    }

    public static DialogPlateValidationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPlateValidationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogPlateValidationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_plate_validation, null, false, obj);
    }

    public static DialogPlateValidationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPlateValidationBinding bind(View view, Object obj) {
        return (DialogPlateValidationBinding) bind(obj, view, R.layout.dialog_plate_validation);
    }
}
