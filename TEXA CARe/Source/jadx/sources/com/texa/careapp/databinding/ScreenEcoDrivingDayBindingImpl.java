package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenEcoDrivingDayBindingImpl extends ScreenEcoDrivingDayBinding {
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
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day1, 1);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day1, 2);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day1, 3);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day1, 4);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day2, 5);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day2, 6);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day2, 7);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day2, 8);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day3, 9);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day3, 10);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day3, 11);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day3, 12);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day4, 13);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day4, 14);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day4, 15);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day4, 16);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day5, 17);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day5, 18);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day5, 19);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day5, 20);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day6, 21);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day6, 22);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day6, 23);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day6, 24);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_layout_day7, 25);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_score_day7, 26);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_day7, 27);
        sparseIntArray.put(R.id.scree_eco_driving_day_item_date_day7, 28);
    }

    public ScreenEcoDrivingDayBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 29, sIncludes, sViewsWithIds));
    }

    private ScreenEcoDrivingDayBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[4], (TextView) objArr[8], (TextView) objArr[12], (TextView) objArr[16], (TextView) objArr[20], (TextView) objArr[24], (TextView) objArr[28], (TextView) objArr[3], (TextView) objArr[7], (TextView) objArr[11], (TextView) objArr[15], (TextView) objArr[19], (TextView) objArr[23], (TextView) objArr[27], (LinearLayout) objArr[1], (LinearLayout) objArr[5], (LinearLayout) objArr[9], (LinearLayout) objArr[13], (LinearLayout) objArr[17], (LinearLayout) objArr[21], (LinearLayout) objArr[25], (TextView) objArr[2], (TextView) objArr[6], (TextView) objArr[10], (TextView) objArr[14], (TextView) objArr[18], (TextView) objArr[22], (TextView) objArr[26]);
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
