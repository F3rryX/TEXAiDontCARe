.class public enum Lcom/texa/carelib/profile/locale/SpeedUnit;
.super Ljava/lang/Enum;
.source "SpeedUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/SpeedUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/SpeedUnit;

.field private static final KH:D = 3.6

.field public static final enum KILOMETERS_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

.field public static final enum METERS_PER_SECOND:Lcom/texa/carelib/profile/locale/SpeedUnit;

.field private static final MH:D = 2.236936292054

.field public static final enum MILES_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/texa/carelib/profile/locale/SpeedUnit$1;

    const-string v1, "METERS_PER_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/SpeedUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/SpeedUnit;->METERS_PER_SECOND:Lcom/texa/carelib/profile/locale/SpeedUnit;

    .line 21
    new-instance v1, Lcom/texa/carelib/profile/locale/SpeedUnit$2;

    const-string v3, "KILOMETERS_PER_HOUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/SpeedUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/SpeedUnit;->KILOMETERS_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    .line 33
    new-instance v3, Lcom/texa/carelib/profile/locale/SpeedUnit$3;

    const-string v5, "MILES_PER_HOUR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/SpeedUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/SpeedUnit;->MILES_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/profile/locale/SpeedUnit;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/texa/carelib/profile/locale/SpeedUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/SpeedUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/SpeedUnit$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/SpeedUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/SpeedUnit;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/SpeedUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/SpeedUnit;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/profile/locale/SpeedUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/SpeedUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/SpeedUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/SpeedUnit;)J
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKilometersPerHour(D)D
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMetersPerSecond(D)D
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMilesPerHour(D)D
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
