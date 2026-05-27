.class Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;
.super Ljava/lang/Object;
.source "HttpServiceDTCResolutionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;
    }
.end annotation


# static fields
.field public static final KEY_DTC_LIST:Ljava/lang/String; = "dtc_list"

.field public static final KEY_DTC_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_DTC_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_DTC_TOKEN:Ljava/lang/String; = "dtc_token"

.field public static final TAG:Ljava/lang/String; = "HttpServiceDTCResolutionProcedure"

.field public static final URL_PATH:Ljava/lang/String; = "/api/errorcodes"


# instance fields
.field private mCachedDTCs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private final mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

.field private mLastUsedSessionID:Ljava/lang/String;

.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const-string v2, "mCachedDTCsLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 74
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    .line 76
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mLastUsedSessionID:Ljava/lang/String;

    .line 77
    new-instance p1, Lcom/texa/carelib/core/utils/DTCCache;

    invoke-direct {p1}, Lcom/texa/carelib/core/utils/DTCCache;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/DTCCache;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 181
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_dtc_resolution_fails:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1
.end method

.method private getFields(Ljava/lang/String;[Ljava/util/Locale;Ljava/util/Map;Ljava/util/Date;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CARe-HWID"

    .line 187
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getAcceptLanguage([Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Accept-Language"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dtc_token"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {p3}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object p3

    const-string v2, "status"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->getISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "timestamp"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "dtc_list"

    .line 202
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getISO8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTC"

    .line 208
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 211
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createFromJSON(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 230
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 232
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    .line 237
    const-class v2, Ljava/util/Date;

    new-instance v3, Lcom/texa/carelib/webservices/utils/internal/GsonIso8601DateSerializer;

    invoke-direct {v3}, Lcom/texa/carelib/webservices/utils/internal/GsonIso8601DateSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 238
    const-class v2, Ljava/util/Locale;

    new-instance v3, Lcom/texa/carelib/webservices/utils/internal/GsonDTCLocaleSerializer;

    invoke-direct {v3}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCLocaleSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 239
    const-class v2, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    new-instance v3, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;

    invoke-direct {v3}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 241
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 242
    const-class v2, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Invalid JSON"

    invoke-static {v1, p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public declared-synchronized resolveDTCIDs(Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 85
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const-string p2, "Nothing to do for this ECU. No DTCs seems to be present."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance p1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p5, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isSessionOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mLastUsedSessionID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/DTCCache;->clear()V

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mLastUsedSessionID:Ljava/lang/String;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v3, "resolveDTCIDs"

    invoke-virtual {v0, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 101
    :try_start_2
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    invoke-virtual {v0, p1, p2, p4}, Lcom/texa/carelib/core/utils/DTCCache;->getCachedDTCs(Ljava/util/Map;[Ljava/util/Locale;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCs:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :try_start_3
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v3, "resolveDTCIDs"

    invoke-virtual {v0, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 107
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mDTCCache:Lcom/texa/carelib/core/utils/DTCCache;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/DTCCache;->getNotCachedDTC(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const-string p2, "Nothing to do. All DTCs are available from the cache."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string p2, "resolveDTCIDs2"

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    :try_start_4
    new-instance p1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCs:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p0, p2, v1}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p5, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string p2, "resolveDTCIDs2"

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_6
    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string p3, "resolveDTCIDs2"

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    .line 123
    :cond_3
    invoke-direct {p0, p3, p2, p1, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->getFields(Ljava/lang/String;[Ljava/util/Locale;Ljava/util/Map;Ljava/util/Date;)Ljava/util/Map;

    move-result-object v4

    .line 125
    new-instance v5, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;

    invoke-direct {v5, p0, p5, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;Lcom/texa/carelib/core/Callback;Ljava/util/Map;[Ljava/util/Locale;)V

    .line 177
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    const-string v1, "/api/errorcodes"

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 178
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 104
    :try_start_7
    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string p3, "resolveDTCIDs"

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
