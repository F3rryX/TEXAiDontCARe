.class public Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;
.super Landroid/app/IntentService;
.source "UpdateConfigurationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;,
        Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateSuccessEvent;,
        Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateConfigurationIntentService"


# instance fields
.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postUpdate(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postUpdate(I)V

    return-void
.end method

.method private beginCAReConfiguration(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    const-string v1, "beginCAReConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "HWID cannot be null or empty."

    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "HWID is null or empty."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Ljava/lang/Throwable;)V

    return v2

    .line 163
    :cond_0
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "configuration_files list is empty"

    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110a11

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Ljava/lang/Throwable;)V

    return v2

    .line 169
    :cond_1
    new-instance v1, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-direct {v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    invoke-virtual {v1, v2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setConfigurationProcedure(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 171
    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v2}, Lcom/texa/carelib/webservices/TexaService;->getVehicleConfigurationProcedure()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setServiceVehicleConfigurationProcedure(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 172
    new-instance v2, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;

    invoke-direct {v2, p0, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setListener(Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 224
    invoke-virtual {v1, p1, p2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->updateConfigurationAndUploadReports(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUpdateConfigurationAndUploadReports="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 228
    new-instance p2, Ljava/lang/Exception;

    const-string/jumbo v0, "updateConfigurationAndUploadReports returned false"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Ljava/lang/Throwable;)V

    :cond_2
    return p1
.end method

.method private downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 3

    .line 122
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading configuration for HWID=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], VIN=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], InterpreterVersion=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1108df

    .line 125
    :try_start_0
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postUpdate(I)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getVehicleConfigurationProcedure()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;->downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 141
    sget-object p1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    const-string p2, "canDownloadConfiguration is false"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isRunning(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 75
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    const-string v1, "isRunning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 77
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "isRunning true"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 82
    :cond_1
    sget-object p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    const-string v0, "isRunning false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private postError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 273
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getDomain()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x13

    .line 279
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getErrorCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11009f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 287
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private postError(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "update configuration exception"

    .line 296
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 302
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;

    invoke-direct {v1, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private postSuccess()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateSuccessEvent;

    invoke-direct {v1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateSuccessEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private postUpdate(I)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private postUpdate(II)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected deleteDownloadedResources(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public synthetic lambda$downloadConfiguration$0$com-texa-careapp-configuration-UpdateConfigurationIntentService(Ljava/lang/String;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V
    .locals 2

    .line 127
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Configuration download has completed successfully. Starting configuration procedure."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getConfigurationFiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->beginCAReConfiguration(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getConfigurationFiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->deleteDownloadedResources(Ljava/util/List;)Z

    goto :goto_0

    .line 135
    :cond_0
    sget-object p1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postError(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 91
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const p1, 0x7f110a88

    .line 99
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->postUpdate(I)V

    .line 101
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method
