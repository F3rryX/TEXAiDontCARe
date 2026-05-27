package com.texa.careapp.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionLocationStepBindingImpl extends PermissionLocationStepBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final TextView mboundView3;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public PermissionLocationStepBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private PermissionLocationStepBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.imStepDescription.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.mboundView3 = textView;
        textView.setTag(null);
        this.tvStepDescription.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8L;
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
    public boolean setVariable(int i, Object obj) {
        if (6 == i) {
            setStepIndex(((Integer) obj).intValue());
        } else if (4 == i) {
            setStepDescription((String) obj);
        } else {
            if (5 != i) {
                return false;
            }
            setStepImage((Drawable) obj);
        }
        return true;
    }

    @Override // com.texa.careapp.databinding.PermissionLocationStepBinding
    public void setStepIndex(int i) {
        this.mStepIndex = i;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    @Override // com.texa.careapp.databinding.PermissionLocationStepBinding
    public void setStepDescription(String str) {
        this.mStepDescription = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    @Override // com.texa.careapp.databinding.PermissionLocationStepBinding
    public void setStepImage(Drawable drawable) {
        this.mStepImage = drawable;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        int i = this.mStepIndex;
        String str = this.mStepDescription;
        Drawable drawable = this.mStepImage;
        long j2 = 9 & j;
        String strValueOf = j2 != 0 ? String.valueOf(i) : null;
        long j3 = 10 & j;
        if ((j & 12) != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.imStepDescription, drawable);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.mboundView3, strValueOf);
        }
        if (j3 != 0) {
            TextViewBindingAdapter.setText(this.tvStepDescription, str);
        }
    }
}
