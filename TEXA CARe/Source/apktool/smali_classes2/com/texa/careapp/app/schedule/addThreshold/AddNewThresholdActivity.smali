.class public Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "AddNewThresholdActivity.java"


# static fields
.field private static final OPEN_SCREEN_KEY_ADD_THRESHOLD:Ljava/lang/String; = "OPEN_SCREEN_KEY"

.field public static final SCREEN_SELECT_THRESHOLD:I = 0x1

.field public static final SCREEN_SELECT_TYRES_OPTION:I = 0x2


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "OPEN_SCREEN_KEY"

    .line 43
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 44
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 71
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;)V

    .line 74
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a00d7

    .line 81
    invoke-virtual {p1, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 83
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "OPEN_SCREEN_KEY"

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

    invoke-direct {v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CancelProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->dismissProgressDialogScreen()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/ShowProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ShowProgressEvent;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->createProgressDialogScreen(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 114
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
