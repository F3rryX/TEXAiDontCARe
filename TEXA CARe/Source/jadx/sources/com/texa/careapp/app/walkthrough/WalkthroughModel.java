package com.texa.careapp.app.walkthrough;

/* JADX INFO: loaded from: classes2.dex */
class WalkthroughModel {
    private int descriptionRes;
    private int titleRes;

    protected boolean canEqual(Object obj) {
        return obj instanceof WalkthroughModel;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WalkthroughModel)) {
            return false;
        }
        WalkthroughModel walkthroughModel = (WalkthroughModel) obj;
        return walkthroughModel.canEqual(this) && getTitleRes() == walkthroughModel.getTitleRes() && getDescriptionRes() == walkthroughModel.getDescriptionRes();
    }

    public int hashCode() {
        return ((getTitleRes() + 59) * 59) + getDescriptionRes();
    }

    public void setDescriptionRes(int i) {
        this.descriptionRes = i;
    }

    public void setTitleRes(int i) {
        this.titleRes = i;
    }

    public String toString() {
        return "WalkthroughModel(titleRes=" + getTitleRes() + ", descriptionRes=" + getDescriptionRes() + ")";
    }

    public WalkthroughModel(int i, int i2) {
        this.titleRes = i;
        this.descriptionRes = i2;
    }

    public int getTitleRes() {
        return this.titleRes;
    }

    public int getDescriptionRes() {
        return this.descriptionRes;
    }
}
