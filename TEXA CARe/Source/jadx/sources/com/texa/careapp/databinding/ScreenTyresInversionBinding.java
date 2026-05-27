package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenTyresInversionBinding extends ViewDataBinding {
    public final TextView buttonTyresInversionConfirm;
    public final RelativeLayout containerInversionConfirm;
    public final EditText editTextExpTyresSwapInversion;
    public final LinearLayout layoutTyresType;
    public final Spinner tyresTypeSpinnerInversion;

    protected ScreenTyresInversionBinding(Object obj, View view, int i, TextView textView, RelativeLayout relativeLayout, EditText editText, LinearLayout linearLayout, Spinner spinner) {
        super(obj, view, i);
        this.buttonTyresInversionConfirm = textView;
        this.containerInversionConfirm = relativeLayout;
        this.editTextExpTyresSwapInversion = editText;
        this.layoutTyresType = linearLayout;
        this.tyresTypeSpinnerInversion = spinner;
    }

    public static ScreenTyresInversionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresInversionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenTyresInversionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_inversion, viewGroup, z, obj);
    }

    public static ScreenTyresInversionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresInversionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenTyresInversionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_inversion, null, false, obj);
    }

    public static ScreenTyresInversionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresInversionBinding bind(View view, Object obj) {
        return (ScreenTyresInversionBinding) bind(obj, view, R.layout.screen_tyres_inversion);
    }
}
