package com.texa.careapp.app.permission;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenDrawOverlayPermissionBinding;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionDrawOverlayView extends LinearLayout {
    private ScreenDrawOverlayPermissionBinding mBinding;
    private PermissionPresenter mPresenter;

    public PermissionDrawOverlayView(Context context) {
        super(context);
        init(context);
    }

    public PermissionDrawOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public PermissionDrawOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenDrawOverlayPermissionBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_draw_overlay_permission, this, true);
    }

    public void setPresenter(PermissionPresenter permissionPresenter) {
        this.mPresenter = permissionPresenter;
        permissionPresenter.afterViewInjection(this.mBinding);
    }
}
