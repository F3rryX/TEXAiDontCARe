.class Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;
.super Ljava/lang/Object;
.source "MockServiceDTCResolutionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;
    }
.end annotation


# static fields
.field private static final ECU_OBD:Ljava/lang/String; = "_OBD"

.field private static final KEY_DETAIL:Ljava/lang/String; = "detail"

.field private static final KEY_HELP:Ljava/lang/String; = "help"

.field private static final RESOLVE_DTC_DELAY:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "MockServiceDTCResolutionProcedure"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTranslations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    .line 63
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->initTranslations()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->getLocalizedString(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->escapeJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    .line 335
    :cond_0
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "}"

    if-eqz v3, :cond_4

    .line 337
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v5, "\""

    .line 339
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 344
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ","

    if-eqz v6, :cond_3

    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 348
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 350
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v6, "null"

    .line 352
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 355
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 364
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p6, 0x7

    new-array p6, p6, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, p6, v2

    const/4 v2, 0x1

    aput-object p2, p6, v2

    const/4 p2, 0x2

    aput-object p4, p6, p2

    const/4 p2, 0x3

    aput-object p5, p6, p2

    const/4 p2, 0x4

    const-string p4, "ACTIVE"

    aput-object p4, p6, p2

    const/4 p2, 0x5

    .line 372
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p6, p2

    const/4 p2, 0x6

    aput-object v1, p6, p2

    const-string/jumbo p2, "{\"dtc_token\":\"%s\",\"dtc_id\":%s,\"code\":\"%s\",\"ecu\":\"%s\",\"status\":\"%s\",\"timestamp\":\"%s\",\"descriptions\": %s}"

    .line 366
    invoke-static {p2, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-static {p2}, Lcom/texa/carelib/webservices/utils/internal/DTCSupport;->fromJSON(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private escapeJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "\\"

    const-string v3, "\\\\"

    .line 72
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\""

    const-string v4, "\\\""

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 82
    aget-object v5, v1, v2

    .line 83
    aget-object v6, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getLocalizedString(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 384
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 387
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 388
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 389
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_0

    .line 392
    :cond_1
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 394
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p1, v2, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 397
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initTranslations()V
    .locals 14

    .line 90
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "1"

    const-string v3, "C9w4+3Znf9b0O6cnq3kKTQ=="

    const-string v4, "P0001"

    const-string v5, "_OBD"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$2;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$2;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "412"

    const-string v10, "pOD9B3Ey9Cy2xF48GC9iuA=="

    const-string v11, "P0119"

    const-string v12, "_OBD"

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$3;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$3;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "135"

    const-string v3, "P0042"

    const-string v4, "P0042"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$4;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$4;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "137"

    const-string v10, "P0043"

    const-string v11, "P0043"

    const-string v12, "_OBD"

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "683"

    const-string v3, "P0215"

    const-string v4, "P0215"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$6;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$6;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "692"

    const-string v10, "P0219"

    const-string v11, "P0219"

    const-string v12, "_OBD"

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$7;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$7;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "921"

    const-string v3, "P0298"

    const-string v4, "P0298"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$8;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$8;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "1135"

    const-string v10, "P0313"

    const-string v11, "P0313"

    const-string v12, "_OBD"

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "1402"

    const-string v3, "P0421"

    const-string v4, "P0421"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$10;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$10;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "2115"

    const-string v10, "P0657"

    const-string v11, "P0657"

    const-string v12, "_OBD"

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$11;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$11;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "2237"

    const-string v3, "P0692"

    const-string v4, "P0692"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v13, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$12;

    invoke-direct {v13, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$12;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v9, "2326"

    const-string v10, "P070F"

    const-string v11, "P070F"

    const-string v12, "_OBD"

    invoke-direct/range {v7 .. v13}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    new-instance v6, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$13;

    invoke-direct {v6, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$13;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V

    const-string v2, "6815"

    const-string v3, "P2261"

    const-string v4, "P2261"

    const-string v5, "_OBD"

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->addDTCToCollection(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized resolveDTCIDs(Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;[",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 402
    :try_start_0
    new-instance v7, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->mTranslations:Ljava/util/Map;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;-><init>(Ljava/util/Map;Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 403
    invoke-virtual {v7, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
