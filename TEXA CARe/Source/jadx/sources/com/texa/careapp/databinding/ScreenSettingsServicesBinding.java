package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSettingsServicesBinding extends ViewDataBinding {
    public final RecyclerView screenSettingsServiceList;
    public final SwipeRefreshLayout screenSettingsServiceRefresh;

    protected ScreenSettingsServicesBinding(Object obj, View view, int i, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        super(obj, view, i);
        this.screenSettingsServiceList = recyclerView;
        this.screenSettingsServiceRefresh = swipeRefreshLayout;
    }

    public static ScreenSettingsServicesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsServicesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSettingsServicesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_services, viewGroup, z, obj);
    }

    public static ScreenSettingsServicesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsServicesBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSettingsServicesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_services, null, false, obj);
    }

    public static ScreenSettingsServicesBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsServicesBinding bind(View view, Object obj) {
        return (ScreenSettingsServicesBinding) bind(obj, view, R.layout.screen_settings_services);
    }
}
