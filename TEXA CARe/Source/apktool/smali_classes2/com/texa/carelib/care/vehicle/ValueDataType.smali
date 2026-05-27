.class public final enum Lcom/texa/carelib/care/vehicle/ValueDataType;
.super Ljava/lang/Enum;
.source "ValueDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/vehicle/ValueDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum DATETIME:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum DTC:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum NOT_READ:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum RAW_DATA:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field public static final enum STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNDEF:Lcom/texa/carelib/care/vehicle/ValueDataType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v1, "UNDEF"

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->UNDEF:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 24
    new-instance v1, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v3, "NOT_READ"

    const/4 v4, 0x1

    const/16 v5, 0xfe

    invoke-direct {v1, v3, v4, v5}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/carelib/care/vehicle/ValueDataType;->NOT_READ:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 29
    new-instance v3, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v5, "NUMERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 34
    new-instance v5, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v7, "ENUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 39
    new-instance v7, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v9, "STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 44
    new-instance v9, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v11, "DTC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v8}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/texa/carelib/care/vehicle/ValueDataType;->DTC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 49
    new-instance v11, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v13, "DATETIME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v10}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/texa/carelib/care/vehicle/ValueDataType;->DATETIME:Lcom/texa/carelib/care/vehicle/ValueDataType;

    .line 54
    new-instance v13, Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v15, "RAW_DATA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v12}, Lcom/texa/carelib/care/vehicle/ValueDataType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/texa/carelib/care/vehicle/ValueDataType;->RAW_DATA:Lcom/texa/carelib/care/vehicle/ValueDataType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/texa/carelib/care/vehicle/ValueDataType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 13
    sput-object v15, Lcom/texa/carelib/care/vehicle/ValueDataType;->$VALUES:[Lcom/texa/carelib/care/vehicle/ValueDataType;

    const-string v0, "ValueDataType"

    .line 57
    sput-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/texa/carelib/care/vehicle/ValueDataType;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 6

    .line 73
    invoke-static {}, Lcom/texa/carelib/care/vehicle/ValueDataType;->values()[Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {v4}, Lcom/texa/carelib/care/vehicle/ValueDataType;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Invalid parameter type: %d"

    invoke-static {v0, p0, v1}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object p0, Lcom/texa/carelib/care/vehicle/ValueDataType;->UNDEF:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 1

    .line 13
    const-class v0, Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 1

    .line 13
    sget-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->$VALUES:[Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/vehicle/ValueDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/texa/carelib/care/vehicle/ValueDataType;->mValue:I

    return v0
.end method
