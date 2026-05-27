package com.texa.careapp.app.permission;

/* JADX INFO: loaded from: classes2.dex */
class PermissionModel {
    private int btnTextRes;
    private int descriptionRes;
    private int imageRes;
    private boolean isBeta;
    private boolean isMandatory;
    private String[] permissionType;
    private int skipBtnRes;
    private int titleRes;

    public PermissionModel(int i, int i2, int i3, int i4, String[] strArr, boolean z, int i5, boolean z2) {
        this.titleRes = i;
        this.descriptionRes = i2;
        this.btnTextRes = i3;
        this.imageRes = i4;
        this.permissionType = strArr;
        this.isBeta = z;
        this.skipBtnRes = i5;
        this.isMandatory = z2;
    }

    public int getTitleRes() {
        return this.titleRes;
    }

    public int getDescriptionRes() {
        return this.descriptionRes;
    }

    public int getBtnTextRes() {
        return this.btnTextRes;
    }

    public int getImageRes() {
        return this.imageRes;
    }

    public String[] getPermissionType() {
        return this.permissionType;
    }

    public boolean isBeta() {
        return this.isBeta;
    }

    public int getSkipBtnRes() {
        return this.skipBtnRes;
    }

    public boolean isMandatory() {
        return this.isMandatory;
    }
}
