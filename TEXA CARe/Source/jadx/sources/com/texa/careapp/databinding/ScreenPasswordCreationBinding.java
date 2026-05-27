package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenPasswordCreationBinding extends ViewDataBinding {
    public final RelativeLayout screenSignupPasswordCreationNextLayout;
    public final EditText screenSignupPasswordCreationPasswordConfirmEditText;
    public final TextInputLayout screenSignupPasswordCreationPasswordConfirmInput;
    public final EditText screenSignupPasswordCreationPasswordEditText;
    public final TextInputLayout screenSignupPasswordCreationPasswordInput;

    protected ScreenPasswordCreationBinding(Object obj, View view, int i, RelativeLayout relativeLayout, EditText editText, TextInputLayout textInputLayout, EditText editText2, TextInputLayout textInputLayout2) {
        super(obj, view, i);
        this.screenSignupPasswordCreationNextLayout = relativeLayout;
        this.screenSignupPasswordCreationPasswordConfirmEditText = editText;
        this.screenSignupPasswordCreationPasswordConfirmInput = textInputLayout;
        this.screenSignupPasswordCreationPasswordEditText = editText2;
        this.screenSignupPasswordCreationPasswordInput = textInputLayout2;
    }

    public static ScreenPasswordCreationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPasswordCreationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenPasswordCreationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_password_creation, viewGroup, z, obj);
    }

    public static ScreenPasswordCreationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPasswordCreationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenPasswordCreationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_password_creation, null, false, obj);
    }

    public static ScreenPasswordCreationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPasswordCreationBinding bind(View view, Object obj) {
        return (ScreenPasswordCreationBinding) bind(obj, view, R.layout.screen_password_creation);
    }
}
