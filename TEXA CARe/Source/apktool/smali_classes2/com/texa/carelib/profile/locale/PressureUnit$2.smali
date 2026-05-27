.class final enum Lcom/texa/carelib/profile/locale/PressureUnit$2;
.super Lcom/texa/carelib/profile/locale/PressureUnit;
.source "PressureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/PressureUnit;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/PressureUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/PressureUnit$1;)V

    return-void
.end method


# virtual methods
.method public toKiloPascal(D)D
    .locals 2

    const-wide v0, 0x3fc29098ba1e3afeL    # 0.14503773773

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public toPSI(D)D
    .locals 0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "psi"

    return-object v0
.end method
