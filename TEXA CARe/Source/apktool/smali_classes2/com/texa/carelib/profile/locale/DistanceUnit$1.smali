.class final enum Lcom/texa/carelib/profile/locale/DistanceUnit$1;
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

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/DistanceUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/DistanceUnit$1;)V

    return-void
.end method


# virtual methods
.method public toCentimeters(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toFeets(D)D
    .locals 2

    const-wide v0, 0x400a3f28fca3f17aL    # 3.280839895013

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toInchs(D)D
    .locals 2

    const-wide v0, 0x4043af5ebd7af74eL    # 39.37007874016

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toKilometers(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toMeters(D)D
    .locals 0

    return-wide p1
.end method

.method public toMicrometers(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toMiles(D)D
    .locals 2

    const-wide v0, 0x3f445c707983d552L    # 6.213711922373E-4

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toMillimeters(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toNanometers(D)D
    .locals 2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "m"

    return-object v0
.end method

.method public toYards(D)D
    .locals 2

    const-wide v0, 0x3ff17f70a86d5184L    # 1.093613298338

    mul-double p1, p1, v0

    return-wide p1
.end method
