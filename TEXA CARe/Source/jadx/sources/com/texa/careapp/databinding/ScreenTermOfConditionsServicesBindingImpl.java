package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.ObservableWebView;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenTermOfConditionsServicesBindingImpl extends ScreenTermOfConditionsServicesBinding {
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
        sparseIntArray.put(R.id.tos_scroll_view, 1);
        sparseIntArray.put(R.id.tos_button, 2);
        sparseIntArray.put(R.id.tos_button_description, 3);
        sparseIntArray.put(R.id.tos_button_image, 4);
        sparseIntArray.put(R.id.progressBar_fragment_term_of_conditions, 5);
    }

    public ScreenTermOfConditionsServicesBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private ScreenTermOfConditionsServicesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[0], (ProgressBar) objArr[5], (RelativeLayout) objArr[2], (TextView) objArr[3], (ImageView) objArr[4], (ObservableWebView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.container.setTag(null);
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
