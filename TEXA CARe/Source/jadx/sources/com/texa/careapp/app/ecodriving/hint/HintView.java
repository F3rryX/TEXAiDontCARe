package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenEcoDrivingHintBinding;

/* JADX INFO: loaded from: classes2.dex */
public class HintView extends LinearLayout {
    private ScreenEcoDrivingHintBinding mBinding;
    private HintPresenter mPresenter;

    public HintView(Context context) {
        super(context);
        init(context);
    }

    public HintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public HintView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenEcoDrivingHintBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_eco_driving_hint, this, true);
    }

    public void setPresenter(HintPresenter hintPresenter) {
        this.mPresenter = hintPresenter;
        hintPresenter.afterViewInjection(this.mBinding);
    }
}
