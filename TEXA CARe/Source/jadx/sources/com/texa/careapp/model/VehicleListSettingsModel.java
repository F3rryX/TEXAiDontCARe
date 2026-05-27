package com.texa.careapp.model;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleListSettingsModel implements ISettingsModel {
    private String mTitle = "";
    private String mSubtitle = "";
    private boolean hasImage = false;
    private int mType = -1;
    private int mImage = -1;
    private int mAction = -1;
    private boolean visibility = false;
    private List<VehicleModel> mVehicleModels = null;

    @Override // com.texa.careapp.model.ISettingsModel
    public void setTitle(String str) {
        this.mTitle = str;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public String getTitle() {
        return this.mTitle;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setSubtitle(String str) {
        this.mSubtitle = str;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public String getSubtitle() {
        return this.mSubtitle;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setHasImage(boolean z) {
        this.hasImage = z;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public boolean hasImage() {
        return this.hasImage;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getType() {
        return this.mType;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setType(int i) {
        this.mType = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getImage() {
        return this.mImage;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setImage(int i) {
        this.mImage = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setAction(int i) {
        this.mAction = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getAction() {
        return this.mAction;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void isVisible(boolean z) {
        this.visibility = z;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public boolean getVisibility() {
        return this.visibility;
    }

    public void setVehicleModels(List<VehicleModel> list) {
        this.mVehicleModels = list;
    }

    public List<VehicleModel> getVehicleModels() {
        return this.mVehicleModels;
    }
}
