.class final enum Lcom/texa/carelib/profile/locale/MassUnit$2;
.super Lcom/texa/carelib/profile/locale/MassUnit;
.source "MassUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/MassUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/MassUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGram(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toKilogram(D)D
    .locals 0

    return-wide p1
.end method

.method public toOunce(D)D
    .locals 1

    .line 33
    sget-object v0, Lcom/texa/carelib/profile/locale/MassUnit$2;->GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit$2;->toGram(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit;->toOunce(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toPound(D)D
    .locals 1

    .line 34
    sget-object v0, Lcom/texa/carelib/profile/locale/MassUnit$2;->GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit$2;->toGram(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit;->toPound(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kg"

    return-object v0
.end method
