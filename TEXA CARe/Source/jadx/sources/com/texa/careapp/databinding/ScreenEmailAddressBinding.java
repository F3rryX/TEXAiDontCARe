package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEmailAddressBinding extends ViewDataBinding {
    public final TextView screenEmailAddressAlreadyRegistered;
    public final RelativeLayout screenEmailAddressNextLayout;
    public final EditText screenSignupEmailAddressEmailEditText;
    public final TextInputLayout screenSignupEmailAddressEmailInput;
    public final TextView screenSignupEmailPrivacyPolicyLabel;
    public final TextView screenSignupEmailTermsOfServiceLabel;

    protected ScreenEmailAddressBinding(Object obj, View view, int i, TextView textView, RelativeLayout relativeLayout, EditText editText, TextInputLayout textInputLayout, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.screenEmailAddressAlreadyRegistered = textView;
        this.screenEmailAddressNextLayout = relativeLayout;
        this.screenSignupEmailAddressEmailEditText = editText;
        this.screenSignupEmailAddressEmailInput = textInputLayout;
        this.screenSignupEmailPrivacyPolicyLabel = textView2;
        this.screenSignupEmailTermsOfServiceLabel = textView3;
    }

    public static ScreenEmailAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEmailAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEmailAddressBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_email_address, viewGroup, z, obj);
    }

    public static ScreenEmailAddressBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEmailAddressBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEmailAddressBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_email_address, null, false, obj);
    }

    public static ScreenEmailAddressBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEmailAddressBinding bind(View view, Object obj) {
        return (ScreenEmailAddressBinding) bind(obj, view, R.layout.screen_email_address);
    }
}
