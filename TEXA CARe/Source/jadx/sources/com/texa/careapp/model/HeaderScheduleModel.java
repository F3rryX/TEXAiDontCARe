package com.texa.careapp.model;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderScheduleModel implements IScheduleModel {
    private String mTitle;

    @Override // com.texa.careapp.model.IScheduleModel
    public void archive() {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public long daysToExpire() {
        return 0L;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public String getDesciption() {
        return null;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Date getExpireDate() {
        return null;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getExpireOdo() {
        return null;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatus() {
        return 0;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatusByDays(int i) {
        return 0;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getStartOdo() {
        return null;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public ScheduleType getType() {
        return null;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isArchived() {
        return false;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isDeletable() {
        return false;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isExpired() {
        return false;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isRefreshable() {
        return false;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setDeletable(boolean z) {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireDate(Date date) {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireOdo(Integer num) {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setRefreshable(boolean z) {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setStartOdo(Integer num) {
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setType(ScheduleType scheduleType) {
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof HeaderScheduleModel;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderScheduleModel)) {
            return false;
        }
        HeaderScheduleModel headerScheduleModel = (HeaderScheduleModel) obj;
        if (!headerScheduleModel.canEqual(this)) {
            return false;
        }
        String mTitle = getMTitle();
        String mTitle2 = headerScheduleModel.getMTitle();
        return mTitle != null ? mTitle.equals(mTitle2) : mTitle2 == null;
    }

    public int hashCode() {
        String mTitle = getMTitle();
        return 59 + (mTitle == null ? 43 : mTitle.hashCode());
    }

    public void setMTitle(String str) {
        this.mTitle = str;
    }

    public String toString() {
        return "HeaderScheduleModel(mTitle=" + getMTitle() + ")";
    }

    public String getMTitle() {
        return this.mTitle;
    }
}
