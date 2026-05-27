.class public enum Lcom/texa/carelib/profile/locale/PressureUnit;
.super Ljava/lang/Enum;
.source "PressureUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/PressureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/PressureUnit;

.field public static final enum KILOPASCAL:Lcom/texa/carelib/profile/locale/PressureUnit;

.field private static final P:D = 0.14503773773

.field public static final enum PSI:Lcom/texa/carelib/profile/locale/PressureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/texa/carelib/profile/locale/PressureUnit$1;

    const-string v1, "KILOPASCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/PressureUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/PressureUnit;->KILOPASCAL:Lcom/texa/carelib/profile/locale/PressureUnit;

    .line 20
    new-instance v1, Lcom/texa/carelib/profile/locale/PressureUnit$2;

    const-string v3, "PSI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/PressureUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/PressureUnit;->PSI:Lcom/texa/carelib/profile/locale/PressureUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/profile/locale/PressureUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 9
    sput-object v3, Lcom/texa/carelib/profile/locale/PressureUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/PressureUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/PressureUnit$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/PressureUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/PressureUnit;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/PressureUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/PressureUnit;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/profile/locale/PressureUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/PressureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/PressureUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/PressureUnit;)J
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toCentimeters(D)D
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toFeets(D)D
    .locals 0

    .line 138
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toInchs(D)D
    .locals 0

    .line 148
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKiloPascal(D)D
    .locals 0

    .line 58
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toLardas(D)D
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMicrometers(D)D
    .locals 0

    .line 98
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMiles(D)D
    .locals 0

    .line 118
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMillimeters(D)D
    .locals 0

    .line 88
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toNanometers(D)D
    .locals 0

    .line 108
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toPSI(D)D
    .locals 0

    .line 68
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
