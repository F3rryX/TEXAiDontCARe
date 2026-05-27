package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityCareOnboardingConfigurationBinding extends ViewDataBinding {
    public final ImageView activityUpdateBackBtn;
    public final LinearLayout activityUpdateButtonLayout;
    public final TextView activityUpdateConfirm;
    public final EditText activityUpdateCountryEditText;
    public final TextInputLayout activityUpdateCountryInput;
    public final RelativeLayout activityUpdateHeader;
    public final EditText activityUpdateKilometersEditText;
    public final TextInputLayout activityUpdateKilometersInput;
    public final TextView activityUpdateKilometersLabel;
    public final TextView activityUpdateMessagePrimary;
    public final TextView activityUpdateMessageSecondary;
    public final TextView activityUpdateMessageSuccess;
    public final TextView activityUpdateNationLabel;
    public final ProgressBar activityUpdateProgress;
    public final LinearLayout activityUpdateProgressLayout;
    public final EditText activityUpdateRegistrationDateEditText;
    public final TextInputLayout activityUpdateRegistrationDateInput;
    public final TextView activityUpdateRegistrationDateLabel;
    public final TextView activityUpdateSkip;
    public final LinearLayout activityUpdateStatusContainer;
    public final TextView textHint;

    protected ActivityCareOnboardingConfigurationBinding(Object obj, View view, int i, ImageView imageView, LinearLayout linearLayout, TextView textView, EditText editText, TextInputLayout textInputLayout, RelativeLayout relativeLayout, EditText editText2, TextInputLayout textInputLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, ProgressBar progressBar, LinearLayout linearLayout2, EditText editText3, TextInputLayout textInputLayout3, TextView textView7, TextView textView8, LinearLayout linearLayout3, TextView textView9) {
        super(obj, view, i);
        this.activityUpdateBackBtn = imageView;
        this.activityUpdateButtonLayout = linearLayout;
        this.activityUpdateConfirm = textView;
        this.activityUpdateCountryEditText = editText;
        this.activityUpdateCountryInput = textInputLayout;
        this.activityUpdateHeader = relativeLayout;
        this.activityUpdateKilometersEditText = editText2;
        this.activityUpdateKilometersInput = textInputLayout2;
        this.activityUpdateKilometersLabel = textView2;
        this.activityUpdateMessagePrimary = textView3;
        this.activityUpdateMessageSecondary = textView4;
        this.activityUpdateMessageSuccess = textView5;
        this.activityUpdateNationLabel = textView6;
        this.activityUpdateProgress = progressBar;
        this.activityUpdateProgressLayout = linearLayout2;
        this.activityUpdateRegistrationDateEditText = editText3;
        this.activityUpdateRegistrationDateInput = textInputLayout3;
        this.activityUpdateRegistrationDateLabel = textView7;
        this.activityUpdateSkip = textView8;
        this.activityUpdateStatusContainer = linearLayout3;
        this.textHint = textView9;
    }

    public static ActivityCareOnboardingConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityCareOnboardingConfigurationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityCareOnboardingConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_care_onboarding_configuration, viewGroup, z, obj);
    }

    public static ActivityCareOnboardingConfigurationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityCareOnboardingConfigurationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityCareOnboardingConfigurationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_care_onboarding_configuration, null, false, obj);
    }

    public static ActivityCareOnboardingConfigurationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityCareOnboardingConfigurationBinding bind(View view, Object obj) {
        return (ActivityCareOnboardingConfigurationBinding) bind(obj, view, R.layout.activity_care_onboarding_configuration);
    }
}
