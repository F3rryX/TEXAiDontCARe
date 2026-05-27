package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSigninLayoutBinding extends ViewDataBinding {
    public final TextView screenSigninDescription;
    public final EditText screenSigninEmailEditText;
    public final TextInputLayout screenSigninEmailInput;
    public final TextView screenSigninEmailLabel;
    public final TextView screenSigninLoginButton;
    public final TextView screenSigninLoginLabel;
    public final EditText screenSigninPasswordEditText;
    public final TextInputLayout screenSigninPasswordInput;
    public final TextView screenSigninPasswordLabel;
    public final TextView screenSigninRegisterLabel;

    protected ScreenSigninLayoutBinding(Object obj, View view, int i, TextView textView, EditText editText, TextInputLayout textInputLayout, TextView textView2, TextView textView3, TextView textView4, EditText editText2, TextInputLayout textInputLayout2, TextView textView5, TextView textView6) {
        super(obj, view, i);
        this.screenSigninDescription = textView;
        this.screenSigninEmailEditText = editText;
        this.screenSigninEmailInput = textInputLayout;
        this.screenSigninEmailLabel = textView2;
        this.screenSigninLoginButton = textView3;
        this.screenSigninLoginLabel = textView4;
        this.screenSigninPasswordEditText = editText2;
        this.screenSigninPasswordInput = textInputLayout2;
        this.screenSigninPasswordLabel = textView5;
        this.screenSigninRegisterLabel = textView6;
    }

    public static ScreenSigninLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSigninLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSigninLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_signin_layout, viewGroup, z, obj);
    }

    public static ScreenSigninLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSigninLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSigninLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_signin_layout, null, false, obj);
    }

    public static ScreenSigninLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSigninLayoutBinding bind(View view, Object obj) {
        return (ScreenSigninLayoutBinding) bind(obj, view, R.layout.screen_signin_layout);
    }
}
