.class public Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SettingsTyresActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsTyresActivity"

.field public static blockSyncThresholds:Z

.field public static blockSyncVehicleData:Z


# instance fields
.field mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public completeTyresConfiguration()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    .line 45
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->setContentView(I)V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onCreate"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 49
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;)V

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 55
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->disableLogoActionBarToolbar()V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a00e0

    .line 60
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setActionBar(Landroidx/appcompat/app/ActionBar;)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->TAG:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s EXTRA_VEHICLE_ID null !"

    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    if-eqz p1, :cond_1

    .line 71
    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;-><init>(Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onPause"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 77
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onResume"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
