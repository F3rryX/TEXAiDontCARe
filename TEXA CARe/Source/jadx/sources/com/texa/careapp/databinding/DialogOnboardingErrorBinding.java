package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogOnboardingErrorBinding extends ViewDataBinding {
    public final TextView dialogOnboardingErrorBtn;
    public final TextView dialogOnboardingErrorText;

    protected DialogOnboardingErrorBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.dialogOnboardingErrorBtn = textView;
        this.dialogOnboardingErrorText = textView2;
    }

    public static DialogOnboardingErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogOnboardingErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DialogOnboardingErrorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_onboarding_error, viewGroup, z, obj);
    }

    public static DialogOnboardingErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogOnboardingErrorBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DialogOnboardingErrorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.dialog_onboarding_error, null, false, obj);
    }

    public static DialogOnboardingErrorBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogOnboardingErrorBinding bind(View view, Object obj) {
        return (DialogOnboardingErrorBinding) bind(obj, view, R.layout.dialog_onboarding_error);
    }
}
