package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogAdvancedDiagnosisBinding extends ViewDataBinding {
    public final TextView dialogAdvancedDiagnosisButton;
    public final TextView dialogAdvancedDiagnosisText;

    protected DialogAdvancedDiagnosisBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.dialogAdvancedDiagnosisButton = textView;
        this.dialogAdvancedDiagnosisText = textView2;
    }

    public static DialogAdvancedDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAdvancedDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogAdvancedDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_advanced_diagnosis, viewGroup, z, obj);
    }

    public static DialogAdvancedDiagnosisBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAdvancedDiagnosisBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogAdvancedDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_advanced_diagnosis, null, false, obj);
    }

    public static DialogAdvancedDiagnosisBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAdvancedDiagnosisBinding bind(View view, Object obj) {
        return (DialogAdvancedDiagnosisBinding) bind(obj, view, R.layout.dialog_advanced_diagnosis);
    }
}
