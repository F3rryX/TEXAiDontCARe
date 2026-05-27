.class final enum Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$3;
.super Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;
.source "VolumeFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/VolumeFlowRateUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGallonUKPerHour(D)D
    .locals 1

    .line 37
    sget-object v0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$3;->LITER_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$3;->toLiterPerHour(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->toGallonUKPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toGallonUSAPerHour(D)D
    .locals 0

    return-wide p1
.end method

.method public toLiterPerHour(D)D
    .locals 2

    const-wide v0, 0x3fd0e831e5594b99L    # 0.2641720523581

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "galUS/h"

    return-object v0
.end method
