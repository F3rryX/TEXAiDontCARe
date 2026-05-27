package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenCareValidatorBinding extends ViewDataBinding {
    public final RelativeLayout buttonCareValidator;
    public final ImageView buttonCareValidatorArrow;
    public final TextView buttonCareValidatorText;
    public final EditText screenCareValidatorFirst;
    public final EditText screenCareValidatorSecond;
    public final TextView textViewCareAuthenticationError;

    protected ScreenCareValidatorBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ImageView imageView, TextView textView, EditText editText, EditText editText2, TextView textView2) {
        super(obj, view, i);
        this.buttonCareValidator = relativeLayout;
        this.buttonCareValidatorArrow = imageView;
        this.buttonCareValidatorText = textView;
        this.screenCareValidatorFirst = editText;
        this.screenCareValidatorSecond = editText2;
        this.textViewCareAuthenticationError = textView2;
    }

    public static ScreenCareValidatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareValidatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenCareValidatorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_care_validator, viewGroup, z, obj);
    }

    public static ScreenCareValidatorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareValidatorBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenCareValidatorBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_care_validator, null, false, obj);
    }

    public static ScreenCareValidatorBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareValidatorBinding bind(View view, Object obj) {
        return (ScreenCareValidatorBinding) bind(obj, view, R.layout.screen_care_validator);
    }
}
