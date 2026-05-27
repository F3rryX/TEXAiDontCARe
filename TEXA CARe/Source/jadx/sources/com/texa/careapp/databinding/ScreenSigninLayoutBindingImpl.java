package com.texa.careapp.databinding;

import android.text.Html;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenSigninLayoutBindingImpl extends ScreenSigninLayoutBinding {
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
        sparseIntArray.put(R.id.screen_signin_login_label, 2);
        sparseIntArray.put(R.id.screen_signin_email_label, 3);
        sparseIntArray.put(R.id.screen_signin_email_input, 4);
        sparseIntArray.put(R.id.screen_signin_email_edit_text, 5);
        sparseIntArray.put(R.id.screen_signin_password_label, 6);
        sparseIntArray.put(R.id.screen_signin_password_input, 7);
        sparseIntArray.put(R.id.screen_signin_password_edit_text, 8);
        sparseIntArray.put(R.id.screen_signin_register_label, 9);
        sparseIntArray.put(R.id.screen_signin_login_button, 10);
    }

    public ScreenSigninLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds));
    }

    private ScreenSigninLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (EditText) objArr[5], (TextInputLayout) objArr[4], (TextView) objArr[3], (TextView) objArr[10], (TextView) objArr[2], (EditText) objArr[8], (TextInputLayout) objArr[7], (TextView) objArr[6], (TextView) objArr[9]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        this.screenSigninDescription.setTag(null);
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
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        if ((j & 1) != 0) {
            TextViewBindingAdapter.setText(this.screenSigninDescription, Html.fromHtml(this.screenSigninDescription.getResources().getString(R.string.signin_description)));
        }
    }
}
