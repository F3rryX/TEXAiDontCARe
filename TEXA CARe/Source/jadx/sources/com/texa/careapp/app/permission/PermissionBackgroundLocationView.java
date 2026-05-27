package com.texa.careapp.app.permission;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenBackgroundLocationPermissionBinding;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionBackgroundLocationView extends LinearLayout {
    private ScreenBackgroundLocationPermissionBinding mBinding;
    private PermissionPresenter mPresenter;

    public PermissionBackgroundLocationView(Context context) {
        super(context);
        init(context);
    }

    public PermissionBackgroundLocationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public PermissionBackgroundLocationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenBackgroundLocationPermissionBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_background_location_permission, this, true);
    }

    public void setPresenter(PermissionPresenter permissionPresenter) {
        this.mPresenter = permissionPresenter;
        permissionPresenter.afterViewInjection(this.mBinding);
    }
}
