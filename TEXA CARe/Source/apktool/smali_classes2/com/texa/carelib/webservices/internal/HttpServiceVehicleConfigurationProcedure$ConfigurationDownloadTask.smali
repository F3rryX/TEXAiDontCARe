.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationDownloadTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareID:Ljava/lang/String;

.field private final mInterpreterVersion:Ljava/math/BigInteger;

.field private final mVehicleID:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;",
            ">;)V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mHardwareID:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mVehicleID:Ljava/lang/String;

    .line 229
    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 230
    iput-object p5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method static synthetic access$500(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)Lcom/texa/carelib/core/Callback;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mCallback:Lcom/texa/carelib/core/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 301
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_diagnostic_configuration_download_fails:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 236
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mHardwareID:Ljava/lang/String;

    const-string v1, "CARe-HWID"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mInterpreterVersion:Ljava/math/BigInteger;

    const-string v1, "interpreter_version"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->mVehicleID:Ljava/lang/String;

    const-string/jumbo v1, "vin"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v5, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;

    invoke-direct {v5, p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;)V

    .line 297
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$ConfigurationDownloadTask;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    const-string v1, "/api/contents/configurations"

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void
.end method
