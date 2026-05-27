.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareDownloadProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Content"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->mName:Ljava/lang/String;

    return-void
.end method
