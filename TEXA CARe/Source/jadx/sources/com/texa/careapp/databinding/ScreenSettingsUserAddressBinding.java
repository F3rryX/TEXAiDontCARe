package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSettingsUserAddressBinding extends ViewDataBinding {
    public final EditText editTextUserAddress;
    public final EditText editTextUserCap;
    public final EditText editTextUserCity;
    public final EditText editTextUserCivicNumber;
    public final EditText editTextUserProvince;
    public final Spinner spinnerSetUserCountry;

    protected ScreenSettingsUserAddressBinding(Object obj, View view, int i, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, Spinner spinner) {
        super(obj, view, i);
        this.editTextUserAddress = editText;
        this.editTextUserCap = editText2;
        this.editTextUserCity = editText3;
        this.editTextUserCivicNumber = editText4;
        this.editTextUserProvince = editText5;
        this.spinnerSetUserCountry = spinner;
    }

    public static ScreenSettingsUserAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserAddressBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSettingsUserAddressBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_user_address, viewGroup, z, obj);
    }

    public static ScreenSettingsUserAddressBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserAddressBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSettingsUserAddressBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_user_address, null, false, obj);
    }

    public static ScreenSettingsUserAddressBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserAddressBinding bind(View view, Object obj) {
        return (ScreenSettingsUserAddressBinding) bind(obj, view, R.layout.screen_settings_user_address);
    }
}
