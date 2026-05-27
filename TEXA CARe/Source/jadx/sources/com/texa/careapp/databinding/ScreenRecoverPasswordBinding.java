package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenRecoverPasswordBinding extends ViewDataBinding {
    public final EditText emailRecoverPswEditText;
    public final TextView recoverPswButton;
    public final TextView recoverPswTextView;
    public final RelativeLayout screenRecoverPswLinearLayout;
    public final TextView screenSigninEmailLabel;

    protected ScreenRecoverPasswordBinding(Object obj, View view, int i, EditText editText, TextView textView, TextView textView2, RelativeLayout relativeLayout, TextView textView3) {
        super(obj, view, i);
        this.emailRecoverPswEditText = editText;
        this.recoverPswButton = textView;
        this.recoverPswTextView = textView2;
        this.screenRecoverPswLinearLayout = relativeLayout;
        this.screenSigninEmailLabel = textView3;
    }

    public static ScreenRecoverPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenRecoverPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenRecoverPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_recover_password, viewGroup, z, obj);
    }

    public static ScreenRecoverPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenRecoverPasswordBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenRecoverPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_recover_password, null, false, obj);
    }

    public static ScreenRecoverPasswordBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenRecoverPasswordBinding bind(View view, Object obj) {
        return (ScreenRecoverPasswordBinding) bind(obj, view, R.layout.screen_recover_password);
    }
}
