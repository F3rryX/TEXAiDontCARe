.class public enum Lcom/texa/carelib/profile/locale/MassFlowRateUnit;
.super Ljava/lang/Enum;
.source "MassFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/MassFlowRateUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field public static final enum GRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field public static final enum GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field private static final KG:D = 1000.0

.field public static final enum KILOGRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field public static final enum KILOGRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field private static final O:D = 0.03527396194958

.field public static final enum OUNCE_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field public static final enum OUNCE_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field private static final P:D = 0.002204622621849

.field public static final enum POUND_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field public static final enum POUND_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

.field private static final SECOND_PER_HOUR:D = 3600.0


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$1;

    const-string v1, "GRAM_PER_SECOND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 39
    new-instance v1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$2;

    const-string v3, "GRAM_PER_HOUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 60
    new-instance v3, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$3;

    const-string v5, "KILOGRAM_PER_SECOND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->KILOGRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 77
    new-instance v5, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;

    const-string v7, "KILOGRAM_PER_HOUR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 98
    new-instance v7, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$5;

    const-string v9, "OUNCE_PER_SECOND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 115
    new-instance v9, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$6;

    const-string v11, "OUNCE_PER_HOUR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 132
    new-instance v11, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$7;

    const-string v13, "POUND_PER_SECOND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->POUND_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    .line 149
    new-instance v13, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;

    const-string v15, "POUND_PER_HOUR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->POUND_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 10
    sput-object v15, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassFlowRateUnit$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/MassFlowRateUnit;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/MassFlowRateUnit;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/MassFlowRateUnit;)J
    .locals 0

    .line 183
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGramPerHour(D)D
    .locals 0

    .line 205
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGramPerSecond(D)D
    .locals 0

    .line 194
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKilogramPerHour(D)D
    .locals 0

    .line 227
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKilogramPerSecond(D)D
    .locals 0

    .line 216
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toOuncePerHour(D)D
    .locals 0

    .line 247
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toOuncePerSecond(D)D
    .locals 0

    .line 237
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toPoundPerHour(D)D
    .locals 0

    .line 267
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toPoundPerSecond(D)D
    .locals 0

    .line 257
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
