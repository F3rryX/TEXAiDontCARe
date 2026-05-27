package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenActivationServiceContactBinding extends ViewDataBinding {
    public final LinearLayout screenActivationServiceContactAdd;
    public final TextView screenActivationServiceContactConfirm;
    public final LinearLayout screenActivationServiceContactFirstContact;
    public final TextView screenActivationServiceContactFirstContactIcon;
    public final TextView screenActivationServiceContactFirstContactName;
    public final TextView screenActivationServiceContactFirstContactNumber;
    public final Spinner screenActivationServiceContactFirstContactNumberPrefix;
    public final LinearLayout screenActivationServiceContactSecondContact;
    public final TextView screenActivationServiceContactSecondContactIcon;
    public final TextView screenActivationServiceContactSecondContactName;
    public final TextView screenActivationServiceContactSecondContactNumber;
    public final Spinner screenActivationServiceContactSecondContactNumberPrefix;
    public final TextView screenActivationServiceContactSubtitle;
    public final TextView screenActivationServiceContactTitle;

    protected ScreenActivationServiceContactBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2, TextView textView3, TextView textView4, Spinner spinner, LinearLayout linearLayout3, TextView textView5, TextView textView6, TextView textView7, Spinner spinner2, TextView textView8, TextView textView9) {
        super(obj, view, i);
        this.screenActivationServiceContactAdd = linearLayout;
        this.screenActivationServiceContactConfirm = textView;
        this.screenActivationServiceContactFirstContact = linearLayout2;
        this.screenActivationServiceContactFirstContactIcon = textView2;
        this.screenActivationServiceContactFirstContactName = textView3;
        this.screenActivationServiceContactFirstContactNumber = textView4;
        this.screenActivationServiceContactFirstContactNumberPrefix = spinner;
        this.screenActivationServiceContactSecondContact = linearLayout3;
        this.screenActivationServiceContactSecondContactIcon = textView5;
        this.screenActivationServiceContactSecondContactName = textView6;
        this.screenActivationServiceContactSecondContactNumber = textView7;
        this.screenActivationServiceContactSecondContactNumberPrefix = spinner2;
        this.screenActivationServiceContactSubtitle = textView8;
        this.screenActivationServiceContactTitle = textView9;
    }

    public static ScreenActivationServiceContactBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceContactBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenActivationServiceContactBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_service_contact, viewGroup, z, obj);
    }

    public static ScreenActivationServiceContactBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceContactBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenActivationServiceContactBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_service_contact, null, false, obj);
    }

    public static ScreenActivationServiceContactBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceContactBinding bind(View view, Object obj) {
        return (ScreenActivationServiceContactBinding) bind(obj, view, R.layout.screen_activation_service_contact);
    }
}
