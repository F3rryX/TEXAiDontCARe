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
public class ScreenEmailAddressBindingImpl extends ScreenEmailAddressBinding {
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
        sparseIntArray.put(R.id.screen_signup_email_address_email_input, 3);
        sparseIntArray.put(R.id.screen_signup_email_address_email_edit_text, 4);
        sparseIntArray.put(R.id.screen_email_address_already_registered, 5);
        sparseIntArray.put(R.id.screen_email_address_next_layout, 6);
    }

    public ScreenEmailAddressBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private ScreenEmailAddressBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[5], (RelativeLayout) objArr[6], (EditText) objArr[4], (TextInputLayout) objArr[3], (TextView) objArr[2], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        this.screenSignupEmailPrivacyPolicyLabel.setTag(null);
        this.screenSignupEmailTermsOfServiceLabel.setTag(null);
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
            TextViewBindingAdapter.setText(this.screenSignupEmailPrivacyPolicyLabel, Html.fromHtml(this.screenSignupEmailPrivacyPolicyLabel.getResources().getString(R.string.signup_email_address_privacy)));
            TextViewBindingAdapter.setText(this.screenSignupEmailTermsOfServiceLabel, Html.fromHtml(this.screenSignupEmailTermsOfServiceLabel.getResources().getString(R.string.signup_email_address_terms)));
        }
    }
}
