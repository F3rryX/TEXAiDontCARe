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
public abstract class SettingsCareScreenBinding extends ViewDataBinding {
    public final TextView fontTextView;
    public final TextView fontTextView2;
    public final LinearLayout settingsAccessoryGroup;
    public final TextView settingsAccessoryStatus;
    public final TextView settingsAppVersion;
    public final TextView settingsLibraryVersion;
    public final TextView settingsMainAppLatest;
    public final LinearLayout settingsMainAppLatestGroup;
    public final TextView settingsMainAppVersion;
    public final TextView settingsSerialNumber;
    public final TextView settingsServiceAppLatest;
    public final LinearLayout settingsServiceAppLatestGroup;
    public final TextView settingsServiceAppVersion;
    public final TextView settingsUpdateConfiguation;
    public final TextView settingsUpdateFirmware;

    protected SettingsCareScreenBinding(Object obj, View view, int i, TextView textView, TextView textView2, LinearLayout linearLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6, LinearLayout linearLayout2, TextView textView7, TextView textView8, TextView textView9, LinearLayout linearLayout3, TextView textView10, TextView textView11, TextView textView12) {
        super(obj, view, i);
        this.fontTextView = textView;
        this.fontTextView2 = textView2;
        this.settingsAccessoryGroup = linearLayout;
        this.settingsAccessoryStatus = textView3;
        this.settingsAppVersion = textView4;
        this.settingsLibraryVersion = textView5;
        this.settingsMainAppLatest = textView6;
        this.settingsMainAppLatestGroup = linearLayout2;
        this.settingsMainAppVersion = textView7;
        this.settingsSerialNumber = textView8;
        this.settingsServiceAppLatest = textView9;
        this.settingsServiceAppLatestGroup = linearLayout3;
        this.settingsServiceAppVersion = textView10;
        this.settingsUpdateConfiguation = textView11;
        this.settingsUpdateFirmware = textView12;
    }

    public static SettingsCareScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsCareScreenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SettingsCareScreenBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_care_screen, viewGroup, z, obj);
    }

    public static SettingsCareScreenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsCareScreenBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SettingsCareScreenBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_care_screen, null, false, obj);
    }

    public static SettingsCareScreenBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsCareScreenBinding bind(View view, Object obj) {
        return (SettingsCareScreenBinding) bind(obj, view, R.layout.settings_care_screen);
    }
}
