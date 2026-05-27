.class public Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "FactoryResetScreenDialog.java"


# instance fields
.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method

.method private factoryReset()V
    .locals 4

    .line 50
    new-instance v0, Lcom/texa/careapp/app/events/ShowProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/ShowProgressEvent;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110d40

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/events/ShowProgressEvent;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$factoryReset$2(Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "CareError %s"

    invoke-static {p0, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V

    const v0, 0x7f0a0339

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a033a

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 85
    const-class v0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b6

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 75
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-FactoryResetScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->factoryReset()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-settings-FactoryResetScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->goBack()V

    return-void
.end method

.method public synthetic lambda$factoryReset$3$com-texa-careapp-app-settings-FactoryResetScreenDialog()V
    .locals 3

    .line 55
    const-class v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    sget-object v2, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/settings/FactoryResetScreenDialog$$ExternalSyntheticLambda2;

    invoke-interface {v1, v0, v2}, Lcom/texa/carelib/care/accessory/Accessory;->resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/SplashActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v2, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v2}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/app/SplashActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    throw v0
.end method
