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
public abstract class ScreenActivationPlusServiceBinding extends ViewDataBinding {
    public final TextView screenActivationPlusServiceBadge;
    public final TextView screenActivationPlusServiceDescription;
    public final RelativeLayout screenActivationPlusServiceHeader;
    public final TextView screenActivationPlusServicePurchase;
    public final LinearLayout screenActivationPlusServicePurchaseLay;
    public final TextView screenActivationPlusServicePurchaseLight;
    public final TextView screenActivationPlusServicePurchaseLightInfo;
    public final TextView serviceDescriptionTitle;
    public final RelativeLayout tosFragmentContainer;

    protected ScreenActivationPlusServiceBinding(Object obj, View view, int i, TextView textView, TextView textView2, RelativeLayout relativeLayout, TextView textView3, LinearLayout linearLayout, TextView textView4, TextView textView5, TextView textView6, RelativeLayout relativeLayout2) {
        super(obj, view, i);
        this.screenActivationPlusServiceBadge = textView;
        this.screenActivationPlusServiceDescription = textView2;
        this.screenActivationPlusServiceHeader = relativeLayout;
        this.screenActivationPlusServicePurchase = textView3;
        this.screenActivationPlusServicePurchaseLay = linearLayout;
        this.screenActivationPlusServicePurchaseLight = textView4;
        this.screenActivationPlusServicePurchaseLightInfo = textView5;
        this.serviceDescriptionTitle = textView6;
        this.tosFragmentContainer = relativeLayout2;
    }

    public static ScreenActivationPlusServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationPlusServiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenActivationPlusServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_plus_service, viewGroup, z, obj);
    }

    public static ScreenActivationPlusServiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationPlusServiceBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenActivationPlusServiceBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_plus_service, null, false, obj);
    }

    public static ScreenActivationPlusServiceBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationPlusServiceBinding bind(View view, Object obj) {
        return (ScreenActivationPlusServiceBinding) bind(obj, view, R.layout.screen_activation_plus_service);
    }
}
