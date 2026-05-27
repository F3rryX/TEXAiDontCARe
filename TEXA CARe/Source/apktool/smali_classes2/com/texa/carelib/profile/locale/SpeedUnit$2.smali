.class final enum Lcom/texa/carelib/profile/locale/SpeedUnit$2;
.super Lcom/texa/carelib/profile/locale/SpeedUnit;
.source "SpeedUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/SpeedUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/SpeedUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/SpeedUnit$1;)V

    return-void
.end method


# virtual methods
.method public toKilometersPerHour(D)D
    .locals 0

    return-wide p1
.end method

.method public toMetersPerSecond(D)D
    .locals 2

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toMilesPerHour(D)D
    .locals 1

    .line 25
    sget-object v0, Lcom/texa/carelib/profile/locale/SpeedUnit$2;->METERS_PER_SECOND:Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/SpeedUnit$2;->toMetersPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/SpeedUnit;->toMilesPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "km/h"

    return-object v0
.end method
