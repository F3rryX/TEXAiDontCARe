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
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenTyresNewInstallBinding extends ViewDataBinding {
    public final TextView buttonTyresNewInstallConfirm;
    public final RelativeLayout containerNewInstallConfirm;
    public final EditText editTextExpTyresFittingNewInstall;
    public final TextInputLayout floatingEditTextExpTyresFittingNewInstall;
    public final LinearLayout layoutTyresType;
    public final Spinner tyresTypeSpinnerNewInstall;

    protected ScreenTyresNewInstallBinding(Object obj, View view, int i, TextView textView, RelativeLayout relativeLayout, EditText editText, TextInputLayout textInputLayout, LinearLayout linearLayout, Spinner spinner) {
        super(obj, view, i);
        this.buttonTyresNewInstallConfirm = textView;
        this.containerNewInstallConfirm = relativeLayout;
        this.editTextExpTyresFittingNewInstall = editText;
        this.floatingEditTextExpTyresFittingNewInstall = textInputLayout;
        this.layoutTyresType = linearLayout;
        this.tyresTypeSpinnerNewInstall = spinner;
    }

    public static ScreenTyresNewInstallBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresNewInstallBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenTyresNewInstallBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_new_install, viewGroup, z, obj);
    }

    public static ScreenTyresNewInstallBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresNewInstallBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenTyresNewInstallBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_tyres_new_install, null, false, obj);
    }

    public static ScreenTyresNewInstallBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenTyresNewInstallBinding bind(View view, Object obj) {
        return (ScreenTyresNewInstallBinding) bind(obj, view, R.layout.screen_tyres_new_install);
    }
}
