.class Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;
.super Ljava/lang/Object;
.source "HttpServiceProtectionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtectionProcedureRequest"
.end annotation


# instance fields
.field private final mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;->mFields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;->mFields:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 390
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 391
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;->mFields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
