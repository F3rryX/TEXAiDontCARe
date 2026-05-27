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
public abstract class ScreenPersonalDataBinding extends ViewDataBinding {
    public final EditText screenSignupPersonalDataBirthdayEditText;
    public final TextInputLayout screenSignupPersonalDataBirthdayInput;
    public final RelativeLayout screenSignupPersonalDataCompleteRegistration;
    public final TextView screenSignupPersonalDataCompleteRegistrationText;
    public final EditText screenSignupPersonalDataNameEditText;
    public final TextInputLayout screenSignupPersonalDataNameInput;
    public final EditText screenSignupPersonalDataPhoneNumberEditText;
    public final TextInputLayout screenSignupPersonalDataPhoneNumberInput;
    public final EditText screenSignupPersonalDataSurnameEditText;
    public final TextInputLayout screenSignupPersonalDataSurnameInput;
    public final TextView screenSignupPersonalDataSurnameLabel;

    protected ScreenPersonalDataBinding(Object obj, View view, int i, EditText editText, TextInputLayout textInputLayout, RelativeLayout relativeLayout, TextView textView, EditText editText2, TextInputLayout textInputLayout2, EditText editText3, TextInputLayout textInputLayout3, EditText editText4, TextInputLayout textInputLayout4, TextView textView2) {
        super(obj, view, i);
        this.screenSignupPersonalDataBirthdayEditText = editText;
        this.screenSignupPersonalDataBirthdayInput = textInputLayout;
        this.screenSignupPersonalDataCompleteRegistration = relativeLayout;
        this.screenSignupPersonalDataCompleteRegistrationText = textView;
        this.screenSignupPersonalDataNameEditText = editText2;
        this.screenSignupPersonalDataNameInput = textInputLayout2;
        this.screenSignupPersonalDataPhoneNumberEditText = editText3;
        this.screenSignupPersonalDataPhoneNumberInput = textInputLayout3;
        this.screenSignupPersonalDataSurnameEditText = editText4;
        this.screenSignupPersonalDataSurnameInput = textInputLayout4;
        this.screenSignupPersonalDataSurnameLabel = textView2;
    }

    public static ScreenPersonalDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPersonalDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenPersonalDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_personal_data, viewGroup, z, obj);
    }

    public static ScreenPersonalDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPersonalDataBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenPersonalDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_personal_data, null, false, obj);
    }

    public static ScreenPersonalDataBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPersonalDataBinding bind(View view, Object obj) {
        return (ScreenPersonalDataBinding) bind(obj, view, R.layout.screen_personal_data);
    }
}
