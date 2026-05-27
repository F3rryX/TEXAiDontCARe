package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityMechanicBindingImpl extends ActivityMechanicBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView1;

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
        sparseIntArray.put(R.id.information_container, 3);
        sparseIntArray.put(R.id.mechanic_name_textView, 4);
        sparseIntArray.put(R.id.mechanic_address_textView, 5);
        sparseIntArray.put(R.id.mechanic_city_address_textView, 6);
        sparseIntArray.put(R.id.mechanic_navigation_button, 7);
        sparseIntArray.put(R.id.mechanic_opening_textView, 8);
        sparseIntArray.put(R.id.workshop_button, 9);
        sparseIntArray.put(R.id.workshop_image, 10);
        sparseIntArray.put(R.id.workshop_text, 11);
        sparseIntArray.put(R.id.availability_button, 12);
        sparseIntArray.put(R.id.availability_image, 13);
        sparseIntArray.put(R.id.availability_text, 14);
        sparseIntArray.put(R.id.phone_mobile_button, 15);
        sparseIntArray.put(R.id.phone_mobile_image, 16);
        sparseIntArray.put(R.id.phone_mobile_text, 17);
    }

    public ActivityMechanicBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 18, sIncludes, sViewsWithIds));
    }

    private ActivityMechanicBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[12], (ImageView) objArr[13], (TextView) objArr[14], (LinearLayout) objArr[3], (TextView) objArr[5], (TextView) objArr[6], (TextView) objArr[4], (TextView) objArr[7], (TextView) objArr[8], (LinearLayout) objArr[15], (ImageView) objArr[16], (TextView) objArr[17], (RelativeLayout) objArr[0], (View) objArr[2], (LinearLayout) objArr[9], (ImageView) objArr[10], (TextView) objArr[11]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[1];
        this.mboundView1 = relativeLayout;
        relativeLayout.setTag(null);
        this.relativeLayoutActivityMechanic.setTag(null);
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
