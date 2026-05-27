package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDrawOverlayPermissionBinding extends ViewDataBinding {
    public final TextView fragmentPermissionBtn;
    public final TextView fragmentPermissionTitle;
    public final PermissionLocationStepBinding step1;
    public final PermissionLocationStepBinding step2;
    public final TextView textView7;

    protected ScreenDrawOverlayPermissionBinding(Object obj, View view, int i, TextView textView, TextView textView2, PermissionLocationStepBinding permissionLocationStepBinding, PermissionLocationStepBinding permissionLocationStepBinding2, TextView textView3) {
        super(obj, view, i);
        this.fragmentPermissionBtn = textView;
        this.fragmentPermissionTitle = textView2;
        this.step1 = permissionLocationStepBinding;
        this.step2 = permissionLocationStepBinding2;
        this.textView7 = textView3;
    }

    public static ScreenDrawOverlayPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDrawOverlayPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDrawOverlayPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_draw_overlay_permission, viewGroup, z, obj);
    }

    public static ScreenDrawOverlayPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDrawOverlayPermissionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDrawOverlayPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_draw_overlay_permission, null, false, obj);
    }

    public static ScreenDrawOverlayPermissionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDrawOverlayPermissionBinding bind(View view, Object obj) {
        return (ScreenDrawOverlayPermissionBinding) bind(obj, view, R.layout.screen_draw_overlay_permission);
    }
}
