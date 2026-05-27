package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityVehicleFinderBindingImpl extends ActivityVehicleFinderBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;
    private final LinearLayout mboundView1;

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
        sparseIntArray.put(R.id.toolbar_actionbar, 2);
        sparseIntArray.put(R.id.container, 3);
        sparseIntArray.put(R.id.distance_container, 4);
        sparseIntArray.put(R.id.distance, 5);
        sparseIntArray.put(R.id.unit, 6);
        sparseIntArray.put(R.id.distance_road, 7);
        sparseIntArray.put(R.id.unit_road, 8);
        sparseIntArray.put(R.id.bussola, 9);
        sparseIntArray.put(R.id.compass, 10);
        sparseIntArray.put(R.id.timeago_container, 11);
        sparseIntArray.put(R.id.timeago, 12);
        sparseIntArray.put(R.id.address, 13);
        sparseIntArray.put(R.id.address_city, 14);
        sparseIntArray.put(R.id.why_text, 15);
        sparseIntArray.put(R.id.navigator_button, 16);
    }

    public ActivityVehicleFinderBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds));
    }

    private ActivityVehicleFinderBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[13], (TextView) objArr[14], (LinearLayout) objArr[9], (ImageView) objArr[10], (FrameLayout) objArr[3], (TextView) objArr[5], (LinearLayout) objArr[4], (TextView) objArr[7], (RelativeLayout) objArr[16], (TextView) objArr[12], (LinearLayout) objArr[11], (View) objArr[2], (AppCompatTextView) objArr[6], (TextView) objArr[8], (TextView) objArr[15]);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[1];
        this.mboundView1 = linearLayout2;
        linearLayout2.setTag(null);
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
