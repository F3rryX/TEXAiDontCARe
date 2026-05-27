package com.texa.carelib.care.attitude;

import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;

/* JADX INFO: loaded from: classes2.dex */
public interface Attitude extends ObservableObject {
    public static final String PROPERTY_ATTITUDE_STATUS = "com.texa.carelib.care.attitude.Attitude#PROPERTY_ATTITUDE_STATUS";
    public static final String PROPERTY_ROTATION_MATRIX_REPORT = "com.texa.carelib.care.attitude.Attitude#PROPERTY_ROTATION_MATRIX_REPORT";

    void beginEstimation() throws CareLibException;

    AttitudeEstimationStatus getAttitudeEstimationStatus();

    RotationMatrixReport getRotationMatrixReport();

    void loadAttitudeInfo() throws CareLibException;

    boolean needsEstimation();
}
