package com.texa.careapp.app.walkthrough;

import android.content.Context;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenWalkthroughBinding;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class WalkthroughPresenter {

    @Inject
    protected Context mContext;
    private WalkthroughModel mWalkthroughModel;

    WalkthroughPresenter(CareApplication.ApplicationComponent applicationComponent, WalkthroughModel walkthroughModel) {
        applicationComponent.inject(this);
        this.mWalkthroughModel = walkthroughModel;
    }

    public void afterViewInjection(ScreenWalkthroughBinding screenWalkthroughBinding) {
        screenWalkthroughBinding.screenWalkthroughTitle.setText(this.mWalkthroughModel.getTitleRes());
        screenWalkthroughBinding.screenWalkthroughDescription.setText(this.mWalkthroughModel.getDescriptionRes());
    }
}
