package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenBackgroundLocationPermissionBinding extends ViewDataBinding {
    public final TextView fragmentPermissionBtn;
    public final TextView fragmentPermissionTitle;
    public final PermissionLocationStepBinding step1;
    public final PermissionLocationStepBinding step2;
    public final PermissionLocationStepBinding step3;
    public final TextView textView7;

    protected ScreenBackgroundLocationPermissionBinding(Object obj, View view, int i, TextView textView, TextView textView2, PermissionLocationStepBinding permissionLocationStepBinding, PermissionLocationStepBinding permissionLocationStepBinding2, PermissionLocationStepBinding permissionLocationStepBinding3, TextView textView3) {
        super(obj, view, i);
        this.fragmentPermissionBtn = textView;
        this.fragmentPermissionTitle = textView2;
        this.step1 = permissionLocationStepBinding;
        this.step2 = permissionLocationStepBinding2;
        this.step3 = permissionLocationStepBinding3;
        this.textView7 = textView3;
    }

    public static ScreenBackgroundLocationPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBackgroundLocationPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenBackgroundLocationPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_background_location_permission, viewGroup, z, obj);
    }

    public static ScreenBackgroundLocationPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBackgroundLocationPermissionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenBackgroundLocationPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_background_location_permission, null, false, obj);
    }

    public static ScreenBackgroundLocationPermissionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBackgroundLocationPermissionBinding bind(View view, Object obj) {
        return (ScreenBackgroundLocationPermissionBinding) bind(obj, view, R.layout.screen_background_location_permission);
    }
}
