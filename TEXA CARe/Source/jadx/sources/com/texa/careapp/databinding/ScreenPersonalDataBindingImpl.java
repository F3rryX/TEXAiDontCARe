package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenPersonalDataBindingImpl extends ScreenPersonalDataBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.screen_signup_personal_data_name_input, 1);
        sparseIntArray.put(R.id.screen_signup_personal_data_name_edit_text, 2);
        sparseIntArray.put(R.id.screen_signup_personal_data_surname_label, 3);
        sparseIntArray.put(R.id.screen_signup_personal_data_surname_input, 4);
        sparseIntArray.put(R.id.screen_signup_personal_data_surname_edit_text, 5);
        sparseIntArray.put(R.id.screen_signup_personal_data_phone_number_input, 6);
        sparseIntArray.put(R.id.screen_signup_personal_data_phone_number_edit_text, 7);
        sparseIntArray.put(R.id.screen_signup_personal_data_birthday_input, 8);
        sparseIntArray.put(R.id.screen_signup_personal_data_birthday_edit_text, 9);
        sparseIntArray.put(R.id.screen_signup_personal_data_complete_registration, 10);
        sparseIntArray.put(R.id.screen_signup_personal_data_complete_registration_text, 11);
    }

    public ScreenPersonalDataBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds));
    }

    private ScreenPersonalDataBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (EditText) objArr[9], (TextInputLayout) objArr[8], (RelativeLayout) objArr[10], (TextView) objArr[11], (EditText) objArr[2], (TextInputLayout) objArr[1], (EditText) objArr[7], (TextInputLayout) objArr[6], (EditText) objArr[5], (TextInputLayout) objArr[4], (TextView) objArr[3]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0L;
        }
    }
}
