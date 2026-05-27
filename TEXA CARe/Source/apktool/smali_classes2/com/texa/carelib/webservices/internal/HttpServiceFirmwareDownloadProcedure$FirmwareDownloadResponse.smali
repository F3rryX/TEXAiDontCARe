.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareDownloadProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirmwareDownloadResponse"
.end annotation


# instance fields
.field private mContents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->mContents:Ljava/util/List;

    return-object v0
.end method

.method public setContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;",
            ">;)V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->mContents:Ljava/util/List;

    return-void
.end method
