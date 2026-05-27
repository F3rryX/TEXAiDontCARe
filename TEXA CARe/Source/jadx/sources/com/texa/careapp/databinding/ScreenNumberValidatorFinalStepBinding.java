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
public abstract class ScreenNumberValidatorFinalStepBinding extends ViewDataBinding {
    public final TextView confirmPhoneValidationFinalStep;
    public final EditText phoneCodeValidatorEditText;
    public final RelativeLayout signupCodePhoneValidator;
    public final TextView textViewPhoneValidatorFinalStep;

    protected ScreenNumberValidatorFinalStepBinding(Object obj, View view, int i, TextView textView, EditText editText, RelativeLayout relativeLayout, TextView textView2) {
        super(obj, view, i);
        this.confirmPhoneValidationFinalStep = textView;
        this.phoneCodeValidatorEditText = editText;
        this.signupCodePhoneValidator = relativeLayout;
        this.textViewPhoneValidatorFinalStep = textView2;
    }

    public static ScreenNumberValidatorFinalStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorFinalStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenNumberValidatorFinalStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_number_validator_final_step, viewGroup, z, obj);
    }

    public static ScreenNumberValidatorFinalStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorFinalStepBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenNumberValidatorFinalStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_number_validator_final_step, null, false, obj);
    }

    public static ScreenNumberValidatorFinalStepBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenNumberValidatorFinalStepBinding bind(View view, Object obj) {
        return (ScreenNumberValidatorFinalStepBinding) bind(obj, view, R.layout.screen_number_validator_final_step);
    }
}
