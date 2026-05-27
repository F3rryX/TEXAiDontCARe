.class public interface abstract Lcom/texa/careapp/networking/TexaCareServiceBus;
.super Ljava/lang/Object;
.source "TexaCareServiceBus.java"


# static fields
.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_AUTHORIZATION_TOKEN_FORMAT:Ljava/lang/String; = "SharedAccessSignature sr=%s&sig=%s&se=%s&skn=%s"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/json"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HOST:Ljava/lang/String; = "https://carequeue-production.servicebus.windows.net/"

.field public static final USER_AGENT_PREFIX:Ljava/lang/String; = "CAReApp"


# virtual methods
.method public abstract sendLog(Lcom/texa/careapp/model/ServerLogModel;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/ServerLogModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/ServerLogModel;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/careapplog-production/messages"
    .end annotation
.end method
