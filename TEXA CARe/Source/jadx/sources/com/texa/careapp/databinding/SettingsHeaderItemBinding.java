package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SettingsHeaderItemBinding extends ViewDataBinding {
    public final View settingsHeaderItemDiv;
    public final TextView settingsHeaderTitle;

    protected SettingsHeaderItemBinding(Object obj, View view, int i, View view2, TextView textView) {
        super(obj, view, i);
        this.settingsHeaderItemDiv = view2;
        this.settingsHeaderTitle = textView;
    }

    public static SettingsHeaderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsHeaderItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SettingsHeaderItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_header_item, viewGroup, z, obj);
    }

    public static SettingsHeaderItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsHeaderItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SettingsHeaderItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_header_item, null, false, obj);
    }

    public static SettingsHeaderItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsHeaderItemBinding bind(View view, Object obj) {
        return (SettingsHeaderItemBinding) bind(obj, view, R.layout.settings_header_item);
    }
}
