.class final enum Lcom/texa/carelib/profile/locale/DistanceUnit$5;
.super Lcom/texa/carelib/profile/locale/DistanceUnit;
.source "DistanceUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/DistanceUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/DistanceUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/DistanceUnit$1;)V

    return-void
.end method


# virtual methods
.method public toCentimeters(D)D
    .locals 1

    .line 96
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toCentimeters(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toFeets(D)D
    .locals 1

    .line 101
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toFeets(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toInchs(D)D
    .locals 1

    .line 102
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toInchs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toKilometers(D)D
    .locals 1

    .line 95
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toKilometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMeters(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toMicrometers(D)D
    .locals 0

    return-wide p1
.end method

.method public toMiles(D)D
    .locals 1

    .line 99
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMiles(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMillimeters(D)D
    .locals 1

    .line 97
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMillimeters(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toNanometers(D)D
    .locals 1

    .line 98
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toNanometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u03bcm"

    return-object v0
.end method

.method public toYards(D)D
    .locals 1

    .line 100
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toYards(D)D

    move-result-wide p1

    return-wide p1
.end method
