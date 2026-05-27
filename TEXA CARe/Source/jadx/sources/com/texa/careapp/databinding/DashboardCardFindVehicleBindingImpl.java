package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardCardFindVehicleBindingImpl extends DashboardCardFindVehicleBinding {
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
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_header, 1);
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_icon, 2);
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_city, 3);
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_address, 4);
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_description, 5);
        sparseIntArray.put(R.id.dashboard_card_find_vehicle_map_container, 6);
    }

    public DashboardCardFindVehicleBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private DashboardCardFindVehicleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[4], (CardView) objArr[0], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[5], (RelativeLayout) objArr[1], (ImageView) objArr[2], (RelativeLayout) objArr[6]);
        this.mDirtyFlags = -1L;
        this.dashboardCardFindVehicleCard.setTag(null);
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
