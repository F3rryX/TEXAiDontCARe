.class final enum Lcom/texa/carelib/profile/locale/AccelerationUnit$2;
.super Lcom/texa/carelib/profile/locale/AccelerationUnit;
.source "AccelerationUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/AccelerationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/AccelerationUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/AccelerationUnit$1;)V

    return-void
.end method


# virtual methods
.method public toMetersPerSquareSecond(D)D
    .locals 2

    const-wide v0, 0x3ff17f6d330941c8L    # 1.09361

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "yd/s\u00b2"

    return-object v0
.end method

.method public toYardsPerSquareSecond(D)D
    .locals 0

    return-wide p1
.end method
