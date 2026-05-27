package com.texa.careapp.app.walkthrough;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenWalkthroughBinding;

/* JADX INFO: loaded from: classes2.dex */
class WalkthroughView extends LinearLayout {
    private ScreenWalkthroughBinding mBinding;
    private WalkthroughPresenter mPresenter;

    public WalkthroughView(Context context) {
        super(context);
        init(context);
    }

    public WalkthroughView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public WalkthroughView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenWalkthroughBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_walkthrough, this, true);
    }

    public void setPresenter(WalkthroughPresenter walkthroughPresenter) {
        this.mPresenter = walkthroughPresenter;
        walkthroughPresenter.afterViewInjection(this.mBinding);
    }
}
