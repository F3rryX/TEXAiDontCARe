package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenActivationLightServiceBindingImpl extends ScreenActivationLightServiceBinding {
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
        sparseIntArray.put(R.id.screen_activation_light_service_title, 1);
        sparseIntArray.put(R.id.screen_activation_light_service_purchase_lay, 2);
        sparseIntArray.put(R.id.screen_activation_light_service_purchase_light, 3);
        sparseIntArray.put(R.id.screen_activation_light_purchase_button, 4);
        sparseIntArray.put(R.id.screen_activation_light_service_purchase, 5);
        sparseIntArray.put(R.id.screen_activation_light_service_badge, 6);
        sparseIntArray.put(R.id.screen_activation_light_purchase_info, 7);
    }

    public ScreenActivationLightServiceBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds));
    }

    private ScreenActivationLightServiceBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[4], (TextView) objArr[7], (TextView) objArr[6], (TextView) objArr[5], (LinearLayout) objArr[2], (TextView) objArr[3], (TextView) objArr[1], (RelativeLayout) objArr[0]);
        this.mDirtyFlags = -1L;
        this.tosFragmentContainer.setTag(null);
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
