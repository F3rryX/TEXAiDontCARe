.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareInfo.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$400(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    .line 185
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$500(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$600(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object v3

    .line 187
    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v4

    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v5}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$700(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;

    .line 191
    invoke-virtual {v5, p1, v3, v2, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->toFirmwareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v6

    .line 193
    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->getApplicationType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MAIN_APP"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-virtual {v5, v6}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;->getApplicationType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SERVICE_APP"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-virtual {v5, v6}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Loaded:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 200
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void

    .line 175
    :cond_3
    :try_start_1
    new-instance v1, Lcom/texa/carelib/core/CareLibException;

    const-string v2, "Invalid Http response body."

    invoke-direct {v1, v2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :catch_0
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Invalid response format: %s"

    invoke-static {v1, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Error:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 180
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-direct {v1, p0, v0, v0, v2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Error:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 164
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-static {v2, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2, p1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
