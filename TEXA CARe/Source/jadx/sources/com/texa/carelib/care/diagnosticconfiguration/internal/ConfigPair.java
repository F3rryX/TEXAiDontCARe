package com.texa.carelib.care.diagnosticconfiguration.internal;

import java.io.File;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
class ConfigPair {
    private float mCheckProgress;
    private File mConfig;
    private Date mDateStartCheck;
    private boolean mIsStored;
    private File mReport;
    private int mReportStatus;
    private float mStoreProgress;

    ConfigPair() {
        this.mConfig = null;
        this.mReport = null;
        this.mReportStatus = -1;
        this.mIsStored = false;
        this.mDateStartCheck = null;
    }

    ConfigPair(File file) {
        this();
        this.mConfig = file;
    }

    public boolean isStored() {
        return this.mIsStored;
    }

    public ConfigPair setStored(boolean z) {
        this.mIsStored = z;
        return this;
    }

    public File getReport() {
        return this.mReport;
    }

    public int getReportStatus() {
        return this.mReportStatus;
    }

    public ConfigPair setReportStatus(int i) {
        this.mReportStatus = i;
        return this;
    }

    public ConfigPair setReport(File file) {
        this.mReport = file;
        return this;
    }

    public File getConfig() {
        return this.mConfig;
    }

    public Date getDateStartCheck() {
        return this.mDateStartCheck;
    }

    public ConfigPair setDateStartCheck(Date date) {
        this.mDateStartCheck = date;
        return this;
    }

    public float getStoreProgress() {
        return this.mStoreProgress;
    }

    public ConfigPair setStoreProgress(float f) {
        this.mStoreProgress = f;
        return this;
    }

    public float getCheckProgress() {
        return this.mCheckProgress;
    }

    public ConfigPair setCheckProgress(float f) {
        this.mCheckProgress = f;
        return this;
    }
}
