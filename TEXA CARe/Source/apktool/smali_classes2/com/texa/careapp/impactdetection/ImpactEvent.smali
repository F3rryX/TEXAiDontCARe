.class public Lcom/texa/careapp/impactdetection/ImpactEvent;
.super Ljava/lang/Object;
.source "ImpactEvent.java"


# instance fields
.field private final mAccelerationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

.field private final mImpactTime:Ljava/lang/Long;

.field private final mIntensity:Ljava/lang/Long;

.field private final mLastDeviceDisconnectionTime:Ljava/lang/Long;

.field private final mSourceSensorType:I

.field private final mValidationStatus:I


# direct methods
.method public constructor <init>(Lcom/texa/carelib/communication/DeviceInfo;ILjava/lang/Long;ILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            "I",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    .line 91
    iput p2, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mValidationStatus:I

    .line 92
    iput-object p3, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mLastDeviceDisconnectionTime:Ljava/lang/Long;

    .line 93
    iput p4, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mSourceSensorType:I

    .line 94
    iput-object p6, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mImpactTime:Ljava/lang/Long;

    .line 95
    iput-object p7, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mAccelerationData:Ljava/util/List;

    .line 96
    iput-object p5, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mIntensity:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAccelerationData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mAccelerationData:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method

.method public getImpactTime()Ljava/lang/Long;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mImpactTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getIntensity()Ljava/lang/Long;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mIntensity:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastDeviceDisconnectionTime()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mLastDeviceDisconnectionTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceSensorType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mSourceSensorType:I

    return v0
.end method

.method public getValidationStatus()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/texa/careapp/impactdetection/ImpactEvent;->mValidationStatus:I

    return v0
.end method
