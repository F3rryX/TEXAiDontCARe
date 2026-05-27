.class public Lcom/texa/careapp/app/auth/LoginActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "LoginActivity.java"


# static fields
.field public static DISABLE_PRIVACY_DIALOG:Z = false

.field public static ENABLE_RECOVER_PASSWORD:Z = true

.field public static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field protected mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mClientId:Ljava/lang/String;
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mClientSecret:Ljava/lang/String;
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private optionDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method private checkClientToken()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    iget-object v0, v0, Lcom/texa/careapp/utils/authentication/AccessToken;->expires_in:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v2}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v2

    iget-object v2, v2, Lcom/texa/careapp/utils/authentication/AccessToken;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mClientSecret:Ljava/lang/String;

    const-string v3, "client_credentials"

    invoke-interface {v0, v3, v1, v2}, Lcom/texa/careapp/networking/TexaCareAuthService;->getClientToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 98
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 99
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/LoginActivity;)V

    sget-object v2, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda2;

    .line 100
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method static synthetic lambda$checkClientToken$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onError getClientToken"

    .line 101
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public isOptionDialog()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->optionDialog:Z

    return v0
.end method

.method public synthetic lambda$checkClientToken$1$com-texa-careapp-app-auth-LoginActivity(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-auth-LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/LoginActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d002c

    .line 69
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/LoginActivity;->setContentView(I)V

    const v0, 0x7f0a004e

    .line 70
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 72
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/LoginActivity;)V

    .line 74
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v2, 0x7f0a00d7

    .line 75
    invoke-virtual {v1, v2}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 77
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/LoginActivity;->checkClientToken()V

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/auth/SignInScreen;

    invoke-direct {v1, v0, p0}, Lcom/texa/careapp/app/auth/SignInScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {p1, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setDriverId()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v1

    .line 110
    sget-object v2, Lcom/texa/careapp/app/auth/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHostAuthenticated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setDriverID(Ljava/util/UUID;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOptionDialog(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->optionDialog:Z

    return-void
.end method
