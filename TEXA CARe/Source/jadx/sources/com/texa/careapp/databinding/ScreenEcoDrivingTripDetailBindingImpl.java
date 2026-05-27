package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.texa.care.R;
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenEcoDrivingTripDetailBindingImpl extends ScreenEcoDrivingTripDetailBinding {
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
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_locations, 1);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_list, 2);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_header, 3);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_distance, 4);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_score, 5);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_duration, 6);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_hint, 7);
        sparseIntArray.put(R.id.screen_eco_driving_trip_detail_hint_text, 8);
        sparseIntArray.put(R.id.eco_driving_trip_detail_scroll_to_bottom, 9);
    }

    public ScreenEcoDrivingTripDetailBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds));
    }

    private ScreenEcoDrivingTripDetailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FloatingActionButton) objArr[9], (TextView) objArr[4], (TextView) objArr[6], (RelativeLayout) objArr[3], (LinearLayout) objArr[7], (TextView) objArr[8], (RecyclerView) objArr[2], (TextView) objArr[1], (CircleDisplay) objArr[5]);
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
