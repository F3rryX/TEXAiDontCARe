.class public Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;
.super Lcom/texa/care/navigation/Screen;
.source "NoSosServiceScreen.java"


# instance fields
.field mApplication:Lcom/texa/careapp/CareApplication;

.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 29
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "NoSosServiceScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cd

    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v2, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
