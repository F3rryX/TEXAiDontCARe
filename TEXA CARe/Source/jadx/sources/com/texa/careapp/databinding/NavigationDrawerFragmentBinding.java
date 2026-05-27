package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NavigationDrawerFragmentBinding extends ViewDataBinding {
    public final ImageView careLogo;
    public final TextView drawerItemDashboard;
    public final TextView drawerItemEcoDriving;
    public final TextView drawerItemExtendeControls;
    public final TextView drawerItemSchedule;
    public final TextView drawerItemVehicleFinder;
    public final TextView drawerItemVehicleName;
    public final TextView drawerItemVehicleStatus;
    public final ScrollView drawerMainMenu;
    public final LinearLayout drawerServices;
    public final ImageView drawerServicesIcon;
    public final LinearLayout drawerSettings;
    public final RelativeLayout googleDrawer;
    public final RelativeTimeTextView lastOdbRead;

    protected NavigationDrawerFragmentBinding(Object obj, View view, int i, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, ScrollView scrollView, LinearLayout linearLayout, ImageView imageView2, LinearLayout linearLayout2, RelativeLayout relativeLayout, RelativeTimeTextView relativeTimeTextView) {
        super(obj, view, i);
        this.careLogo = imageView;
        this.drawerItemDashboard = textView;
        this.drawerItemEcoDriving = textView2;
        this.drawerItemExtendeControls = textView3;
        this.drawerItemSchedule = textView4;
        this.drawerItemVehicleFinder = textView5;
        this.drawerItemVehicleName = textView6;
        this.drawerItemVehicleStatus = textView7;
        this.drawerMainMenu = scrollView;
        this.drawerServices = linearLayout;
        this.drawerServicesIcon = imageView2;
        this.drawerSettings = linearLayout2;
        this.googleDrawer = relativeLayout;
        this.lastOdbRead = relativeTimeTextView;
    }

    public static NavigationDrawerFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static NavigationDrawerFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (NavigationDrawerFragmentBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.navigation_drawer_fragment, viewGroup, z, obj);
    }

    public static NavigationDrawerFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static NavigationDrawerFragmentBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (NavigationDrawerFragmentBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.navigation_drawer_fragment, null, false, obj);
    }

    public static NavigationDrawerFragmentBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static NavigationDrawerFragmentBinding bind(View view, Object obj) {
        return (NavigationDrawerFragmentBinding) bind(obj, view, R.layout.navigation_drawer_fragment);
    }
}
