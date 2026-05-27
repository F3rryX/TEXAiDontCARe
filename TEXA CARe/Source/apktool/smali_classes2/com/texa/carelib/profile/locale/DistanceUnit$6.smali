.class final enum Lcom/texa/carelib/profile/locale/DistanceUnit$6;
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

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/DistanceUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/DistanceUnit$1;)V

    return-void
.end method


# virtual methods
.method public toCentimeters(D)D
    .locals 1

    .line 115
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toCentimeters(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toFeets(D)D
    .locals 1

    .line 120
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toFeets(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toInchs(D)D
    .locals 1

    .line 121
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toInchs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toKilometers(D)D
    .locals 1

    .line 114
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toKilometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMeters(D)D
    .locals 2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toMicrometers(D)D
    .locals 1

    .line 117
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMicrometers(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMiles(D)D
    .locals 1

    .line 118
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMiles(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toMillimeters(D)D
    .locals 1

    .line 116
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toMillimeters(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toNanometers(D)D
    .locals 0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "nm"

    return-object v0
.end method

.method public toYards(D)D
    .locals 1

    .line 119
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;->toMeters(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toYards(D)D

    move-result-wide p1

    return-wide p1
.end method
