.class public enum Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;
.super Ljava/lang/Enum;
.source "VolumeFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

.field public static final enum GALLON_UK_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

.field public static final enum GALLON_USA_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

.field private static final G_UK:D = 0.219969248299

.field private static final G_US:D = 0.2641720523581

.field public static final enum LITER_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$1;

    const-string v1, "LITER_PER_HOUR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->LITER_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    .line 21
    new-instance v1, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$2;

    const-string v3, "GALLON_UK_PER_HOUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->GALLON_UK_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    .line 33
    new-instance v3, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$3;

    const-string v5, "GALLON_USA_PER_HOUR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->GALLON_USA_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/VolumeFlowRateUnit$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/VolumeFlowRateUnit;)J
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGallonUKPerHour(D)D
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGallonUSAPerHour(D)D
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toLiterPerHour(D)D
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
