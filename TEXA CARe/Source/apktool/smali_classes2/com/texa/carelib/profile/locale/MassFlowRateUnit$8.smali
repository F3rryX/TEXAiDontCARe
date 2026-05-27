.class final enum Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;
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

    .line 149
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassFlowRateUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGramPerHour(D)D
    .locals 1

    .line 153
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toGramPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toGramPerSecond(D)D
    .locals 2

    const-wide v0, 0x3f620f6dc1f29772L    # 0.002204622621849

    div-double/2addr p1, v0

    const-wide v0, 0x40ac200000000000L    # 3600.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toKilogramPerHour(D)D
    .locals 1

    .line 155
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toKilogramPerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toKilogramPerSecond(D)D
    .locals 1

    .line 154
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toKilogramPerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toOuncePerHour(D)D
    .locals 1

    .line 157
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toOuncePerHour(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toOuncePerSecond(D)D
    .locals 1

    .line 156
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toOuncePerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toPoundPerHour(D)D
    .locals 0

    return-wide p1
.end method

.method public toPoundPerSecond(D)D
    .locals 1

    .line 158
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;->toGramPerSecond(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toPoundPerSecond(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "lb/h"

    return-object v0
.end method
