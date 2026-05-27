package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenActivationLightServiceBinding extends ViewDataBinding {
    public final RelativeLayout screenActivationLightPurchaseButton;
    public final TextView screenActivationLightPurchaseInfo;
    public final TextView screenActivationLightServiceBadge;
    public final TextView screenActivationLightServicePurchase;
    public final LinearLayout screenActivationLightServicePurchaseLay;
    public final TextView screenActivationLightServicePurchaseLight;
    public final TextView screenActivationLightServiceTitle;
    public final RelativeLayout tosFragmentContainer;

    protected ScreenActivationLightServiceBinding(Object obj, View view, int i, RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3, LinearLayout linearLayout, TextView textView4, TextView textView5, RelativeLayout relativeLayout2) {
        super(obj, view, i);
        this.screenActivationLightPurchaseButton = relativeLayout;
        this.screenActivationLightPurchaseInfo = textView;
        this.screenActivationLightServiceBadge = textView2;
        this.screenActivationLightServicePurchase = textView3;
        this.screenActivationLightServicePurchaseLay = linearLayout;
        this.screenActivationLightServicePurchaseLight = textView4;
        this.screenActivationLightServiceTitle = textView5;
        this.tosFragmentContainer = relativeLayout2;
    }

    public static ScreenActivationLightServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationLightServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenActivationLightServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_light_service, viewGroup, z, obj);
    }

    public static ScreenActivationLightServiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationLightServiceBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenActivationLightServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_light_service, null, false, obj);
    }

    public static ScreenActivationLightServiceBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationLightServiceBinding bind(View view, Object obj) {
        return (ScreenActivationLightServiceBinding) bind(obj, view, R.layout.screen_activation_light_service);
    }
}
