package com.texa.careapp.app.ecodriving.tutorial;

import com.texa.careapp.databinding.ScreenEcoDrivingTutorialBinding;

/* JADX INFO: loaded from: classes2.dex */
public class TutorialPresenter {
    private final TutorialItem item;

    TutorialPresenter(TutorialItem tutorialItem) {
        this.item = tutorialItem;
    }

    public void afterViewInjection(ScreenEcoDrivingTutorialBinding screenEcoDrivingTutorialBinding) {
        screenEcoDrivingTutorialBinding.screenEcoDrivingTutorialImage.setImageResource(this.item.getIconRes());
        screenEcoDrivingTutorialBinding.screenEcoDrivingTutorialTitle.setText(this.item.getTitleRes());
        screenEcoDrivingTutorialBinding.screenEcoDrivingTutorialDescription.setText(this.item.getDescriptionRes());
    }
}
