.class public enum Lcom/texa/carelib/profile/locale/DistanceUnit;
.super Ljava/lang/Enum;
.source "DistanceUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/DistanceUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/DistanceUnit;

.field private static final C0:D = 1.0

.field private static final C1:D = 10.0

.field private static final C2:D = 100.0

.field private static final C3:D = 1000.0

.field private static final C4:D = 10000.0

.field private static final C5:D = 100000.0

.field private static final C6:D = 1000000.0

.field private static final C7:D = 1.0E7

.field private static final C8:D = 1.0E8

.field private static final C9:D = 1.0E9

.field public static final enum CENTIMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field private static final F1:D = 3.280839895013

.field public static final enum FEETS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field private static final I1:D = 39.37007874016

.field public static final enum INCHS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum KILOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field private static final L1:D = 1.093613298338

.field private static final M1:D = 6.213711922373E-4

.field public static final enum METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum MICROMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum MILES:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum MILLIMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum NANOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

.field public static final enum YARDS:Lcom/texa/carelib/profile/locale/DistanceUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/texa/carelib/profile/locale/DistanceUnit$1;

    const-string v1, "METERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/DistanceUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit;->METERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 34
    new-instance v1, Lcom/texa/carelib/profile/locale/DistanceUnit$2;

    const-string v3, "KILOMETERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/DistanceUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/DistanceUnit;->KILOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 53
    new-instance v3, Lcom/texa/carelib/profile/locale/DistanceUnit$3;

    const-string v5, "CENTIMETERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/DistanceUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/DistanceUnit;->CENTIMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 72
    new-instance v5, Lcom/texa/carelib/profile/locale/DistanceUnit$4;

    const-string v7, "MILLIMETERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/locale/DistanceUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/locale/DistanceUnit;->MILLIMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 91
    new-instance v7, Lcom/texa/carelib/profile/locale/DistanceUnit$5;

    const-string v9, "MICROMETERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/locale/DistanceUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/locale/DistanceUnit;->MICROMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 110
    new-instance v9, Lcom/texa/carelib/profile/locale/DistanceUnit$6;

    const-string v11, "NANOMETERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/profile/locale/DistanceUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/profile/locale/DistanceUnit;->NANOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 129
    new-instance v11, Lcom/texa/carelib/profile/locale/DistanceUnit$7;

    const-string v13, "MILES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/profile/locale/DistanceUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/profile/locale/DistanceUnit;->MILES:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 148
    new-instance v13, Lcom/texa/carelib/profile/locale/DistanceUnit$8;

    const-string v15, "YARDS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/profile/locale/DistanceUnit$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/profile/locale/DistanceUnit;->YARDS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 167
    new-instance v15, Lcom/texa/carelib/profile/locale/DistanceUnit$9;

    const-string v14, "FEETS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/carelib/profile/locale/DistanceUnit$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/carelib/profile/locale/DistanceUnit;->FEETS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    .line 186
    new-instance v14, Lcom/texa/carelib/profile/locale/DistanceUnit$10;

    const-string v12, "INCHS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/texa/carelib/profile/locale/DistanceUnit$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/texa/carelib/profile/locale/DistanceUnit;->INCHS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/texa/carelib/profile/locale/DistanceUnit;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 9
    sput-object v12, Lcom/texa/carelib/profile/locale/DistanceUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/DistanceUnit;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/DistanceUnit$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/DistanceUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/DistanceUnit;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/DistanceUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/DistanceUnit;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/profile/locale/DistanceUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/DistanceUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/DistanceUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/DistanceUnit;)J
    .locals 0

    .line 221
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toCentimeters(D)D
    .locals 0

    .line 252
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toFeets(D)D
    .locals 0

    .line 312
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toInchs(D)D
    .locals 0

    .line 322
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toKilometers(D)D
    .locals 0

    .line 242
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMeters(D)D
    .locals 0

    .line 232
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMicrometers(D)D
    .locals 0

    .line 272
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMiles(D)D
    .locals 0

    .line 292
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMillimeters(D)D
    .locals 0

    .line 262
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toNanometers(D)D
    .locals 0

    .line 282
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toYards(D)D
    .locals 0

    .line 302
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method
