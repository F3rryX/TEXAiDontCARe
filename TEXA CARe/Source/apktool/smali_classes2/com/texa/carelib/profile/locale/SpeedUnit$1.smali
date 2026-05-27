.class final enum Lcom/texa/carelib/profile/locale/SpeedUnit$1;
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

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/SpeedUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/SpeedUnit$1;)V

    return-void
.end method


# virtual methods
.method public toKilometersPerHour(D)D
    .locals 2

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toMetersPerSecond(D)D
    .locals 0

    return-wide p1
.end method

.method public toMilesPerHour(D)D
    .locals 2

    const-wide v0, 0x4001e53edaccdc07L    # 2.236936292054

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "m/s"

    return-object v0
.end method
