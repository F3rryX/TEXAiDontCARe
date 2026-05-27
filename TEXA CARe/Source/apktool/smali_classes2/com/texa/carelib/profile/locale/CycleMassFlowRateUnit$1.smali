.class final enum Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$1;
.super Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;
.source "CycleMassFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGrainPerCycle(D)D
    .locals 2

    const-wide v0, 0x3f8f9b004c0033acL    # 0.01543236

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toMilligramPerCycle(D)D
    .locals 0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "mg/cycle"

    return-object v0
.end method
