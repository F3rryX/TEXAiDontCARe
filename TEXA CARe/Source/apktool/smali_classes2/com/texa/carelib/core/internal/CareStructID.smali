.class public final enum Lcom/texa/carelib/core/internal/CareStructID;
.super Ljava/lang/Enum;
.source "CareStructID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/core/internal/CareStructID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/core/internal/CareStructID;

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/texa/carelib/core/internal/CareStructID;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRANK_REPORT_OPERATING:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum CRANK_REPORT_STANDBY:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum CRASH_REPORT_STANDARD:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum CRASH_REPORT_STANDARD_LOW_POWER:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum CRASH_REPORT_STANDARD_NOT_VALIDATED:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum CRASH_REPORT_VERBOSE:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum ETRUCK_TRIP_BEGIN_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum ETRUCK_TRIP_END_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum ETRUCK_TRIP_STATISTICS_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum ROTATION_MATRIX:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum TRIP_BEGIN_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum TRIP_END_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum TRIP_ERROR_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum TRIP_STATISTICS_INFO:Lcom/texa/carelib/core/internal/CareStructID;

.field public static final enum UNDEF:Lcom/texa/carelib/core/internal/CareStructID;


# instance fields
.field private mID:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 17
    new-instance v0, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v1, "UNDEF"

    const/4 v2, 0x0

    const-string v3, "N.A."

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/texa/carelib/core/internal/CareStructID;->UNDEF:Lcom/texa/carelib/core/internal/CareStructID;

    .line 21
    new-instance v1, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v3, "CRASH_REPORT_STANDARD"

    const/4 v4, 0x1

    const v5, 0xe901

    invoke-direct {v1, v3, v4, v5, v3}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD:Lcom/texa/carelib/core/internal/CareStructID;

    .line 26
    new-instance v3, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v5, "CRASH_REPORT_STANDARD_NOT_VALIDATED"

    const/4 v6, 0x2

    const v7, 0xe904

    invoke-direct {v3, v5, v6, v7, v5}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_NOT_VALIDATED:Lcom/texa/carelib/core/internal/CareStructID;

    .line 31
    new-instance v5, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v7, "CRASH_REPORT_STANDARD_LOW_POWER"

    const/4 v8, 0x3

    const v9, 0xe905

    invoke-direct {v5, v7, v8, v9, v7}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_LOW_POWER:Lcom/texa/carelib/core/internal/CareStructID;

    .line 36
    new-instance v7, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v9, "CRASH_REPORT_VERBOSE"

    const/4 v10, 0x4

    const v11, 0xe902

    invoke-direct {v7, v9, v10, v11, v9}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_VERBOSE:Lcom/texa/carelib/core/internal/CareStructID;

    .line 41
    new-instance v9, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v11, "CRANK_REPORT_STANDBY"

    const/4 v12, 0x5

    const v13, 0xea02

    invoke-direct {v9, v11, v12, v13, v11}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/texa/carelib/core/internal/CareStructID;->CRANK_REPORT_STANDBY:Lcom/texa/carelib/core/internal/CareStructID;

    .line 46
    new-instance v11, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v13, "CRANK_REPORT_OPERATING"

    const/4 v14, 0x6

    const v15, 0xea03

    invoke-direct {v11, v13, v14, v15, v13}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/texa/carelib/core/internal/CareStructID;->CRANK_REPORT_OPERATING:Lcom/texa/carelib/core/internal/CareStructID;

    .line 51
    new-instance v13, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v15, "ROTATION_MATRIX"

    const/4 v14, 0x7

    const v12, 0xe903

    invoke-direct {v13, v15, v14, v12, v15}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/texa/carelib/core/internal/CareStructID;->ROTATION_MATRIX:Lcom/texa/carelib/core/internal/CareStructID;

    .line 56
    new-instance v12, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v15, "TRIP_BEGIN_INFO"

    const/16 v14, 0x8

    const v10, 0xe803

    invoke-direct {v12, v15, v14, v10, v15}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_BEGIN_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 61
    new-instance v10, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v15, "TRIP_END_INFO"

    const/16 v14, 0x9

    const v8, 0xe804

    invoke-direct {v10, v15, v14, v8, v15}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_END_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 66
    new-instance v8, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v15, "TRIP_STATISTICS_INFO"

    const/16 v14, 0xa

    const v6, 0xe80c

    invoke-direct {v8, v15, v14, v6, v15}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_STATISTICS_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 71
    new-instance v6, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v15, "TRIP_ERROR_INFO"

    const/16 v14, 0xb

    const v4, 0xe808

    invoke-direct {v6, v15, v14, v4, v15}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_ERROR_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 76
    new-instance v4, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v14, "ETRUCK_TRIP_BEGIN_INFO"

    const/16 v15, 0xc

    const v2, 0xeb03

    move-object/from16 v16, v6

    const-string v6, "ETRUCK_TRIP_BEGIN_INFO"

    invoke-direct {v4, v14, v15, v2, v6}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/core/internal/CareStructID;->ETRUCK_TRIP_BEGIN_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 81
    new-instance v2, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v6, "ETRUCK_TRIP_END_INFO"

    const/16 v14, 0xd

    const v15, 0xeb04

    move-object/from16 v17, v4

    const-string v4, "ETRUCK_TRIP_END_INFO"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/core/internal/CareStructID;->ETRUCK_TRIP_END_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    .line 86
    new-instance v4, Lcom/texa/carelib/core/internal/CareStructID;

    const-string v6, "ETRUCK_TRIP_STATISTICS_INFO"

    const/16 v14, 0xe

    const v15, 0xeb0c

    move-object/from16 v18, v2

    const-string v2, "ETRUCK_TRIP_STATISTICS_INFO"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/texa/carelib/core/internal/CareStructID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/core/internal/CareStructID;->ETRUCK_TRIP_STATISTICS_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/texa/carelib/core/internal/CareStructID;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v4, v2, v0

    .line 13
    sput-object v2, Lcom/texa/carelib/core/internal/CareStructID;->$VALUES:[Lcom/texa/carelib/core/internal/CareStructID;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/internal/CareStructID;->CACHE:Ljava/util/Map;

    .line 154
    invoke-static {}, Lcom/texa/carelib/core/internal/CareStructID;->values()[Lcom/texa/carelib/core/internal/CareStructID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 155
    sget-object v4, Lcom/texa/carelib/core/internal/CareStructID;->CACHE:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/texa/carelib/core/internal/CareStructID;->mID:I

    .line 90
    iput-object p4, p0, Lcom/texa/carelib/core/internal/CareStructID;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromBlockID(I)Lcom/texa/carelib/core/internal/CareStructID;
    .locals 2

    .line 130
    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/core/internal/CareStructID;

    return-object p0

    .line 134
    :cond_0
    sget-object p0, Lcom/texa/carelib/core/internal/CareStructID;->UNDEF:Lcom/texa/carelib/core/internal/CareStructID;

    return-object p0
.end method

.method public static getBlockName(I)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/texa/carelib/core/internal/CareStructID;->fromBlockID(I)Lcom/texa/carelib/core/internal/CareStructID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/texa/carelib/core/internal/CareStructID;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidBlockID(I)Z
    .locals 1

    .line 144
    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->UNDEF:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v0

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->CACHE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/core/internal/CareStructID;
    .locals 1

    .line 13
    const-class v0, Lcom/texa/carelib/core/internal/CareStructID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/core/internal/CareStructID;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/core/internal/CareStructID;
    .locals 1

    .line 13
    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->$VALUES:[Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v0}, [Lcom/texa/carelib/core/internal/CareStructID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/core/internal/CareStructID;

    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/texa/carelib/core/internal/CareStructID;->mID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/texa/carelib/core/internal/CareStructID;->mName:Ljava/lang/String;

    return-object v0
.end method
