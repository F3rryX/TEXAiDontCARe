.class public Lcom/texa/careapp/app/update/FirmwareUpdateService;
.super Lcom/texa/careapp/app/service/RxCareService;
.source "FirmwareUpdateService.java"


# static fields
.field private static final SHOULD_FIlTER:Ljava/lang/String; = "SHOULD_FIlTER"


# instance fields
.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field protected mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/texa/careapp/app/service/RxCareService;-><init>()V

    .line 55
    new-instance v0, Lcom/texa/careapp/app/update/FirmwareUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/update/FirmwareUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public static buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-static {p0, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildFilterIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildFilterIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/update/FirmwareUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SHOULD_FIlTER"

    .line 51
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected getCareApplication()Lcom/texa/careapp/CareApplication;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    return-object v0
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-update-FirmwareUpdateService(Ljava/beans/PropertyChangeEvent;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "AccessoryPropertyChangeListener.propertyChange [Name=%s, OldValue=%s, NewValue:%s]"

    .line 56
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "FIRMWARE CONNECTION STATUS = %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCreate()V

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0, v1}, Lcom/texa/carelib/webservices/TexaService;->setCareProxy(Lcom/texa/carelib/care/profile/CareProxy;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mProfile:Lcom/texa/carelib/profile/Profile;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/Profile;->setServiceProxy(Lcom/texa/carelib/webservices/ServiceProxy;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCreate(Landroid/app/Service;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/wakelock/WakelockManager;->onServiceDestroyed()V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onDestroy(Landroid/app/Service;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const-string p3, "SHOULD_FIlTER"

    .line 82
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doAutoUpdateIfNeeded()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doUpdate()V

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-interface {p1}, Lcom/texa/careapp/utils/wakelock/WakelockManager;->onServiceStarted()V

    :cond_1
    return p2
.end method
