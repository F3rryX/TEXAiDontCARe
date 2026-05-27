.class public Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;
.super Ljava/lang/Object;
.source "TexaURLConnectionHelper.java"


# static fields
.field public static final PREFIX_ADTOKEN:Ljava/lang/String; = "KO_ADTOKEN"

.field public static final PREFIX_CRTOKEN:Ljava/lang/String; = "KO_CRTOKEN"

.field public static final PREFIX_DEVICE:Ljava/lang/String; = "KO_DEVICE"

.field private static final PREFIX_DIAGCONFIG_SELECTION_MISSING:Ljava/lang/String; = "KO_DIAGCONFIG-SELECTION_MISSING "

.field public static final PREFIX_DIAGNOSIS_CONFIGURATION_FAILED:Ljava/lang/String; = "KO_DIAGCONFIG-FAILED"

.field public static final PREFIX_DTC:Ljava/lang/String; = "KO_DTC"

.field public static final PREFIX_FILES:Ljava/lang/String; = "KO_FILES"

.field public static final PREFIX_HWTOKEN:Ljava/lang/String; = "KO_HWTOKEN"

.field private static final PREFIX_INFO_MISSING:Ljava/lang/String; = "KO_APP-INFO_MISSING"

.field public static final PREFIX_INPUT:Ljava/lang/String; = "KO_INPUT"

.field public static final PREFIX_OUTPUT:Ljava/lang/String; = "KO_OUTPUT"

.field public static final PREFIX_SELECTION:Ljava/lang/String; = "KO_SELECTION"

.field public static final PREFIX_SESSION:Ljava/lang/String; = "KO_SESSION"

.field private static final PREFIX_VERSION_BLACKLISTED:Ljava/lang/String; = "KO_APP-VERSION_BLACKLISTED"

.field public static final TAG:Ljava/lang/String; = "TexaURLConnectionHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAPIErrorCode(Ljava/lang/String;)I
    .locals 2

    .line 300
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, -0x1

    const-string v1, "KO_ADTOKEN"

    .line 303
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_0
    const-string v1, "KO_CRTOKEN"

    .line 305
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_1
    const-string v1, "KO_DEVICE"

    .line 307
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_2
    const-string v1, "KO_DTC"

    .line 309
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_3
    const-string v1, "KO_FILES"

    .line 311
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    const-string v1, "KO_HWTOKEN"

    .line 313
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v1, "KO_INPUT"

    .line 315
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const-string v1, "KO_OUTPUT"

    .line 317
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    const-string v1, "KO_SELECTION"

    .line 319
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_0

    :cond_8
    const-string v1, "KO_SESSION"

    .line 321
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    :cond_9
    const-string v1, "KO_DIAGCONFIG-FAILED"

    .line 323
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x1b

    goto :goto_0

    :cond_a
    const-string v1, "KO_APP-VERSION_BLACKLISTED"

    .line 325
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x1c

    goto :goto_0

    :cond_b
    const-string v1, "KO_APP-INFO_MISSING"

    .line 327
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0x1d

    goto :goto_0

    :cond_c
    const-string v1, "KO_DIAGCONFIG-SELECTION_MISSING "

    .line 329
    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 v0, 0x24

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_0
    return v0
.end method

.method public static getError(Ljava/net/URLConnection;Lcom/texa/carelib/webservices/internal/HttpApiError;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 5

    .line 266
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 270
    :goto_0
    invoke-static {v2}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getAPIErrorCode(Ljava/lang/String;)I

    move-result v3

    .line 273
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 274
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getDetails()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CareError#EXTRA_API_URL"

    invoke-virtual {v0, p1, p0}, Lcom/texa/carelib/core/CareError$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    const-string p0, "CareError#EXTRA_API_ERROR"

    .line 283
    invoke-virtual {v0, p0, v2}, Lcom/texa/carelib/core/CareError$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    const-string p0, "CareError#EXTRA_API_ERROR_CODE"

    .line 284
    invoke-virtual {v0, p0, v3}, Lcom/texa/carelib/core/CareError$Builder;->putExtra(Ljava/lang/String;I)Lcom/texa/carelib/core/CareError$Builder;

    const-string p0, "CareError#EXTRA_API_ERROR_DETAIL"

    .line 285
    invoke-virtual {v0, p0, v1}, Lcom/texa/carelib/core/CareError$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    return-object v0
.end method

.method public static getErrorBody(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 219
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 221
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 222
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/StreamUtils;->getASCIIContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 227
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 228
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 229
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/StreamUtils;->getASCIIContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHeaderField(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getHeaderField(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderField(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseCode(Ljava/net/URLConnection;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    const-string v2, "Generic IO error"

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 114
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v3, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0

    .line 120
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 122
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 125
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 127
    sget-object v3, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 131
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not yet supported."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResponseMessage(Ljava/net/URLConnection;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, ""

    const/16 v2, 0x190

    const-string v3, "X-API-Error"

    if-eqz v0, :cond_2

    .line 150
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    if-ne p1, v2, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    return-object v1

    .line 169
    :cond_2
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 170
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    if-ne p1, v2, :cond_5

    .line 174
    sget-object p1, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Printing Response Header..."

    invoke-static {p1, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    sget-object v5, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v7

    const-string v4, "%s=%s"

    invoke-static {v5, v4, v6}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 185
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 186
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 188
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 190
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 193
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, p0

    :goto_4
    return-object v1

    .line 202
    :cond_7
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not yet supported."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static hasResponseBody(I)Z
    .locals 1

    .line 342
    invoke-static {p0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->isSuccessResponseCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuccessResponseCode(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setRequestMethod(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 245
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 246
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 247
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 249
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 250
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not yet supported."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
