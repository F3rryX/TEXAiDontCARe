.class public enum Lcom/texa/carelib/profile/locale/TemperatureUnit;
.super Ljava/lang/Enum;
.source "TemperatureUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/TemperatureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/TemperatureUnit;

.field public static final enum CELSIUS:Lcom/texa/carelib/profile/locale/TemperatureUnit;

.field public static final enum FAHRENHEIT:Lcom/texa/carelib/profile/locale/TemperatureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/texa/carelib/profile/locale/TemperatureUnit$1;

    const-string v1, "CELSIUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/TemperatureUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/TemperatureUnit;->CELSIUS:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    .line 26
    new-instance v1, Lcom/texa/carelib/profile/locale/TemperatureUnit$2;

    const-string v3, "FAHRENHEIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/TemperatureUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/TemperatureUnit;->FAHRENHEIT:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/profile/locale/TemperatureUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/texa/carelib/profile/locale/TemperatureUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/TemperatureUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/TemperatureUnit$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/TemperatureUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/TemperatureUnit;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/TemperatureUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/TemperatureUnit;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/profile/locale/TemperatureUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/TemperatureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/TemperatureUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/TemperatureUnit;)J
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toCelsius(D)D
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toFahrenheit(D)D
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
