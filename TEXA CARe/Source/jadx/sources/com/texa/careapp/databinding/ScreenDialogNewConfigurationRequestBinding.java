package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogNewConfigurationRequestBinding extends ViewDataBinding {
    public final RelativeLayout requestNewCareConfigDescriptionDialogTitleLay;
    public final ScrollView requestNewCareConfigScrollView;
    public final TextView requestNewConfigurationDialogBtnCreate;
    public final RelativeLayout requestNewConfigurationDialogBtnCreateLayout;
    public final TextView requestNewConfigurationDialogDescription;
    public final TextView requestNewConfigurationDialogTitle;
    public final LinearLayout requestNewConfigurationDialogVehicles;

    protected ScreenDialogNewConfigurationRequestBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ScrollView scrollView, TextView textView, RelativeLayout relativeLayout2, TextView textView2, TextView textView3, LinearLayout linearLayout) {
        super(obj, view, i);
        this.requestNewCareConfigDescriptionDialogTitleLay = relativeLayout;
        this.requestNewCareConfigScrollView = scrollView;
        this.requestNewConfigurationDialogBtnCreate = textView;
        this.requestNewConfigurationDialogBtnCreateLayout = relativeLayout2;
        this.requestNewConfigurationDialogDescription = textView2;
        this.requestNewConfigurationDialogTitle = textView3;
        this.requestNewConfigurationDialogVehicles = linearLayout;
    }

    public static ScreenDialogNewConfigurationRequestBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogNewConfigurationRequestBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogNewConfigurationRequestBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_new_configuration_request, viewGroup, z, obj);
    }

    public static ScreenDialogNewConfigurationRequestBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogNewConfigurationRequestBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogNewConfigurationRequestBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_new_configuration_request, null, false, obj);
    }

    public static ScreenDialogNewConfigurationRequestBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogNewConfigurationRequestBinding bind(View view, Object obj) {
        return (ScreenDialogNewConfigurationRequestBinding) bind(obj, view, R.layout.screen_dialog_new_configuration_request);
    }
}
