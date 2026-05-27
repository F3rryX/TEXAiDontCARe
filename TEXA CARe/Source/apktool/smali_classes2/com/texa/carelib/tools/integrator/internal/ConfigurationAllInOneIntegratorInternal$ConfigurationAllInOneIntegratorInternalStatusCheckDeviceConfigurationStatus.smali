.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;
.super Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus"
.end annotation


# instance fields
.field private final mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private final mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

.field private final mTimeoutBusyStateHandler:Lcom/texa/carelib/utils/TimeoutCallback;

.field private final mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public static synthetic $r8$lambda$KtZWjnGnYnQ2wbsh4CZmS-29MUQ(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->onBusyTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$uBMasd-bgG0NcafKugSBlrV6zZ4(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->onTimeout()V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V
    .locals 5

    .line 455
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;-><init>()V

    .line 446
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    iput-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 456
    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-direct {v1, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    iput-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    .line 458
    new-instance v1, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    .line 459
    new-instance v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    const-wide/32 v3, 0x1d4c0

    invoke-interface {v1, v2, v3, v4}, Lcom/texa/carelib/utils/TimeoutCallback;->set(Ljava/lang/Runnable;J)Z

    .line 461
    new-instance v1, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutBusyStateHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    .line 462
    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->onAccessoryStatusChanged(I)V

    .line 463
    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private onAccessoryStatusChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutBusyStateHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    const-wide/16 v1, 0x7530

    invoke-interface {p1, v0, v1, v2}, Lcom/texa/carelib/utils/TimeoutCallback;->set(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutBusyStateHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {p1}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    :goto_0
    return-void
.end method

.method private onBusyTimeout()V
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/tools/R$string;->error_care_configuration_check_for_updates_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private onTimeout()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/tools/R$string;->error_care_configuration_check_for_updates_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 447
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    .line 449
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->onAccessoryStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$900(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 491
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1102(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 492
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 p1, 0x84

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 504
    :cond_0
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 v3, 0x0

    :cond_1
    const/4 p1, 0x0

    if-eqz v3, :cond_3

    .line 517
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->skipConfirmation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;

    invoke-direct {v1, v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    goto :goto_1

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;

    invoke-direct {v1, v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    goto :goto_1

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onEnter$2$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$900(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v1

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 477
    check-cast p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    .line 478
    invoke-virtual {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->unsubscribe()V

    .line 480
    check-cast p2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;

    .line 482
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 483
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 485
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-virtual {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->deleteObservers()V

    .line 488
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1000(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->getVehicleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->getDiagnosticInterpreterVersion()Ljava/math/BigInteger;

    move-result-object p2

    new-instance v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    invoke-interface {p1, v0, v1, p2, v2}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;->loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    iget-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    const/4 v0, 0x0

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onEnter$3$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/tools/R$string;->error_care_configuration_acquiring_device_info_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public onEnter()V
    .locals 4

    .line 468
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onEnter()V

    .line 469
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Checking:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 471
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 472
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 474
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda5;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->addObserver(Ljava/util/Observer;)V

    .line 536
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    .line 537
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setVehicleID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    .line 538
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setInterpreterVersion(Ljava/math/BigInteger;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    .line 539
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mCheckDeviceConfigurationObserver:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->subscribe(JLjava/lang/Runnable;)V

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 546
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onExit()V

    .line 548
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 550
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    .line 551
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->mTimeoutBusyStateHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    return-void
.end method
