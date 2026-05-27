package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public class NavigationDrawerFragmentBindingImpl extends NavigationDrawerFragmentBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

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
        sparseIntArray.put(R.id.care_logo, 1);
        sparseIntArray.put(R.id.drawer_main_menu, 2);
        sparseIntArray.put(R.id.drawer_item_dashboard, 3);
        sparseIntArray.put(R.id.drawer_item_vehicle_name, 4);
        sparseIntArray.put(R.id.drawer_item_vehicle_status, 5);
        sparseIntArray.put(R.id.drawer_item_schedule, 6);
        sparseIntArray.put(R.id.drawer_item_extende_controls, 7);
        sparseIntArray.put(R.id.drawer_item_vehicle_finder, 8);
        sparseIntArray.put(R.id.drawer_item_eco_driving, 9);
        sparseIntArray.put(R.id.drawer_services, 10);
        sparseIntArray.put(R.id.drawer_services_icon, 11);
        sparseIntArray.put(R.id.drawer_settings, 12);
        sparseIntArray.put(R.id.last_odb_read, 13);
    }

    public NavigationDrawerFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds));
    }

    private NavigationDrawerFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (TextView) objArr[3], (TextView) objArr[9], (TextView) objArr[7], (TextView) objArr[6], (TextView) objArr[8], (TextView) objArr[4], (TextView) objArr[5], (ScrollView) objArr[2], (LinearLayout) objArr[10], (ImageView) objArr[11], (LinearLayout) objArr[12], (RelativeLayout) objArr[0], (RelativeTimeTextView) objArr[13]);
        this.mDirtyFlags = -1L;
        this.googleDrawer.setTag(null);
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
