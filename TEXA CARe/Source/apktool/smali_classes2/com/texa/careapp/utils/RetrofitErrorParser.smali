.class public Lcom/texa/careapp/utils/RetrofitErrorParser;
.super Ljava/lang/Object;
.source "RetrofitErrorParser.java"


# static fields
.field private static ERROR_CODES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RetrofitErrorParser"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a4c

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_DONGLE-STATUS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_USER-EXISTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_INPUT-HWID_MISSING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_INPUT-MODEL_ERROR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a08

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_USERAUTH-CREDENTIALS_WRONG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a09

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_DONGLE-USER_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_USER-DONGLE_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110d28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_USER-NOT_FOUND"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_CONTENTS-VEHICLE_VIN_MISMATCH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110b99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_API-REMOTE_SERVICE_ERROR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_CONTRACT-ALREADY_ACCEPTED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_PURCHASE-NOT_FOUND"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110a1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_CONTACT-NOT_EDITABLE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    const v1, 0x7f110b2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KO_CUSTOMER-NOT_FOUND"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/utils/RetrofitErrorParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method private notifyError(I)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/utils/RetrofitErrorParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public isRawDataInvalid(Ljava/lang/Exception;)Z
    .locals 3

    .line 193
    instance-of v0, p1, Lretrofit2/HttpException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 194
    check-cast p1, Lretrofit2/HttpException;

    .line 197
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 198
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v2, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string v0, "KO_INPUT-MODEL_ERROR"

    .line 203
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getDetails()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getDetails()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "KO_INPUT-BASE64_NOT_VALID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Invalid response body."

    .line 209
    invoke-static {p1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public isUserRecoveryInProgress(Ljava/lang/Throwable;)Z
    .locals 3

    .line 217
    instance-of v0, p1, Lretrofit2/HttpException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lretrofit2/HttpException;

    .line 220
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 221
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v2, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    .line 222
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KO_USER-RECOVERY_IN_PROGRESS"

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Invalid response body."

    .line 225
    invoke-static {p1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public parse(Ljava/lang/Throwable;)V
    .locals 2

    .line 74
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Lretrofit2/HttpException;)V

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    const v1, 0x7f110a25

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0, v1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    goto :goto_0

    .line 78
    :cond_1
    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_2

    .line 79
    invoke-direct {p0, v1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public parse(Lretrofit2/HttpException;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 90
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 91
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v4

    const-class v5, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/networking/response/ServerResponse;

    const-string v4, "API error[URL=%s, Error=%s"

    new-array v5, v2, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3}, Lcom/texa/careapp/networking/response/ServerResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v3}, Lcom/texa/careapp/networking/response/ServerResponse;->getError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 96
    invoke-virtual {v3}, Lcom/texa/careapp/networking/response/ServerResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 99
    :cond_0
    sget-object v3, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    sget-object v3, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 101
    invoke-direct {p0, v3}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Invalid server response. Error details: [code=%s, m %s"

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    const/16 v0, 0x193

    if-ne v0, p1, :cond_1

    const p1, 0x7f110a19

    .line 107
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x194

    if-ne v0, p1, :cond_2

    const p1, 0x7f110a1b

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_3

    const/16 v0, 0x258

    if-ge p1, v0, :cond_3

    const p1, 0x7f110a1a

    .line 111
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public parseToString(Lretrofit2/HttpException;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 125
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 126
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v2

    const-class v3, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/ServerResponse;

    .line 127
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/ServerResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/ServerResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    sget-object v1, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    sget-object v1, Lcom/texa/careapp/utils/RetrofitErrorParser;->ERROR_CODES:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/texa/careapp/utils/RetrofitErrorParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Invalid server response. Error details: [code=%s, m %s"

    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    const/16 v1, 0x193

    if-ne v1, p1, :cond_1

    const p1, 0x7f110a19

    .line 138
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x194

    if-ne v1, p1, :cond_2

    const p1, 0x7f110a1b

    .line 140
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_3

    const/16 v1, 0x258

    if-ge p1, v1, :cond_3

    const p1, 0x7f110a1a

    .line 142
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->notifyError(I)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public toString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 151
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->toString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public toString(Lretrofit2/HttpException;)Ljava/lang/String;
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpException, "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Lretrofit2/HttpException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Lretrofit2/HttpException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v2, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "null"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
