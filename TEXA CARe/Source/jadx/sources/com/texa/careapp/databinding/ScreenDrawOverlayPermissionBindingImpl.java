package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenDrawOverlayPermissionBindingImpl extends ScreenDrawOverlayPermissionBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(6);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"permission_location_step", "permission_location_step"}, new int[]{1, 2}, new int[]{R.layout.permission_location_step, R.layout.permission_location_step});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.fragment_permission_title, 3);
        sparseIntArray.put(R.id.textView7, 4);
        sparseIntArray.put(R.id.fragment_permission_btn, 5);
    }

    public ScreenDrawOverlayPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private ScreenDrawOverlayPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TextView) objArr[5], (TextView) objArr[3], (PermissionLocationStepBinding) objArr[1], (PermissionLocationStepBinding) objArr[2], (TextView) objArr[4]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        setContainedBinding(this.step1);
        setContainedBinding(this.step2);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        this.step1.invalidateAll();
        this.step2.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return this.step1.hasPendingBindings() || this.step2.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.step1.setLifecycleOwner(lifecycleOwner);
        this.step2.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return onChangeStep1((PermissionLocationStepBinding) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return onChangeStep2((PermissionLocationStepBinding) obj, i2);
    }

    private boolean onChangeStep1(PermissionLocationStepBinding permissionLocationStepBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeStep2(PermissionLocationStepBinding permissionLocationStepBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        if ((j & 4) != 0) {
            this.step1.setStepDescription(getRoot().getResources().getString(R.string.permission_overlay_first_step));
            this.step1.setStepImage(AppCompatResources.getDrawable(getRoot().getContext(), com.texa.careapp.R.drawable.permission_overlay_app_list));
            this.step1.setStepIndex(1);
            this.step2.setStepDescription(getRoot().getResources().getString(R.string.permission_overlay_second_step));
            this.step2.setStepImage(AppCompatResources.getDrawable(getRoot().getContext(), com.texa.careapp.R.drawable.permission_overlay_grant));
            this.step2.setStepIndex(2);
        }
        executeBindingsOn(this.step1);
        executeBindingsOn(this.step2);
    }
}
