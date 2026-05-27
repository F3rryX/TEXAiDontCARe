.class Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;
.super Ljava/lang/Object;
.source "ImpactDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/impactdetection/ImpactDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinearAccelerationSensorEventListener"
.end annotation


# instance fields
.field private final mImpactDetector:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;)V"
        }
    .end annotation

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 1285
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/impactdetection/ImpactDetector;

    new-instance v9, Lcom/texa/careapp/impactdetection/AccelerationEvent;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v3, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v1, v1, v6

    invoke-static {v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->convertFromAccelerationToUg(F)I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v1, v1, v7

    invoke-static {v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->convertFromAccelerationToUg(F)I

    move-result v1

    int-to-float v7, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-static {p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->convertFromAccelerationToUg(F)I

    move-result p1

    int-to-float v8, p1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/texa/careapp/impactdetection/AccelerationEvent;-><init>(Landroid/hardware/Sensor;IJFFF)V

    invoke-virtual {v0, v9}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onAccelerationEvent(Lcom/texa/careapp/impactdetection/AccelerationEvent;)V

    :cond_0
    return-void
.end method
