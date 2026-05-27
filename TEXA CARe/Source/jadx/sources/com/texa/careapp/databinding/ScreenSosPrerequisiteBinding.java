package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSosPrerequisiteBinding extends ViewDataBinding {
    public final ScrollView scrollSosPrerequisite;
    public final LinearLayout sosPrerequisiteBt;
    public final ImageView sosPrerequisiteBtImg;
    public final LinearLayout sosPrerequisiteConnection;
    public final ImageView sosPrerequisiteConnectionImg;
    public final TextView sosPrerequisiteDescription;
    public final LinearLayout sosPrerequisiteGps;
    public final ImageView sosPrerequisiteGpsImg;
    public final LinearLayout sosPrerequisiteNetwork;
    public final ImageView sosPrerequisiteNetworkImg;
    public final LinearLayout sosPrerequisitePhoneNumber;
    public final ImageView sosPrerequisitePhoneNumberImg;
    public final LinearLayout sosPrerequisiteTermsofservice;
    public final ImageView sosPrerequisiteTermsofserviceImg;

    protected ScreenSosPrerequisiteBinding(Object obj, View view, int i, ScrollView scrollView, LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, ImageView imageView2, TextView textView, LinearLayout linearLayout3, ImageView imageView3, LinearLayout linearLayout4, ImageView imageView4, LinearLayout linearLayout5, ImageView imageView5, LinearLayout linearLayout6, ImageView imageView6) {
        super(obj, view, i);
        this.scrollSosPrerequisite = scrollView;
        this.sosPrerequisiteBt = linearLayout;
        this.sosPrerequisiteBtImg = imageView;
        this.sosPrerequisiteConnection = linearLayout2;
        this.sosPrerequisiteConnectionImg = imageView2;
        this.sosPrerequisiteDescription = textView;
        this.sosPrerequisiteGps = linearLayout3;
        this.sosPrerequisiteGpsImg = imageView3;
        this.sosPrerequisiteNetwork = linearLayout4;
        this.sosPrerequisiteNetworkImg = imageView4;
        this.sosPrerequisitePhoneNumber = linearLayout5;
        this.sosPrerequisitePhoneNumberImg = imageView5;
        this.sosPrerequisiteTermsofservice = linearLayout6;
        this.sosPrerequisiteTermsofserviceImg = imageView6;
    }

    public static ScreenSosPrerequisiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSosPrerequisiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSosPrerequisiteBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_sos_prerequisite, viewGroup, z, obj);
    }

    public static ScreenSosPrerequisiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSosPrerequisiteBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSosPrerequisiteBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_sos_prerequisite, null, false, obj);
    }

    public static ScreenSosPrerequisiteBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSosPrerequisiteBinding bind(View view, Object obj) {
        return (ScreenSosPrerequisiteBinding) bind(obj, view, R.layout.screen_sos_prerequisite);
    }
}
