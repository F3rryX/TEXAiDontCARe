package com.texa.careapp.app.ecodriving.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenEcoDrivingTutorialBinding;

/* JADX INFO: loaded from: classes2.dex */
public class TutorialView extends LinearLayout {
    private ScreenEcoDrivingTutorialBinding mBinding;
    private TutorialPresenter mPresenter;

    public TutorialView(Context context) {
        super(context);
        init(context);
    }

    public TutorialView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public TutorialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenEcoDrivingTutorialBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_eco_driving_tutorial, this, true);
    }

    public void setPresenter(TutorialPresenter tutorialPresenter) {
        this.mPresenter = tutorialPresenter;
        tutorialPresenter.afterViewInjection(this.mBinding);
    }
}
