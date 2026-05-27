.class Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;
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
    name = "GameRotationVectorSensorEventListener"
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

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1231
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1237
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 1238
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/impactdetection/ImpactDetector;

    new-instance v2, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-direct {v2, p1, v0}, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;-><init>(Landroid/hardware/Sensor;[F)V

    invoke-virtual {v1, v2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onRotationMatrixChanged(Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;)V

    :cond_0
    return-void
.end method
