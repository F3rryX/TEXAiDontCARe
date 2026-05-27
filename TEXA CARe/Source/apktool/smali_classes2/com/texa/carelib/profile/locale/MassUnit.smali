.class public enum Lcom/texa/carelib/profile/locale/MassUnit;
.super Ljava/lang/Enum;
.source "MassUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/MassUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/MassUnit;

.field public static final enum GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

.field private static final KG:D = 1000.0

.field public static final enum KILOGRAM:Lcom/texa/carelib/profile/locale/MassUnit;

.field private static final O:D = 0.03527396194958

.field public static final enum OUNCE:Lcom/texa/carelib/profile/locale/MassUnit;

.field private static final P:D = 0.002204622621849

.field public static final enum POUND:Lcom/texa/carelib/profile/locale/MassUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/texa/carelib/profile/locale/MassUnit$1;

    const-string v1, "GRAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/MassUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/MassUnit;->GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    .line 27
    new-instance v1, Lcom/texa/carelib/profile/locale/MassUnit$2;

    const-string v3, "KILOGRAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/MassUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/MassUnit;->KILOGRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    .line 42
    new-instance v3, Lcom/texa/carelib/profile/locale/MassUnit$3;

    const-string v5, "OUNCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/MassUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/MassUnit;->OUNCE:Lcom/texa/carelib/profile/locale/MassUnit;

    .line 57
    new-instance v5, Lcom/texa/carelib/profile/locale/MassUnit$4;

    const-string v7, "POUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/locale/MassUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/locale/MassUnit;->POUND:Lcom/texa/carelib/profile/locale/MassUnit;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/profile/locale/MassUnit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/texa/carelib/profile/locale/MassUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/MassUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/MassUnit$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/MassUnit;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/MassUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/MassUnit;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/profile/locale/MassUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/MassUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/MassUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/MassUnit;)J
    .locals 0

    .line 89
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGram(D)D
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKilogram(D)D
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toOunce(D)D
    .locals 0

    .line 121
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toPound(D)D
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
