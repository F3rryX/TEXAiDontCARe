package com.texa.careapp.databinding;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PermissionLocationStepBinding extends ViewDataBinding {
    public final ImageView imStepDescription;

    @Bindable
    protected String mStepDescription;

    @Bindable
    protected Drawable mStepImage;

    @Bindable
    protected int mStepIndex;
    public final TextView tvStepDescription;

    public abstract void setStepDescription(String str);

    public abstract void setStepImage(Drawable drawable);

    public abstract void setStepIndex(int i);

    protected PermissionLocationStepBinding(Object obj, View view, int i, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.imStepDescription = imageView;
        this.tvStepDescription = textView;
    }

    public String getStepDescription() {
        return this.mStepDescription;
    }

    public Drawable getStepImage() {
        return this.mStepImage;
    }

    public int getStepIndex() {
        return this.mStepIndex;
    }

    public static PermissionLocationStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PermissionLocationStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PermissionLocationStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.permission_location_step, viewGroup, z, obj);
    }

    public static PermissionLocationStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PermissionLocationStepBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PermissionLocationStepBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.permission_location_step, null, false, obj);
    }

    public static PermissionLocationStepBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PermissionLocationStepBinding bind(View view, Object obj) {
        return (PermissionLocationStepBinding) bind(obj, view, R.layout.permission_location_step);
    }
}
