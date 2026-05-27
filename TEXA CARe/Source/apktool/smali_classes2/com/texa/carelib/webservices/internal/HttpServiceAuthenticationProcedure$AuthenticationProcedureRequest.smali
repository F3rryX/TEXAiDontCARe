.class Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;
.super Ljava/lang/Object;
.source "HttpServiceAuthenticationProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationProcedureRequest"
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const-class p1, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;

    .line 335
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->TAG:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->mFields:Ljava/util/Map;

    return-void
.end method

.method private encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 361
    :try_start_0
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Encoding not supported"

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->mFields:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->mFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const/16 v2, 0x26

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {p0, v2, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
