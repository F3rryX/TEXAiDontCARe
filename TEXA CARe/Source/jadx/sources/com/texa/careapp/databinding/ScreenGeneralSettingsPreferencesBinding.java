package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenGeneralSettingsPreferencesBinding extends ViewDataBinding {
    public final RelativeLayout buttonAdditionalPhoneImpactDetection;
    public final RelativeLayout buttonEcoDrivingActivation;
    public final LinearLayout buttonEcoDrivingProfile;
    public final RelativeLayout buttonEnableNotification;
    public final RelativeLayout buttonSoundOnConnection;
    public final RadioButton radioEcoDrivingProfileEco;
    public final RadioButton radioEcoDrivingProfileNormal;
    public final RadioButton radioEcoDrivingProfileSport;
    public final RadioGroup radioGroupProfileEcoDriving;
    public final SwitchCompat toggleButtonAdditionalPhoneImpactDetection;
    public final SwitchCompat toggleButtonEcoDrivingActivation;
    public final SwitchCompat toggleButtonEnableNotification;
    public final SwitchCompat toggleButtonSoundOnConnection;

    protected ScreenGeneralSettingsPreferencesBinding(Object obj, View view, int i, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, LinearLayout linearLayout, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioGroup radioGroup, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4) {
        super(obj, view, i);
        this.buttonAdditionalPhoneImpactDetection = relativeLayout;
        this.buttonEcoDrivingActivation = relativeLayout2;
        this.buttonEcoDrivingProfile = linearLayout;
        this.buttonEnableNotification = relativeLayout3;
        this.buttonSoundOnConnection = relativeLayout4;
        this.radioEcoDrivingProfileEco = radioButton;
        this.radioEcoDrivingProfileNormal = radioButton2;
        this.radioEcoDrivingProfileSport = radioButton3;
        this.radioGroupProfileEcoDriving = radioGroup;
        this.toggleButtonAdditionalPhoneImpactDetection = switchCompat;
        this.toggleButtonEcoDrivingActivation = switchCompat2;
        this.toggleButtonEnableNotification = switchCompat3;
        this.toggleButtonSoundOnConnection = switchCompat4;
    }

    public static ScreenGeneralSettingsPreferencesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenGeneralSettingsPreferencesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenGeneralSettingsPreferencesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_general_settings_preferences, viewGroup, z, obj);
    }

    public static ScreenGeneralSettingsPreferencesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenGeneralSettingsPreferencesBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenGeneralSettingsPreferencesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_general_settings_preferences, null, false, obj);
    }

    public static ScreenGeneralSettingsPreferencesBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenGeneralSettingsPreferencesBinding bind(View view, Object obj) {
        return (ScreenGeneralSettingsPreferencesBinding) bind(obj, view, R.layout.screen_general_settings_preferences);
    }
}
