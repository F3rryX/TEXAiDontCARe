package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityMechanicBinding extends ViewDataBinding {
    public final LinearLayout availabilityButton;
    public final ImageView availabilityImage;
    public final TextView availabilityText;
    public final LinearLayout informationContainer;
    public final TextView mechanicAddressTextView;
    public final TextView mechanicCityAddressTextView;
    public final TextView mechanicNameTextView;
    public final TextView mechanicNavigationButton;
    public final TextView mechanicOpeningTextView;
    public final LinearLayout phoneMobileButton;
    public final ImageView phoneMobileImage;
    public final TextView phoneMobileText;
    public final RelativeLayout relativeLayoutActivityMechanic;
    public final View toolbarActionbar;
    public final LinearLayout workshopButton;
    public final ImageView workshopImage;
    public final TextView workshopText;

    protected ActivityMechanicBinding(Object obj, View view, int i, LinearLayout linearLayout, ImageView imageView, TextView textView, LinearLayout linearLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, LinearLayout linearLayout3, ImageView imageView2, TextView textView7, RelativeLayout relativeLayout, View view2, LinearLayout linearLayout4, ImageView imageView3, TextView textView8) {
        super(obj, view, i);
        this.availabilityButton = linearLayout;
        this.availabilityImage = imageView;
        this.availabilityText = textView;
        this.informationContainer = linearLayout2;
        this.mechanicAddressTextView = textView2;
        this.mechanicCityAddressTextView = textView3;
        this.mechanicNameTextView = textView4;
        this.mechanicNavigationButton = textView5;
        this.mechanicOpeningTextView = textView6;
        this.phoneMobileButton = linearLayout3;
        this.phoneMobileImage = imageView2;
        this.phoneMobileText = textView7;
        this.relativeLayoutActivityMechanic = relativeLayout;
        this.toolbarActionbar = view2;
        this.workshopButton = linearLayout4;
        this.workshopImage = imageView3;
        this.workshopText = textView8;
    }

    public static ActivityMechanicBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMechanicBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityMechanicBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_mechanic, viewGroup, z, obj);
    }

    public static ActivityMechanicBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMechanicBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityMechanicBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_mechanic, null, false, obj);
    }

    public static ActivityMechanicBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMechanicBinding bind(View view, Object obj) {
        return (ActivityMechanicBinding) bind(obj, view, R.layout.activity_mechanic);
    }
}
