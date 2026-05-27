.class public interface abstract Lcom/texa/carelib/care/attitude/Attitude;
.super Ljava/lang/Object;
.source "Attitude.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_ATTITUDE_STATUS:Ljava/lang/String; = "com.texa.carelib.care.attitude.Attitude#PROPERTY_ATTITUDE_STATUS"

.field public static final PROPERTY_ROTATION_MATRIX_REPORT:Ljava/lang/String; = "com.texa.carelib.care.attitude.Attitude#PROPERTY_ROTATION_MATRIX_REPORT"


# virtual methods
.method public abstract beginEstimation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getAttitudeEstimationStatus()Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
.end method

.method public abstract getRotationMatrixReport()Lcom/texa/carelib/care/attitude/RotationMatrixReport;
.end method

.method public abstract loadAttitudeInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract needsEstimation()Z
.end method
