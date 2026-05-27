.class public Lcom/texa/careapp/utils/shake/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_COUNT_RESET_TIME_MS:I = 0xbb8

.field private static final SHAKE_SLOP_TIME_MS:I = 0x1f4

.field private static final SHAKE_THRESHOLD_GRAVITY:F = 2.7f


# instance fields
.field private mListener:Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;

.field private mShakeCount:I

.field private mShakeTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mListener:Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 44
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 45
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    const v4, 0x411ce80a

    div-float/2addr v0, v4

    div-float/2addr v2, v4

    div-float/2addr p1, v4

    mul-float v0, v0, v0

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v4, v0

    .line 52
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x40059999a0000000L    # 2.700000047683716

    cmpl-double p1, v4, v6

    if-lez p1, :cond_2

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 57
    iget-wide v6, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mShakeTimestamp:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v6

    cmp-long p1, v8, v4

    if-lez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    cmp-long p1, v6, v4

    if-gez p1, :cond_1

    .line 63
    iput v1, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mShakeCount:I

    .line 66
    :cond_1
    iput-wide v4, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mShakeTimestamp:J

    .line 67
    iget p1, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mShakeCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mShakeCount:I

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mListener:Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;

    invoke-interface {v0, p1}, Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;->onShake(I)V

    :cond_2
    return-void
.end method

.method public setOnShakeListener(Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/utils/shake/ShakeDetector;->mListener:Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;

    return-void
.end method
