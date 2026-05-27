package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardCardParametersBindingImpl extends DashboardCardParametersBinding {
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
        sparseIntArray.put(R.id.dashboard_card_parameters_header, 1);
        sparseIntArray.put(R.id.dashboard_card_parameters_icon, 2);
        sparseIntArray.put(R.id.constraintLayout, 3);
        sparseIntArray.put(R.id.dashboard_card_parameters_title, 4);
        sparseIntArray.put(R.id.appCompatTextView, 5);
        sparseIntArray.put(R.id.dashboard_card_parameters_selector, 6);
        sparseIntArray.put(R.id.constraintLayout2, 7);
        sparseIntArray.put(R.id.dashboard_card_parameters_chart, 8);
        sparseIntArray.put(R.id.dashboard_card_parameters_no_data_chart, 9);
        sparseIntArray.put(R.id.dashboard_card_parameters_value, 10);
    }

    public DashboardCardParametersBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds));
    }

    private DashboardCardParametersBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatTextView) objArr[5], (ConstraintLayout) objArr[3], (ConstraintLayout) objArr[7], (CardView) objArr[0], (LineChart) objArr[8], (ConstraintLayout) objArr[1], (ImageView) objArr[2], (AppCompatTextView) objArr[9], (ImageView) objArr[6], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[10]);
        this.mDirtyFlags = -1L;
        this.dashboardCardParametersCard.setTag(null);
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
