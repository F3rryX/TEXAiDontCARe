package com.texa.careapp.app.ecodriving.tutorial;

/* JADX INFO: loaded from: classes2.dex */
class TutorialItem {
    private int descriptionRes;
    private int iconRes;
    private int titleRes;

    public int getTitleRes() {
        return this.titleRes;
    }

    public int getIconRes() {
        return this.iconRes;
    }

    public int getDescriptionRes() {
        return this.descriptionRes;
    }

    TutorialItem(int i, int i2, int i3) {
        this.titleRes = i;
        this.iconRes = i3;
        this.descriptionRes = i2;
    }
}
