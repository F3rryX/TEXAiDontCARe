package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.CircleDisplay;

/* JADX INFO: loaded from: classes2.dex */
public class AlertCentralBindingImpl extends AlertCentralBinding {
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
        sparseIntArray.put(R.id.alert_central_header, 1);
        sparseIntArray.put(R.id.alert_central_count_down_view, 2);
        sparseIntArray.put(R.id.alert_central_title, 3);
        sparseIntArray.put(R.id.alert_central_main_title, 4);
        sparseIntArray.put(R.id.alert_central_icon, 5);
        sparseIntArray.put(R.id.alert_message, 6);
        sparseIntArray.put(R.id.alert_central_cancel_request, 7);
        sparseIntArray.put(R.id.alert_central_icon_complete, 8);
    }

    public AlertCentralBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private AlertCentralBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[0], (AppCompatTextView) objArr[7], (CircleDisplay) objArr[2], (LinearLayout) objArr[1], (ImageView) objArr[5], (ImageView) objArr[8], (TextView) objArr[4], (TextView) objArr[3], (AppCompatTextView) objArr[6]);
        this.mDirtyFlags = -1L;
        this.alertCentralBackground.setTag(null);
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
