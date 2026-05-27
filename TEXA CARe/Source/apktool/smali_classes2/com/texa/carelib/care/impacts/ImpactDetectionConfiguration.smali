.class public interface abstract Lcom/texa/carelib/care/impacts/ImpactDetectionConfiguration;
.super Ljava/lang/Object;
.source "ImpactDetectionConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_ACCELERATION_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_ACCELERATION_THRESHOLD"

.field public static final PROPERTY_SPEED_TIMEOUT:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_SPEED_TIMEOUT"

.field public static final PROPERTY_TIME_OVER_THRESHOLD:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_TIME_OVER_THRESHOLD"

.field public static final PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetectionConfiguration#PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT"


# virtual methods
.method public abstract getAccelerationThreshold()Ljava/lang/Float;
.end method

.method public abstract getSpeedTimeout()Ljava/lang/Float;
.end method

.method public abstract getTimeOverThreshold()Ljava/lang/Float;
.end method

.method public abstract loadCrashConfigurationValues()Z
.end method

.method public abstract setAccelerationThreshold(Ljava/lang/Float;)V
.end method

.method public abstract setSpeedTimeout(Ljava/lang/Float;)V
.end method

.method public abstract setTimeOverThreshold(Ljava/lang/Float;)V
.end method
