.class public Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "NoSosServiceActivity.java"


# instance fields
.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 28
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;)V

    .line 32
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    const v0, 0x7f0a00d7

    .line 33
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 34
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;

    invoke-direct {v0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
