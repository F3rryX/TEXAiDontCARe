package com.texa.care.eco_driving;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.core.CareLibException;

/* JADX INFO: loaded from: classes.dex */
class DataManagerConfigSync {
    private static final double ACC_THR_INVALID = -1.0d;
    private static final double BREAK_THR_INVALID = -1.0d;
    private static final double TEMP_THR_INVALID = -1.0d;
    DrivingStyleManager dataProvider = null;
    public DataManagerConfiguration config = null;

    DataManagerConfigSync() {
    }

    void syncAccThr() {
        DrivingStyleManager drivingStyleManager = this.dataProvider;
        if (drivingStyleManager == null || this.config == null) {
            return;
        }
        double accThr = drivingStyleManager.getAccThr();
        if (-1.0d == accThr || this.config.getAccelerationThreshold() == null || Math.abs(accThr - ((double) this.config.getAccelerationThreshold().floatValue())) <= 0.01d) {
            return;
        }
        try {
            this.config.setAccelerationThreshold((float) accThr);
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    void syncBrakeThr() {
        DrivingStyleManager drivingStyleManager = this.dataProvider;
        if (drivingStyleManager == null || this.config == null) {
            return;
        }
        double brakeThr = drivingStyleManager.getBrakeThr();
        if (-1.0d == brakeThr || this.config.getBrakeThreshold() == null || Math.abs(brakeThr - ((double) this.config.getBrakeThreshold().floatValue())) <= 0.01d) {
            return;
        }
        try {
            this.config.setBrakeThreshold((float) brakeThr);
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    void syncTempThr() {
        DrivingStyleManager drivingStyleManager = this.dataProvider;
        if (drivingStyleManager == null || this.config == null) {
            return;
        }
        double tempThr = drivingStyleManager.getTempThr();
        if (-1.0d == tempThr || this.config.getTemperatureThreshold() == null || tempThr == this.config.getTemperatureThreshold().intValue()) {
            return;
        }
        try {
            this.config.setTemperatureThreshold((int) tempThr);
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }
}
