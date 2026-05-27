package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenPermissionBinding extends ViewDataBinding {
    public final TextView screenPermissionBtn;
    public final TextView screenPermissionDescription;
    public final ImageView screenPermissionImage;
    public final TextView screenPermissionTitle;

    protected ScreenPermissionBinding(Object obj, View view, int i, TextView textView, TextView textView2, ImageView imageView, TextView textView3) {
        super(obj, view, i);
        this.screenPermissionBtn = textView;
        this.screenPermissionDescription = textView2;
        this.screenPermissionImage = imageView;
        this.screenPermissionTitle = textView3;
    }

    public static ScreenPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_permission, viewGroup, z, obj);
    }

    public static ScreenPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPermissionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_permission, null, false, obj);
    }

    public static ScreenPermissionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenPermissionBinding bind(View view, Object obj) {
        return (ScreenPermissionBinding) bind(obj, view, R.layout.screen_permission);
    }
}
