package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.views.DottedLoadingIndicatorView;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenDongleDiscoveryBindingImpl extends ScreenDongleDiscoveryBinding {
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
        sparseIntArray.put(R.id.screen_dongle_discovery_main_lay, 1);
        sparseIntArray.put(R.id.screen_dongle_discovery_title, 2);
        sparseIntArray.put(R.id.screen_dongle_discovery_description, 3);
        sparseIntArray.put(R.id.screen_dongle_discovery_list_title, 4);
        sparseIntArray.put(R.id.discovery_dongle_list, 5);
        sparseIntArray.put(R.id.screen_dongle_discovery_empty_layout, 6);
        sparseIntArray.put(R.id.screen_dongle_discovery_image_view, 7);
        sparseIntArray.put(R.id.dongle_search_progress_layout, 8);
        sparseIntArray.put(R.id.dongle_search_progress, 9);
        sparseIntArray.put(R.id.dongle_search_progress_icon, 10);
        sparseIntArray.put(R.id.dongle_discovery_search_layout, 11);
        sparseIntArray.put(R.id.screen_dongle_discovery_no_devices_label, 12);
        sparseIntArray.put(R.id.screen_dongle_discovery_no_devices_description, 13);
        sparseIntArray.put(R.id.screen_dongle_discovery_start, 14);
        sparseIntArray.put(R.id.screen_dongle_discovery_btn_start_image, 15);
        sparseIntArray.put(R.id.screen_dongle_discovery_btn_start, 16);
    }

    public ScreenDongleDiscoveryBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds));
    }

    private ScreenDongleDiscoveryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[5], (RelativeLayout) objArr[11], (DottedLoadingIndicatorView) objArr[9], (ImageView) objArr[10], (RelativeLayout) objArr[8], (CoordinatorLayout) objArr[0], (TextView) objArr[16], (ImageView) objArr[15], (TextView) objArr[3], (RelativeLayout) objArr[6], (ImageView) objArr[7], (TextView) objArr[4], (RelativeLayout) objArr[1], (TextView) objArr[13], (TextView) objArr[12], (RelativeLayout) objArr[14], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.parentCoordinator.setTag(null);
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
