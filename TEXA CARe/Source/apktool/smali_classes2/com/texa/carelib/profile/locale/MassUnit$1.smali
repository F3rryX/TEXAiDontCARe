.class final enum Lcom/texa/carelib/profile/locale/MassUnit$1;
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

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/MassUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassUnit$1;)V

    return-void
.end method


# virtual methods
.method public toGram(D)D
    .locals 0

    return-wide p1
.end method

.method public toKilogram(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toOunce(D)D
    .locals 2

    const-wide v0, 0x3fa20f6dc1f29531L    # 0.03527396194958

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toPound(D)D
    .locals 2

    const-wide v0, 0x3f620f6dc1f29772L    # 0.002204622621849

    mul-double p1, p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "g"

    return-object v0
.end method
