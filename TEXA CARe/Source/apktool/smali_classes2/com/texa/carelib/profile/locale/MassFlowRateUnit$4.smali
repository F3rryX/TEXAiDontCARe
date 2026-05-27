.class final enum Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;
.super Lcom/texa/carelib/profile/locale/MassFlowRateUnit;
.source "MassFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/MassFlowRateUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassFlowRateUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGramPerHour(D)D
    .locals 1

    .line 85
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toGramPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toGramPerSecond(D)D
    .locals 2

    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toKilogramPerHour(D)D
    .locals 0

    return-wide p1
.end method

.method public toKilogramPerSecond(D)D
    .locals 1

    .line 86
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toKilogramPerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toOuncePerHour(D)D
    .locals 1

    .line 88
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toOuncePerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toOuncePerSecond(D)D
    .locals 1

    .line 87
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toOuncePerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toPoundPerHour(D)D
    .locals 1

    .line 90
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toPoundPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toPoundPerSecond(D)D
    .locals 1

    .line 89
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toPoundPerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kg/h"

    return-object v0
.end method
