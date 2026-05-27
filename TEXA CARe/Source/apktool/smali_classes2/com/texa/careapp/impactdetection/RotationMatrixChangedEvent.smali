.class public Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;
.super Ljava/lang/Object;
.source "RotationMatrixChangedEvent.java"


# instance fields
.field private final mRotationMatrix:[F

.field private final mSourceSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;[F)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;->mSourceSensor:Landroid/hardware/Sensor;

    .line 56
    iput-object p2, p0, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;->mRotationMatrix:[F

    return-void
.end method


# virtual methods
.method public getRotationMatrix()[F
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;->mRotationMatrix:[F

    return-object v0
.end method

.method public getSourceSensor()Landroid/hardware/Sensor;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;->mSourceSensor:Landroid/hardware/Sensor;

    return-object v0
.end method
