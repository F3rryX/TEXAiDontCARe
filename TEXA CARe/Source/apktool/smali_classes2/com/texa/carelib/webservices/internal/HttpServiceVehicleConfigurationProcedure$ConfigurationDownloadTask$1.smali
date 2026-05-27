.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 10

    .line 256
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v0, v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v2, v2, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$1;)V

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->access$702(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;

    .line 258
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/DownloadConfigurationFileResponse;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/DownloadConfigurationFileResponse;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v2, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v4, v4, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/DownloadConfigurationFileResponse;->getFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/webservices/internal/Content;

    const/4 v5, 0x0

    .line 268
    :try_start_0
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/Content;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "diagnosis_configuration"

    .line 269
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/Content;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v4, v6}, Lcom/texa/carelib/core/utils/FileCache;->store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 271
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Cached file[AbsolutePath=%s,Size=%d]"

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    const/4 v4, 0x1

    if-eqz v6, :cond_1

    array-length v6, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 276
    sget-object v6, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "Could not cache configuration file on file system."

    invoke-static {v6, v4, v7, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 282
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    new-instance v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v2, v2, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-direct {v0, v2, v1, v3}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_2

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 289
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object p1

    new-instance v1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v2, v2, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    new-instance v5, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v6, 0xc

    invoke-direct {v5, v0, v6}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v0, v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$600(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    iget-object v2, v2, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;

    invoke-static {v4, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->access$600(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
