package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.AlertImageView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ContactsGridBinding extends ViewDataBinding {
    public final ImageView callMechanicButton;
    public final TextView callMechanicTitle;
    public final RelativeLayout centralOperatorItem;
    public final ImageView contactSosGoToSettings;
    public final LinearLayout contactsGridBadge;
    public final AppCompatTextView contactsGridBadgeText;
    public final AlertImageView emergencyButtonAlertIcon;
    public final TextView mechanicDescription;
    public final RelativeLayout mechanicItem;
    public final ImageView sosImage;
    public final TextView sosServiceStatus;
    public final TextView sosServiceTitle;

    protected ContactsGridBinding(Object obj, View view, int i, ImageView imageView, TextView textView, RelativeLayout relativeLayout, ImageView imageView2, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AlertImageView alertImageView, TextView textView2, RelativeLayout relativeLayout2, ImageView imageView3, TextView textView3, TextView textView4) {
        super(obj, view, i);
        this.callMechanicButton = imageView;
        this.callMechanicTitle = textView;
        this.centralOperatorItem = relativeLayout;
        this.contactSosGoToSettings = imageView2;
        this.contactsGridBadge = linearLayout;
        this.contactsGridBadgeText = appCompatTextView;
        this.emergencyButtonAlertIcon = alertImageView;
        this.mechanicDescription = textView2;
        this.mechanicItem = relativeLayout2;
        this.sosImage = imageView3;
        this.sosServiceStatus = textView3;
        this.sosServiceTitle = textView4;
    }

    public static ContactsGridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ContactsGridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ContactsGridBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.contacts_grid, viewGroup, z, obj);
    }

    public static ContactsGridBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ContactsGridBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ContactsGridBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.contacts_grid, null, false, obj);
    }

    public static ContactsGridBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ContactsGridBinding bind(View view, Object obj) {
        return (ContactsGridBinding) bind(obj, view, R.layout.contacts_grid);
    }
}
