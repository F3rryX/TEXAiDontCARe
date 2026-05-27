.class final enum Lcom/texa/carelib/profile/locale/DistanceUnit$3;
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

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/DistanceUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/DistanceUnit$1;)V

    return-void
.end method


# virtual methods
.method public toCentimeters(D)D
    .locals 0

    return-wide p1
.end method

.method public toFeets(D)D
    .locals 1

    .line 63
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toFeets(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toInchs(D)D
    .locals 1

    .line 64
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toInchs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toKilometers(D)D
    .locals 1

    .line 57
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toKilometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMeters(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toMicrometers(D)D
    .locals 1

    .line 59
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMicrometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMiles(D)D
    .locals 1

    .line 61
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMiles(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMillimeters(D)D
    .locals 1

    .line 58
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMillimeters(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toNanometers(D)D
    .locals 1

    .line 60
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toNanometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    return-object v0
.end method

.method public toYards(D)D
    .locals 1

    .line 62
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toYards(D)D

    move-result-wide p1

    return-wide p1
.end method
