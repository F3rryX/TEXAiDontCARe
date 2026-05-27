package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSellerMapBinding extends ViewDataBinding {
    public final WebView screenSellerMapWebView;

    protected ScreenSellerMapBinding(Object obj, View view, int i, WebView webView) {
        super(obj, view, i);
        this.screenSellerMapWebView = webView;
    }

    public static ScreenSellerMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSellerMapBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSellerMapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_seller_map, viewGroup, z, obj);
    }

    public static ScreenSellerMapBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSellerMapBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSellerMapBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_seller_map, null, false, obj);
    }

    public static ScreenSellerMapBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSellerMapBinding bind(View view, Object obj) {
        return (ScreenSellerMapBinding) bind(obj, view, R.layout.screen_seller_map);
    }
}
