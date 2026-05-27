package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSettingsLayoutBinding extends ViewDataBinding {
    public final RecyclerView settingsRecycler;

    protected ScreenSettingsLayoutBinding(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.settingsRecycler = recyclerView;
    }

    public static ScreenSettingsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSettingsLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_layout, viewGroup, z, obj);
    }

    public static ScreenSettingsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSettingsLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_settings_layout, null, false, obj);
    }

    public static ScreenSettingsLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSettingsLayoutBinding bind(View view, Object obj) {
        return (ScreenSettingsLayoutBinding) bind(obj, view, R.layout.screen_settings_layout);
    }
}
