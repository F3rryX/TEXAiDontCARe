package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.views.DottedLoadingIndicatorView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDongleDiscoveryBinding extends ViewDataBinding {
    public final RecyclerView discoveryDongleList;
    public final RelativeLayout dongleDiscoverySearchLayout;
    public final DottedLoadingIndicatorView dongleSearchProgress;
    public final ImageView dongleSearchProgressIcon;
    public final RelativeLayout dongleSearchProgressLayout;
    public final CoordinatorLayout parentCoordinator;
    public final TextView screenDongleDiscoveryBtnStart;
    public final ImageView screenDongleDiscoveryBtnStartImage;
    public final TextView screenDongleDiscoveryDescription;
    public final RelativeLayout screenDongleDiscoveryEmptyLayout;
    public final ImageView screenDongleDiscoveryImageView;
    public final TextView screenDongleDiscoveryListTitle;
    public final RelativeLayout screenDongleDiscoveryMainLay;
    public final TextView screenDongleDiscoveryNoDevicesDescription;
    public final TextView screenDongleDiscoveryNoDevicesLabel;
    public final RelativeLayout screenDongleDiscoveryStart;
    public final TextView screenDongleDiscoveryTitle;

    protected ScreenDongleDiscoveryBinding(Object obj, View view, int i, RecyclerView recyclerView, RelativeLayout relativeLayout, DottedLoadingIndicatorView dottedLoadingIndicatorView, ImageView imageView, RelativeLayout relativeLayout2, CoordinatorLayout coordinatorLayout, TextView textView, ImageView imageView2, TextView textView2, RelativeLayout relativeLayout3, ImageView imageView3, TextView textView3, RelativeLayout relativeLayout4, TextView textView4, TextView textView5, RelativeLayout relativeLayout5, TextView textView6) {
        super(obj, view, i);
        this.discoveryDongleList = recyclerView;
        this.dongleDiscoverySearchLayout = relativeLayout;
        this.dongleSearchProgress = dottedLoadingIndicatorView;
        this.dongleSearchProgressIcon = imageView;
        this.dongleSearchProgressLayout = relativeLayout2;
        this.parentCoordinator = coordinatorLayout;
        this.screenDongleDiscoveryBtnStart = textView;
        this.screenDongleDiscoveryBtnStartImage = imageView2;
        this.screenDongleDiscoveryDescription = textView2;
        this.screenDongleDiscoveryEmptyLayout = relativeLayout3;
        this.screenDongleDiscoveryImageView = imageView3;
        this.screenDongleDiscoveryListTitle = textView3;
        this.screenDongleDiscoveryMainLay = relativeLayout4;
        this.screenDongleDiscoveryNoDevicesDescription = textView4;
        this.screenDongleDiscoveryNoDevicesLabel = textView5;
        this.screenDongleDiscoveryStart = relativeLayout5;
        this.screenDongleDiscoveryTitle = textView6;
    }

    public static ScreenDongleDiscoveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDongleDiscoveryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDongleDiscoveryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dongle_discovery, viewGroup, z, obj);
    }

    public static ScreenDongleDiscoveryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDongleDiscoveryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDongleDiscoveryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dongle_discovery, null, false, obj);
    }

    public static ScreenDongleDiscoveryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDongleDiscoveryBinding bind(View view, Object obj) {
        return (ScreenDongleDiscoveryBinding) bind(obj, view, R.layout.screen_dongle_discovery);
    }
}
