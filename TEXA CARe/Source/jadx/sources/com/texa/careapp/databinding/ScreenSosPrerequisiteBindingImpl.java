package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenSosPrerequisiteBindingImpl extends ScreenSosPrerequisiteBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;

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
        sparseIntArray.put(R.id.scroll_sos_prerequisite, 1);
        sparseIntArray.put(R.id.sos_prerequisite_description, 2);
        sparseIntArray.put(R.id.sos_prerequisite_bt, 3);
        sparseIntArray.put(R.id.sos_prerequisite_bt_img, 4);
        sparseIntArray.put(R.id.sos_prerequisite_phone_number, 5);
        sparseIntArray.put(R.id.sos_prerequisite_phone_number_img, 6);
        sparseIntArray.put(R.id.sos_prerequisite_termsofservice, 7);
        sparseIntArray.put(R.id.sos_prerequisite_termsofservice_img, 8);
        sparseIntArray.put(R.id.sos_prerequisite_network, 9);
        sparseIntArray.put(R.id.sos_prerequisite_network_img, 10);
        sparseIntArray.put(R.id.sos_prerequisite_gps, 11);
        sparseIntArray.put(R.id.sos_prerequisite_gps_img, 12);
        sparseIntArray.put(R.id.sos_prerequisite_connection, 13);
        sparseIntArray.put(R.id.sos_prerequisite_connection_img, 14);
    }

    public ScreenSosPrerequisiteBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 15, sIncludes, sViewsWithIds));
    }

    private ScreenSosPrerequisiteBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ScrollView) objArr[1], (LinearLayout) objArr[3], (ImageView) objArr[4], (LinearLayout) objArr[13], (ImageView) objArr[14], (TextView) objArr[2], (LinearLayout) objArr[11], (ImageView) objArr[12], (LinearLayout) objArr[9], (ImageView) objArr[10], (LinearLayout) objArr[5], (ImageView) objArr[6], (LinearLayout) objArr[7], (ImageView) objArr[8]);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
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
