package com.texa.carelib.care.datamanagerconfiguration;

import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public interface DataManagerConfiguration extends ObservableObject {
    public static final String PROPERTY_ACCELERATION_MAX_RANGE = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_MAX_RANGE";
    public static final String PROPERTY_ACCELERATION_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_THRESHOLD";
    public static final String PROPERTY_BRAKE_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_BRAKE_THRESHOLD";
    public static final String PROPERTY_DRIVER_ID = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVER_ID";
    public static final String PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD";
    public static final String PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD";
    public static final String PROPERTY_LED_BEHAVIOUR = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_LED_BEHAVIOUR";
    public static final String PROPERTY_ODOMETER = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ODOMETER";
    public static final String PROPERTY_RPM_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_RPM_THRESHOLD";
    public static final String PROPERTY_SOS_ENABLED = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED";
    public static final String PROPERTY_SOS_ENABLED_LOW_POWER_MODE = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED_LOW_POWER_MODE";
    public static final String PROPERTY_TEMPERATURE_THRESHOLD = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TEMPERATURE_THRESHOLD";
    public static final String PROPERTY_TIMEZONE_OFFSET = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TIMEZONE_OFFSET";
    public static final String PROPERTY_TRIP_NUMBER_DEVICE = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_DEVICE";
    public static final String PROPERTY_TRIP_NUMBER_VEHICLE = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_VEHICLE";

    Integer getAccelerationMaxRange();

    Float getAccelerationThreshold();

    Float getBrakeThreshold();

    UUID getDriverID();

    Integer getDrivingTimeLowRPMMaxThreshold();

    Integer getDrivingTimeLowRPMMinThreshold();

    LedBehaviour getLedBehaviour();

    Integer getRPMThreshold();

    Float getStartingOdometer();

    Integer getTemperatureThreshold();

    Integer getTimeZoneOffset();

    Long getTripNumberDevice();

    Integer getTripNumberVehicle();

    Boolean isSOSEnabled();

    Boolean isSOSEnabledLowPowerMode();

    void loadConfigurationValues() throws CareLibException;

    void setAccelerationMaxRange(int i) throws CareLibException;

    void setAccelerationThreshold(float f) throws CareLibException;

    void setBrakeThreshold(float f) throws CareLibException;

    void setDriverID(UUID uuid) throws CareLibException;

    void setDrivingTimeLowRPMMaxThreshold(int i) throws CareLibException;

    void setDrivingTimeLowRPMMinThreshold(int i) throws CareLibException;

    void setLedBehaviour(LedBehaviour ledBehaviour) throws CareLibException;

    void setRPMThreshold(int i) throws CareLibException;

    void setSOSEnabled(boolean z) throws CareLibException;

    void setSOSEnabledLowPowerMode(boolean z) throws CareLibException;

    void setStartingOdometer(float f) throws CareLibException;

    void setTemperatureThreshold(int i) throws CareLibException;

    void setTimeZoneOffset(int i) throws CareLibException;
}
