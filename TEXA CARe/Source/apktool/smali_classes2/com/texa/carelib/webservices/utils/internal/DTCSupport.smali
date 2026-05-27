.class public Lcom/texa/carelib/webservices/utils/internal/DTCSupport;
.super Ljava/lang/Object;
.source "DTCSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DTCSupport"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGson()Lcom/google/gson/Gson;
    .locals 3

    .line 49
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 50
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    .line 54
    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/texa/carelib/webservices/utils/internal/GsonIso8601DateSerializer;

    invoke-direct {v2}, Lcom/texa/carelib/webservices/utils/internal/GsonIso8601DateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 55
    const-class v1, Ljava/util/Locale;

    new-instance v2, Lcom/texa/carelib/webservices/utils/internal/GsonDTCLocaleSerializer;

    invoke-direct {v2}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCLocaleSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 56
    const-class v1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    new-instance v2, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;

    invoke-direct {v2}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 58
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC;
    .locals 2

    .line 29
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    invoke-static {}, Lcom/texa/carelib/webservices/utils/internal/DTCSupport;->createGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 34
    const-class v1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicletroubles/DTC;

    return-object p0
.end method

.method public static toJson(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    invoke-static {}, Lcom/texa/carelib/webservices/utils/internal/DTCSupport;->createGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
