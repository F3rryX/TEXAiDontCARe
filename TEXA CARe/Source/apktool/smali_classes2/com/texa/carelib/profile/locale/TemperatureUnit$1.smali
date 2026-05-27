.class final enum Lcom/texa/carelib/profile/locale/TemperatureUnit$1;
.super Lcom/texa/carelib/profile/locale/TemperatureUnit;
.source "TemperatureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/TemperatureUnit;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/locale/TemperatureUnit;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/TemperatureUnit$1;)V

    return-void
.end method


# virtual methods
.method public toCelsius(D)D
    .locals 0

    return-wide p1
.end method

.method public toFahrenheit(D)D
    .locals 2

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u00b0C"

    return-object v0
.end method
