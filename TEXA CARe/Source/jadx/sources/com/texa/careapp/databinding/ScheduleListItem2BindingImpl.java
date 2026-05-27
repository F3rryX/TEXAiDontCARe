package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleListItem2BindingImpl extends ScheduleListItem2Binding {
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
        sparseIntArray.put(R.id.relativeLayout, 1);
        sparseIntArray.put(R.id.schedule_title, 2);
        sparseIntArray.put(R.id.schedule_description, 3);
        sparseIntArray.put(R.id.refresh_button, 4);
        sparseIntArray.put(R.id.delete_button, 5);
        sparseIntArray.put(R.id.undeletable_button, 6);
        sparseIntArray.put(R.id.schedule_expired_date, 7);
        sparseIntArray.put(R.id.schedule_list_circle_background, 8);
        sparseIntArray.put(R.id.between_text, 9);
        sparseIntArray.put(R.id.schedule_day, 10);
        sparseIntArray.put(R.id.schedule_month, 11);
    }

    public ScheduleListItem2BindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds));
    }

    private ScheduleListItem2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[9], (RelativeLayout) objArr[0], (LinearLayout) objArr[5], (LinearLayout) objArr[4], (RelativeLayout) objArr[1], (AppCompatTextView) objArr[10], (TextView) objArr[3], (TextView) objArr[7], (LinearLayout) objArr[8], (AppCompatTextView) objArr[11], (AppCompatTextView) objArr[2], (LinearLayout) objArr[6]);
        this.mDirtyFlags = -1L;
        this.cardView.setTag(null);
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
