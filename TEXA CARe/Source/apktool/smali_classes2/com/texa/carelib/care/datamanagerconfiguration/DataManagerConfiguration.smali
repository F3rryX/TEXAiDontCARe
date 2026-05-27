.class public interface abstract Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
.super Ljava/lang/Object;
.source "DataManagerConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_ACCELERATION_MAX_RANGE:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_MAX_RANGE"

.field public static final PROPERTY_ACCELERATION_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_THRESHOLD"

.field public static final PROPERTY_BRAKE_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_BRAKE_THRESHOLD"

.field public static final PROPERTY_DRIVER_ID:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVER_ID"

.field public static final PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD"

.field public static final PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD"

.field public static final PROPERTY_LED_BEHAVIOUR:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_LED_BEHAVIOUR"

.field public static final PROPERTY_ODOMETER:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ODOMETER"

.field public static final PROPERTY_RPM_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_RPM_THRESHOLD"

.field public static final PROPERTY_SOS_ENABLED:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED"

.field public static final PROPERTY_SOS_ENABLED_LOW_POWER_MODE:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_SOS_ENABLED_LOW_POWER_MODE"

.field public static final PROPERTY_TEMPERATURE_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TEMPERATURE_THRESHOLD"

.field public static final PROPERTY_TIMEZONE_OFFSET:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TIMEZONE_OFFSET"

.field public static final PROPERTY_TRIP_NUMBER_DEVICE:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_DEVICE"

.field public static final PROPERTY_TRIP_NUMBER_VEHICLE:Ljava/lang/String; = "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TRIP_NUMBER_VEHICLE"


# virtual methods
.method public abstract getAccelerationMaxRange()Ljava/lang/Integer;
.end method

.method public abstract getAccelerationThreshold()Ljava/lang/Float;
.end method

.method public abstract getBrakeThreshold()Ljava/lang/Float;
.end method

.method public abstract getDriverID()Ljava/util/UUID;
.end method

.method public abstract getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;
.end method

.method public abstract getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;
.end method

.method public abstract getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
.end method

.method public abstract getRPMThreshold()Ljava/lang/Integer;
.end method

.method public abstract getStartingOdometer()Ljava/lang/Float;
.end method

.method public abstract getTemperatureThreshold()Ljava/lang/Integer;
.end method

.method public abstract getTimeZoneOffset()Ljava/lang/Integer;
.end method

.method public abstract getTripNumberDevice()Ljava/lang/Long;
.end method

.method public abstract getTripNumberVehicle()Ljava/lang/Integer;
.end method

.method public abstract isSOSEnabled()Ljava/lang/Boolean;
.end method

.method public abstract isSOSEnabledLowPowerMode()Ljava/lang/Boolean;
.end method

.method public abstract loadConfigurationValues()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setAccelerationMaxRange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setAccelerationThreshold(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setBrakeThreshold(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setDriverID(Ljava/util/UUID;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setDrivingTimeLowRPMMaxThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setDrivingTimeLowRPMMinThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setRPMThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setSOSEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setSOSEnabledLowPowerMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setStartingOdometer(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setTemperatureThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setTimeZoneOffset(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
