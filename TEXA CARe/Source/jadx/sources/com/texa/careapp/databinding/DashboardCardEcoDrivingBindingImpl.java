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
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardCardEcoDrivingBindingImpl extends DashboardCardEcoDrivingBinding {
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
        sparseIntArray.put(R.id.dashboard_card_eco_driving_header, 1);
        sparseIntArray.put(R.id.dashboard_card_eco_driving_icon, 2);
        sparseIntArray.put(R.id.dashboard_card_eco_driving_title, 3);
        sparseIntArray.put(R.id.dashboard_card_eco_driving_score, 4);
        sparseIntArray.put(R.id.dashboard_card_eco_driving_description, 5);
        sparseIntArray.put(R.id.dashboard_card_eco_driving_button, 6);
    }

    public DashboardCardEcoDrivingBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private DashboardCardEcoDrivingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CardView) objArr[0], (TextView) objArr[6], (AppCompatTextView) objArr[5], (RelativeLayout) objArr[1], (ImageView) objArr[2], (CircleDisplay) objArr[4], (AppCompatTextView) objArr[3]);
        this.mDirtyFlags = -1L;
        this.dashboardCardEcoDriving.setTag(null);
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
