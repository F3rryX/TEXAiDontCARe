package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenCareSiteBinding extends ViewDataBinding {
    public final WebView screenCareSiteWebView;

    protected ScreenCareSiteBinding(Object obj, View view, int i, WebView webView) {
        super(obj, view, i);
        this.screenCareSiteWebView = webView;
    }

    public static ScreenCareSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenCareSiteBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_care_site, viewGroup, z, obj);
    }

    public static ScreenCareSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareSiteBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenCareSiteBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_care_site, null, false, obj);
    }

    public static ScreenCareSiteBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCareSiteBinding bind(View view, Object obj) {
        return (ScreenCareSiteBinding) bind(obj, view, R.layout.screen_care_site);
    }
}
