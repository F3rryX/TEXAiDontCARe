.class public final enum Lcom/texa/careapp/utils/MeasureUnit;
.super Ljava/lang/Enum;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/utils/MeasureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/utils/MeasureUnit;

.field public static final enum CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TEMP_C"
    .end annotation
.end field

.field public static final enum DAYS:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DAY"
    .end annotation
.end field

.field public static final enum DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KM"
    .end annotation
.end field

.field public static final enum GRAMS_SEC:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GRAM_SEC"
    .end annotation
.end field

.field public static final enum KPA:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KPA"
    .end annotation
.end field

.field public static final enum LITER:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "L"
    .end annotation
.end field

.field public static final enum PERCENT:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PERCENT"
    .end annotation
.end field

.field public static final enum PRESSURE_MBAR:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MBAR"
    .end annotation
.end field

.field public static final enum RPM:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RPM"
    .end annotation
.end field

.field public static final enum SPEED_KHM:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KM_H"
    .end annotation
.end field

.field public static final enum VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "V"
    .end annotation
.end field


# instance fields
.field private mServerCode:Ljava/lang/String;

.field public stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v1, "LITER"

    const/4 v2, 0x0

    const v3, 0x7f110d0d

    const-string v4, "L"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/texa/careapp/utils/MeasureUnit;->LITER:Lcom/texa/careapp/utils/MeasureUnit;

    .line 18
    new-instance v1, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v3, "DAYS"

    const/4 v4, 0x1

    const v5, 0x7f110d08

    const-string v6, "DAY"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;

    .line 21
    new-instance v3, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v5, "PERCENT"

    const/4 v6, 0x2

    const v7, 0x7f110d0f

    invoke-direct {v3, v5, v6, v7, v5}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    .line 24
    new-instance v5, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v7, "RPM"

    const/4 v8, 0x3

    const v9, 0x7f110d10

    invoke-direct {v5, v7, v8, v9, v7}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/texa/careapp/utils/MeasureUnit;->RPM:Lcom/texa/careapp/utils/MeasureUnit;

    .line 27
    new-instance v7, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v9, "DISTANCE_KILOMETER"

    const/4 v10, 0x4

    const v11, 0x7f110d0b

    const-string v12, "KM"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    .line 30
    new-instance v9, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v11, "SPEED_KHM"

    const/4 v12, 0x5

    const v13, 0x7f110d11

    const-string v14, "KM_H"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/texa/careapp/utils/MeasureUnit;->SPEED_KHM:Lcom/texa/careapp/utils/MeasureUnit;

    .line 33
    new-instance v11, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v13, "VOLTAGE"

    const/4 v14, 0x6

    const v15, 0x7f110d12

    const-string v12, "V"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    .line 36
    new-instance v12, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v13, "CELSIUS"

    const/4 v15, 0x7

    const v14, 0x7f110d07

    const-string v10, "TEMP_C"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/texa/careapp/utils/MeasureUnit;->CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;

    .line 39
    new-instance v10, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v13, "PRESSURE_MBAR"

    const/16 v14, 0x8

    const v15, 0x7f110d0e

    const-string v8, "MBAR"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/texa/careapp/utils/MeasureUnit;->PRESSURE_MBAR:Lcom/texa/careapp/utils/MeasureUnit;

    .line 42
    new-instance v8, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v13, "GRAMS_SEC"

    const/16 v15, 0x9

    const v14, 0x7f110d09

    const-string v6, "GRAM_SEC"

    invoke-direct {v8, v13, v15, v14, v6}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/texa/careapp/utils/MeasureUnit;->GRAMS_SEC:Lcom/texa/careapp/utils/MeasureUnit;

    .line 45
    new-instance v6, Lcom/texa/careapp/utils/MeasureUnit;

    const-string v13, "KPA"

    const/16 v14, 0xa

    const v15, 0x7f110d0c

    invoke-direct {v6, v13, v14, v15, v13}, Lcom/texa/careapp/utils/MeasureUnit;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/texa/careapp/utils/MeasureUnit;->KPA:Lcom/texa/careapp/utils/MeasureUnit;

    const/16 v13, 0xb

    new-array v13, v13, [Lcom/texa/careapp/utils/MeasureUnit;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v5, v13, v0

    const/4 v0, 0x4

    aput-object v7, v13, v0

    const/4 v0, 0x5

    aput-object v9, v13, v0

    const/4 v0, 0x6

    aput-object v11, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    const/16 v0, 0x8

    aput-object v10, v13, v0

    const/16 v0, 0x9

    aput-object v8, v13, v0

    aput-object v6, v13, v14

    .line 14
    sput-object v13, Lcom/texa/careapp/utils/MeasureUnit;->$VALUES:[Lcom/texa/careapp/utils/MeasureUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/texa/careapp/utils/MeasureUnit;->stringRes:I

    .line 55
    iput-object p4, p0, Lcom/texa/careapp/utils/MeasureUnit;->mServerCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/utils/MeasureUnit;
    .locals 1

    .line 14
    const-class v0, Lcom/texa/careapp/utils/MeasureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/MeasureUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/utils/MeasureUnit;
    .locals 1

    .line 14
    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->$VALUES:[Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0}, [Lcom/texa/careapp/utils/MeasureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/utils/MeasureUnit;

    return-object v0
.end method


# virtual methods
.method public getServerCode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/utils/MeasureUnit;->mServerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStringRes()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/texa/careapp/utils/MeasureUnit;->stringRes:I

    return v0
.end method
