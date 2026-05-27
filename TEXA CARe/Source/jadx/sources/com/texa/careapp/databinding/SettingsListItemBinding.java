package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SettingsListItemBinding extends ViewDataBinding {
    public final RelativeLayout settingsItemContainer;
    public final ImageView settingsItemImage;
    public final LinearLayout settingsItemInternalContainer;
    public final TextView settingsItemSubtitle;
    public final TextView settingsItemTitle;
    public final View settingsListItemDiv;

    protected SettingsListItemBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ImageView imageView, LinearLayout linearLayout, TextView textView, TextView textView2, View view2) {
        super(obj, view, i);
        this.settingsItemContainer = relativeLayout;
        this.settingsItemImage = imageView;
        this.settingsItemInternalContainer = linearLayout;
        this.settingsItemSubtitle = textView;
        this.settingsItemTitle = textView2;
        this.settingsListItemDiv = view2;
    }

    public static SettingsListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SettingsListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_list_item, viewGroup, z, obj);
    }

    public static SettingsListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsListItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SettingsListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_list_item, null, false, obj);
    }

    public static SettingsListItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsListItemBinding bind(View view, Object obj) {
        return (SettingsListItemBinding) bind(obj, view, R.layout.settings_list_item);
    }
}
