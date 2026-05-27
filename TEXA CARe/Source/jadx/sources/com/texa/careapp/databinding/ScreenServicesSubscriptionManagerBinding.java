package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenServicesSubscriptionManagerBinding extends ViewDataBinding {
    public final LinearLayout screenServicesSubscriptionManagerItemContainer;
    public final TextView screenServicesSubscriptionManagerPackageName;
    public final LinearLayout screenServicesSubscriptionManagerPlayStore;
    public final TextView screenServicesSubscriptionManagerSubtitle;
    public final TextView screenServicesSubscriptionManagerTitle;

    protected ScreenServicesSubscriptionManagerBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.screenServicesSubscriptionManagerItemContainer = linearLayout;
        this.screenServicesSubscriptionManagerPackageName = textView;
        this.screenServicesSubscriptionManagerPlayStore = linearLayout2;
        this.screenServicesSubscriptionManagerSubtitle = textView2;
        this.screenServicesSubscriptionManagerTitle = textView3;
    }

    public static ScreenServicesSubscriptionManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenServicesSubscriptionManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenServicesSubscriptionManagerBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_services_subscription_manager, viewGroup, z, obj);
    }

    public static ScreenServicesSubscriptionManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenServicesSubscriptionManagerBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenServicesSubscriptionManagerBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_services_subscription_manager, null, false, obj);
    }

    public static ScreenServicesSubscriptionManagerBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenServicesSubscriptionManagerBinding bind(View view, Object obj) {
        return (ScreenServicesSubscriptionManagerBinding) bind(obj, view, R.layout.screen_services_subscription_manager);
    }
}
