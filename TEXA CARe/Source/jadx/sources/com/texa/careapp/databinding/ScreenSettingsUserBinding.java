package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSettingsUserBinding extends ViewDataBinding {
    public final View divTopUserLogout;
    public final EditableDateView editDateViewUserDriverLicense;
    public final EditText editTextUserEmail;
    public final EditText editTextUserFirstName;
    public final EditText editTextUserFiscalCode;
    public final EditText editTextUserLastName;
    public final EditText editTextUserPhoneNumber;
    public final ImageView iconSetUserAddress;
    public final RelativeLayout layoutExpDriverLicense;
    public final RelativeLayout layoutSetUserAddress;
    public final LinearLayout layoutUserLogout;

    protected ScreenSettingsUserBinding(Object obj, View view, int i, View view2, EditableDateView editableDateView, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, ImageView imageView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, LinearLayout linearLayout) {
        super(obj, view, i);
        this.divTopUserLogout = view2;
        this.editDateViewUserDriverLicense = editableDateView;
        this.editTextUserEmail = editText;
        this.editTextUserFirstName = editText2;
        this.editTextUserFiscalCode = editText3;
        this.editTextUserLastName = editText4;
        this.editTextUserPhoneNumber = editText5;
        this.iconSetUserAddress = imageView;
        this.layoutExpDriverLicense = relativeLayout;
        this.layoutSetUserAddress = relativeLayout2;
        this.layoutUserLogout = linearLayout;
    }

    public static ScreenSettingsUserBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSettingsUserBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_user, viewGroup, z, obj);
    }

    public static ScreenSettingsUserBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSettingsUserBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_user, null, false, obj);
    }

    public static ScreenSettingsUserBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsUserBinding bind(View view, Object obj) {
        return (ScreenSettingsUserBinding) bind(obj, view, R.layout.screen_settings_user);
    }
}
