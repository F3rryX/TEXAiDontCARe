package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsCareScreenBindingImpl extends SettingsCareScreenBinding {
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
        sparseIntArray.put(R.id.settings_app_version, 1);
        sparseIntArray.put(R.id.fontTextView, 2);
        sparseIntArray.put(R.id.settings_library_version, 3);
        sparseIntArray.put(R.id.settings_serial_number, 4);
        sparseIntArray.put(R.id.settings_accessory_group, 5);
        sparseIntArray.put(R.id.fontTextView2, 6);
        sparseIntArray.put(R.id.settings_accessory_status, 7);
        sparseIntArray.put(R.id.settings_main_app_version, 8);
        sparseIntArray.put(R.id.settings_service_app_version, 9);
        sparseIntArray.put(R.id.settings_main_app_latest_group, 10);
        sparseIntArray.put(R.id.settings_main_app_latest, 11);
        sparseIntArray.put(R.id.settings_service_app_latest_group, 12);
        sparseIntArray.put(R.id.settings_service_app_latest, 13);
        sparseIntArray.put(R.id.settings_update_firmware, 14);
        sparseIntArray.put(R.id.settings_update_configuation, 15);
    }

    public SettingsCareScreenBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 16, sIncludes, sViewsWithIds));
    }

    private SettingsCareScreenBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (TextView) objArr[6], (LinearLayout) objArr[5], (TextView) objArr[7], (TextView) objArr[1], (TextView) objArr[3], (TextView) objArr[11], (LinearLayout) objArr[10], (TextView) objArr[8], (TextView) objArr[4], (TextView) objArr[13], (LinearLayout) objArr[12], (TextView) objArr[9], (TextView) objArr[15], (TextView) objArr[14]);
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
