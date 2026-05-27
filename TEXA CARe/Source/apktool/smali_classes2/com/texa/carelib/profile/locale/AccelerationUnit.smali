.class public enum Lcom/texa/carelib/profile/locale/AccelerationUnit;
.super Ljava/lang/Enum;
.source "AccelerationUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/AccelerationUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/AccelerationUnit;

.field public static final enum METER_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

.field public static final enum YARDS_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/texa/carelib/profile/locale/AccelerationUnit$1;

    const-string v1, "METER_PER_SQUARE_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/AccelerationUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/AccelerationUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    .line 20
    new-instance v1, Lcom/texa/carelib/profile/locale/AccelerationUnit$2;

    const-string v3, "YARDS_PER_SQUARE_SECOND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/AccelerationUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/AccelerationUnit;->YARDS_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/profile/locale/AccelerationUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 9
    sput-object v3, Lcom/texa/carelib/profile/locale/AccelerationUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/AccelerationUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/AccelerationUnit$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/AccelerationUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/AccelerationUnit;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/AccelerationUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/AccelerationUnit;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/profile/locale/AccelerationUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/AccelerationUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/AccelerationUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/AccelerationUnit;)J
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMetersPerSquareSecond(D)D
    .locals 0

    .line 58
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toYardsPerSquareSecond(D)D
    .locals 0

    .line 69
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
