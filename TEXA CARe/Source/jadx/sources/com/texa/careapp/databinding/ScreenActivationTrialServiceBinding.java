package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenActivationTrialServiceBinding extends ViewDataBinding {
    public final TextView screenActivationTrialServiceBadge;
    public final TextView screenActivationTrialServiceBtn;
    public final TextView screenActivationTrialServiceDescription;
    public final RelativeLayout screenActivationTrialServiceHeader;
    public final TextView serviceDescriptionTitle;
    public final RelativeLayout tosFragmentContainer;

    protected ScreenActivationTrialServiceBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3, RelativeLayout relativeLayout, TextView textView4, RelativeLayout relativeLayout2) {
        super(obj, view, i);
        this.screenActivationTrialServiceBadge = textView;
        this.screenActivationTrialServiceBtn = textView2;
        this.screenActivationTrialServiceDescription = textView3;
        this.screenActivationTrialServiceHeader = relativeLayout;
        this.serviceDescriptionTitle = textView4;
        this.tosFragmentContainer = relativeLayout2;
    }

    public static ScreenActivationTrialServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationTrialServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenActivationTrialServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_trial_service, viewGroup, z, obj);
    }

    public static ScreenActivationTrialServiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationTrialServiceBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenActivationTrialServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_trial_service, null, false, obj);
    }

    public static ScreenActivationTrialServiceBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationTrialServiceBinding bind(View view, Object obj) {
        return (ScreenActivationTrialServiceBinding) bind(obj, view, R.layout.screen_activation_trial_service);
    }
}
