package com.texa.carelib.care.impacts;

import com.texa.carelib.core.ObservableObject;

/* JADX INFO: loaded from: classes2.dex */
public interface ImpactDetectionConfiguration extends ObservableObject {
    public static final String PROPERTY_ACCELERATION_THRESHOLD = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_ACCELERATION_THRESHOLD";
    public static final String PROPERTY_SPEED_TIMEOUT = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_SPEED_TIMEOUT";
    public static final String PROPERTY_TIME_OVER_THRESHOLD = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_TIME_OVER_THRESHOLD";
    public static final String PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT";

    Float getAccelerationThreshold();

    Float getSpeedTimeout();

    Float getTimeOverThreshold();

    boolean loadCrashConfigurationValues();

    void setAccelerationThreshold(Float f);

    void setSpeedTimeout(Float f);

    void setTimeOverThreshold(Float f);
}
