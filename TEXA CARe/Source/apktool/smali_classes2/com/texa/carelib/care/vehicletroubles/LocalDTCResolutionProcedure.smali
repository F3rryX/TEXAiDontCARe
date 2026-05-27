.class public Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;
.super Ljava/lang/Object;
.source "LocalDTCResolutionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;,
        Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;
    }
.end annotation


# static fields
.field private static final ECU_OBD:Ljava/lang/String; = "_OBD"

.field private static final TAG:Ljava/lang/String; = "LocalDTCResolutionProcedure"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

.field private final mExtDTCFile:Ljava/io/File;

.field private final mLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/texa/carelib/core/utils/DTCCache;

    invoke-direct {p1}, Lcom/texa/carelib/core/utils/DTCCache;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    .line 41
    iput-object p2, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mExtDTCFile:Ljava/io/File;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->setLanguages(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;)Landroid/content/Context;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFullURN(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:"

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 184
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%08X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setLanguages(Ljava/util/Locale;)V
    .locals 1

    .line 49
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->setLanguages(Ljava/util/Locale;Ljava/util/Locale;)V

    return-void
.end method

.method public setLanguages(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public translateDTCsForECU(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;JLjava/util/Map;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 69
    iget-object v5, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/Locale;

    .line 70
    iget-object v6, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    iget-object v6, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lcom/texa/carelib/core/utils/DTCCache;->getCachedDTCs(Ljava/util/Map;[Ljava/util/Locale;Ljava/util/Date;)Ljava/util/List;

    move-result-object v6

    .line 73
    iget-object v7, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    invoke-virtual {v7, v4}, Lcom/texa/carelib/core/utils/DTCCache;->getNotCachedDTC(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 75
    invoke-static {v4}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 76
    sget-object v4, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v7, "Nothing to do. All DTCs are available from the cache."

    invoke-static {v4, v7, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-interface {v1, v6, v2, v3, v8}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V

    return-void

    .line 81
    :cond_0
    new-instance v6, Lcom/texa/carelib/care/vehicletroubles/internal/PCodeConverterEOBD;

    invoke-direct {v6}, Lcom/texa/carelib/care/vehicletroubles/internal/PCodeConverterEOBD;-><init>()V

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 86
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    invoke-static {v11}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    .line 91
    invoke-static {v11}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 92
    invoke-static {v11}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v20

    .line 93
    invoke-static {v11}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    .line 95
    new-instance v13, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    invoke-direct {v13}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;-><init>()V

    .line 96
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setAcquisitionDate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 97
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v8}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setStatus(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 100
    iget-object v8, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mExtDTCFile:Ljava/io/File;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 101
    new-instance v8, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;

    iget-object v9, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mExtDTCFile:Ljava/io/File;

    invoke-direct {v8, v0, v9}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;-><init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Ljava/io/File;)V

    move-object v9, v13

    move-object v13, v8

    move-wide/from16 v22, v14

    move-wide/from16 v14, v20

    move-wide/from16 v16, v11

    move-wide/from16 v18, v22

    .line 103
    invoke-virtual/range {v13 .. v19}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->getDTCInfo(JJJ)Landroid/database/Cursor;

    move-result-object v13

    .line 104
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    .line 107
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v1, v22

    .line 109
    invoke-direct {v0, v15, v1, v2}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->getFullURN(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setID(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    const/4 v3, 0x1

    .line 110
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setECU(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    const/4 v3, 0x2

    .line 111
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setCode(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 112
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-virtual {v8}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->supportsTranslations()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    iget-object v3, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-virtual {v8, v15, v1, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->getDTCTranslations(Ljava/lang/String;JLjava/util/List;)Landroid/database/Cursor;

    move-result-object v3

    .line 118
    iget-object v8, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v13, v8, [Ljava/util/Locale;

    .line 119
    iget-object v14, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/String;

    .line 121
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_5

    .line 122
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 123
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/texa/carelib/core/LocaleHelper;->fromRFC3066(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v17, v5

    .line 124
    iget-object v5, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    move/from16 v18, v5

    move-object/from16 v19, v7

    const/4 v5, 0x0

    .line 126
    :goto_2
    iget-object v7, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 127
    iget-object v7, v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mLocales:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    .line 128
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v18, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_2
    move/from16 v5, v18

    goto :goto_3

    :cond_3
    move-object/from16 v19, v7

    :goto_3
    if-ltz v5, :cond_4

    .line 136
    aput-object v4, v13, v5

    const/4 v0, 0x1

    .line 137
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v5

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v19

    goto :goto_1

    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    .line 142
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_8

    if-ge v0, v14, :cond_8

    .line 145
    aget-object v3, v13, v0

    if-eqz v3, :cond_6

    aget-object v3, v15, v0

    if-eqz v3, :cond_6

    .line 146
    aget-object v3, v13, v0

    aget-object v4, v15, v0

    invoke-virtual {v9, v3, v4}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->addDetail(Ljava/util/Locale;Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-wide/from16 v1, v22

    goto :goto_5

    :cond_a
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    move-object v9, v13

    move-wide v1, v14

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    .line 154
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->isOBD()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {v6, v1, v2}, Lcom/texa/carelib/care/vehicletroubles/internal/PCodeConverterEOBD;->convert(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setCode(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 156
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "OBD:%1$d/Variant%2$d"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->getFullURN(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setID(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    const-string v0, "_OBD"

    .line 157
    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setECU(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    goto :goto_7

    :cond_b
    move-object/from16 v3, p0

    .line 159
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "OEM:%1$d/Variant%2$d"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->getFullURN(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setID(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    goto :goto_7

    :cond_c
    move-object/from16 v3, p0

    .line 163
    :goto_7
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getOccurrences()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setOccurrences(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 164
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getSourceNode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setSourceNode(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 165
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setToken(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 166
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const-string v4, "%s"

    invoke-static {v0, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v9}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTC;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-object v0, v3

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_0

    :cond_d
    move-object v3, v0

    move-object/from16 v17, v5

    move-object v1, v7

    .line 170
    iget-object v0, v3, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    sget-object v2, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v4, v2}, Lcom/texa/carelib/core/utils/DTCCache;->update(Ljava/util/List;[Ljava/util/Locale;Lcom/texa/carelib/core/utils/GenericAdapter;)V

    move-object/from16 v0, p1

    move-wide/from16 v4, p2

    const/4 v2, 0x0

    .line 171
    invoke-interface {v0, v1, v4, v5, v2}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V

    return-void
.end method
