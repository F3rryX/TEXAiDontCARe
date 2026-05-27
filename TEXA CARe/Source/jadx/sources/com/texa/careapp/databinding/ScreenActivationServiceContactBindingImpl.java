package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenActivationServiceContactBindingImpl extends ScreenActivationServiceContactBinding {
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
        sparseIntArray.put(R.id.screen_activation_service_contact_title, 1);
        sparseIntArray.put(R.id.screen_activation_service_contact_subtitle, 2);
        sparseIntArray.put(R.id.screen_activation_service_contact_first_contact, 3);
        sparseIntArray.put(R.id.screen_activation_service_contact_first_contact_icon, 4);
        sparseIntArray.put(R.id.screen_activation_service_contact_first_contact_name, 5);
        sparseIntArray.put(R.id.screen_activation_service_contact_first_contact_number_prefix, 6);
        sparseIntArray.put(R.id.screen_activation_service_contact_first_contact_number, 7);
        sparseIntArray.put(R.id.screen_activation_service_contact_second_contact, 8);
        sparseIntArray.put(R.id.screen_activation_service_contact_second_contact_icon, 9);
        sparseIntArray.put(R.id.screen_activation_service_contact_second_contact_name, 10);
        sparseIntArray.put(R.id.screen_activation_service_contact_second_contact_number_prefix, 11);
        sparseIntArray.put(R.id.screen_activation_service_contact_second_contact_number, 12);
        sparseIntArray.put(R.id.screen_activation_service_contact_add, 13);
        sparseIntArray.put(R.id.screen_activation_service_contact_confirm, 14);
    }

    public ScreenActivationServiceContactBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 15, sIncludes, sViewsWithIds));
    }

    private ScreenActivationServiceContactBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[13], (TextView) objArr[14], (LinearLayout) objArr[3], (TextView) objArr[4], (TextView) objArr[5], (TextView) objArr[7], (Spinner) objArr[6], (LinearLayout) objArr[8], (TextView) objArr[9], (TextView) objArr[10], (TextView) objArr[12], (Spinner) objArr[11], (TextView) objArr[2], (TextView) objArr[1]);
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
