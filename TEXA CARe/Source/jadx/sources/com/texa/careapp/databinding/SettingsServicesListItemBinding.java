package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.app.settings.services.SettingsServicesAdapter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SettingsServicesListItemBinding extends ViewDataBinding {
    public final ImageView alertIconService;

    @Bindable
    protected SettingsServicesAdapter mSettingsAdapter;
    public final CardView settingsServicesListItemCardView;
    public final AppCompatTextView settingsServicesListItemDelete;
    public final TextView settingsServicesListItemDueDay;
    public final TextView settingsServicesListItemDueMonth;
    public final LinearLayout settingsServicesListItemInfoLay;
    public final TextView settingsServicesListItemLabel;
    public final AppCompatTextView settingsServicesListItemMainInfo;
    public final AppCompatTextView settingsServicesListItemSecondInfo;
    public final AppCompatTextView settingsServicesListItemStatus;

    public abstract void setSettingsAdapter(SettingsServicesAdapter settingsServicesAdapter);

    protected SettingsServicesListItemBinding(Object obj, View view, int i, ImageView imageView, CardView cardView, AppCompatTextView appCompatTextView, TextView textView, TextView textView2, LinearLayout linearLayout, TextView textView3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        super(obj, view, i);
        this.alertIconService = imageView;
        this.settingsServicesListItemCardView = cardView;
        this.settingsServicesListItemDelete = appCompatTextView;
        this.settingsServicesListItemDueDay = textView;
        this.settingsServicesListItemDueMonth = textView2;
        this.settingsServicesListItemInfoLay = linearLayout;
        this.settingsServicesListItemLabel = textView3;
        this.settingsServicesListItemMainInfo = appCompatTextView2;
        this.settingsServicesListItemSecondInfo = appCompatTextView3;
        this.settingsServicesListItemStatus = appCompatTextView4;
    }

    public SettingsServicesAdapter getSettingsAdapter() {
        return this.mSettingsAdapter;
    }

    public static SettingsServicesListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsServicesListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SettingsServicesListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_services_list_item, viewGroup, z, obj);
    }

    public static SettingsServicesListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsServicesListItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SettingsServicesListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.settings_services_list_item, null, false, obj);
    }

    public static SettingsServicesListItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SettingsServicesListItemBinding bind(View view, Object obj) {
        return (SettingsServicesListItemBinding) bind(obj, view, R.layout.settings_services_list_item);
    }
}
