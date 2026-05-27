package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenResetExpireScheduleBinding extends ViewDataBinding {
    public final EditableDateView editDateViewNewExp;
    public final EditText editTextViewNewExp;
    public final TextInputLayout floatabelLabelNewExpOdo;
    public final LinearLayout layoutExpiredData;
    public final LinearLayout layoutNewExpDate;
    public final LinearLayout layoutNewExpOdo;
    public final LinearLayout newExpConfirmButton;
    public final TextView oldExpValue;
    public final TextView textNewExp;

    protected ScreenResetExpireScheduleBinding(Object obj, View view, int i, EditableDateView editableDateView, EditText editText, TextInputLayout textInputLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.editDateViewNewExp = editableDateView;
        this.editTextViewNewExp = editText;
        this.floatabelLabelNewExpOdo = textInputLayout;
        this.layoutExpiredData = linearLayout;
        this.layoutNewExpDate = linearLayout2;
        this.layoutNewExpOdo = linearLayout3;
        this.newExpConfirmButton = linearLayout4;
        this.oldExpValue = textView;
        this.textNewExp = textView2;
    }

    public static ScreenResetExpireScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenResetExpireScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenResetExpireScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_reset_expire_schedule, viewGroup, z, obj);
    }

    public static ScreenResetExpireScheduleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenResetExpireScheduleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenResetExpireScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_reset_expire_schedule, null, false, obj);
    }

    public static ScreenResetExpireScheduleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenResetExpireScheduleBinding bind(View view, Object obj) {
        return (ScreenResetExpireScheduleBinding) bind(obj, view, R.layout.screen_reset_expire_schedule);
    }
}
