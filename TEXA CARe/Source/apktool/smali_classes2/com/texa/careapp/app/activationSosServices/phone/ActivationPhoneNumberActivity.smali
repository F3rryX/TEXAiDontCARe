.class public Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ActivationPhoneNumberActivity.java"


# instance fields
.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 38
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 48
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)V

    .line 53
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 60
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 61
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/CancelProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->dismissProgressDialogScreen()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/ShowProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ShowProgressEvent;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->createProgressDialogScreen(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
