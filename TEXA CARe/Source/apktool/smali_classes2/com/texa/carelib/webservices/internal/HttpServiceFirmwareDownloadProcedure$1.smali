.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareDownloadProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;

.field final synthetic val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 10

    .line 123
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    .line 127
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fireDownloadFirmwareError(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->getContents()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$FirmwareDownloadResponse;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 140
    new-instance v5, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v6, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-static {v6}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "firmware"

    .line 142
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8, v4}, Lcom/texa/carelib/core/utils/FileCache;->store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 144
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "Could not cache the file \"%s\""

    invoke-static {v7, v5, v9, v8}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_0
    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    sget-object v7, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {v5, v7}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    if-eqz v1, :cond_1

    .line 152
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "Cached file[AbsolutePath=%s,Size=%d]"

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-virtual {p1, v0, v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fireDownloadFirmwareCompleted(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Ljava/io/File;)V

    goto :goto_1

    .line 158
    :cond_1
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$Content;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Couldn\'t cache file: %s"

    invoke-static {v1, p1, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v4, v0, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_file_store_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fireDownloadFirmwareError(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 165
    :cond_2
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "No contents available..."

    invoke-static {p1, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v4, v0, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_firmware_download_no_contents_available:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fireDownloadFirmwareError(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    :goto_1
    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$firmwareType:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->fireDownloadFirmwareError(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not notify firmware download error."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
