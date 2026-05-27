package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.drawerlayout.widget.DrawerLayout;
import com.texa.care.R;
import com.texa.careapp.base.ScrimInsetsFrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityMainBinding extends ViewDataBinding {
    public final FrameLayout container;
    public final CoordinatorLayout coordinatorLayout;
    public final DrawerLayout drawer;
    public final ScrimInsetsFrameLayout scrimInsetsFrameLayout;
    public final View toolbarActionbar;

    protected ActivityMainBinding(Object obj, View view, int i, FrameLayout frameLayout, CoordinatorLayout coordinatorLayout, DrawerLayout drawerLayout, ScrimInsetsFrameLayout scrimInsetsFrameLayout, View view2) {
        super(obj, view, i);
        this.container = frameLayout;
        this.coordinatorLayout = coordinatorLayout;
        this.drawer = drawerLayout;
        this.scrimInsetsFrameLayout = scrimInsetsFrameLayout;
        this.toolbarActionbar = view2;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityMainBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_main, viewGroup, z, obj);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityMainBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_main, null, false, obj);
    }

    public static ActivityMainBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding bind(View view, Object obj) {
        return (ActivityMainBinding) bind(obj, view, R.layout.activity_main);
    }
}
