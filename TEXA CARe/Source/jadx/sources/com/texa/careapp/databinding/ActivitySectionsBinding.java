package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivitySectionsBinding extends ViewDataBinding {
    public final ProgressBar progressBarWebview;
    public final View toolbarActionbar;
    public final WebView webView;
    public final RelativeLayout webviewContainer;

    protected ActivitySectionsBinding(Object obj, View view, int i, ProgressBar progressBar, View view2, WebView webView, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.progressBarWebview = progressBar;
        this.toolbarActionbar = view2;
        this.webView = webView;
        this.webviewContainer = relativeLayout;
    }

    public static ActivitySectionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivitySectionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivitySectionsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_sections, viewGroup, z, obj);
    }

    public static ActivitySectionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivitySectionsBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivitySectionsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_sections, null, false, obj);
    }

    public static ActivitySectionsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivitySectionsBinding bind(View view, Object obj) {
        return (ActivitySectionsBinding) bind(obj, view, R.layout.activity_sections);
    }
}
