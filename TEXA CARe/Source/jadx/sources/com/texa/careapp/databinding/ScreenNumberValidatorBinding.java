package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenNumberValidatorBinding extends ViewDataBinding {
    public final RelativeLayout buttonPhoneValidator;
    public final EditText prefixPhoneValidator;
    public final EditText signupPhoneValidator;
    public final Spinner spinnerCountryPhoneValidator;
    public final TextView textViewPhoneValidator;
    public final TextView textViewWarningPhoneValidator;
    public final TextView titleSignupSignupPhoneValidator;

    protected ScreenNumberValidatorBinding(Object obj, View view, int i, RelativeLayout relativeLayout, EditText editText, EditText editText2, Spinner spinner, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.buttonPhoneValidator = relativeLayout;
        this.prefixPhoneValidator = editText;
        this.signupPhoneValidator = editText2;
        this.spinnerCountryPhoneValidator = spinner;
        this.textViewPhoneValidator = textView;
        this.textViewWarningPhoneValidator = textView2;
        this.titleSignupSignupPhoneValidator = textView3;
    }

    public static ScreenNumberValidatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenNumberValidatorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_number_validator, viewGroup, z, obj);
    }

    public static ScreenNumberValidatorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenNumberValidatorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_number_validator, null, false, obj);
    }

    public static ScreenNumberValidatorBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorBinding bind(View view, Object obj) {
        return (ScreenNumberValidatorBinding) bind(obj, view, R.layout.screen_number_validator);
    }
}
