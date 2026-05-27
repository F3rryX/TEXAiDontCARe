.class public Lcom/texa/careapp/utils/LoginHelperRx;
.super Ljava/lang/Object;
.source "LoginHelperRx.java"


# static fields
.field public static ACCOUNT_TYPE:Ljava/lang/String; = "com.texa.care"

.field private static final TAG:Ljava/lang/String; = "LoginHelperRx"


# instance fields
.field protected mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mAccessTokenPersistenceManagerUser:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationUser;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mAccountManager:Landroid/accounts/AccountManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
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

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCrashlyticsHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDeleteAccountFunction:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected final mStoreAccountFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/texa/careapp/utils/authentication/AccessToken;",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/UserResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$1;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mStoreAccountFunction:Lio/reactivex/functions/Function;

    .line 152
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$1;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mStoreAccountFunction:Lio/reactivex/functions/Function;

    .line 152
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    .line 182
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$1;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mStoreAccountFunction:Lio/reactivex/functions/Function;

    .line 152
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    .line 173
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/LoginHelperRx;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/utils/LoginHelperRx;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method protected static addOrFindAccount(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    .line 365
    sget-object v0, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 368
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {p0, v3, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    sget-object v1, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 374
    invoke-virtual {p0, v0, p2, p1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    return-object v0
.end method

.method private deleteAccount()V
    .locals 8

    .line 500
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 501
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 502
    sget-object v6, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/texa/careapp/utils/LoginHelperRx;->ACCOUNT_TYPE:Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v6, "%s %s != %s "

    invoke-static {v6, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v6, Lcom/texa/careapp/utils/LoginHelperRx;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    iget-object v5, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v6, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isDongleInDb(Ljava/lang/String;)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleDataManager;->isDongleInDb(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$deleteAccount$22(Landroid/accounts/AccountManagerFuture;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 506
    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "%s account deleted"

    new-array v2, v1, [Ljava/lang/Object;

    .line 507
    sget-object v3, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 509
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%s account NOT deleted"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {p0, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 512
    sget-object v2, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "%s account not deleted "

    invoke-static {p0, v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$doLogin$4(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/TermsModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 223
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 225
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$doLogin$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR CALL TERMS ACCEPTANCE"

    .line 227
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$doRegistration$16(Lcom/texa/careapp/model/TermsModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/TermsModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 304
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$doRegistration$17(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR CALL TERMS ACCEPTANCE"

    .line 308
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getUserVehicles$10(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-static {p0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$userVehiclesObservable$7(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object p0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-static {p0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteAllDBData()Z
    .locals 2

    .line 476
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "care.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->dispose()V

    .line 478
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    .line 480
    :cond_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public deleteAllSharedPreferences()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public doLogOut(Z)V
    .locals 6

    const-string v0, "DB Not cleared."

    .line 428
    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/app/service/CareService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 429
    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 430
    invoke-direct {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAccount()V

    const-wide/16 v1, 0x3e8

    const v3, 0x10008000

    const/4 v4, 0x0

    .line 432
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllSharedPreferences()V

    .line 438
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllDBData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    sget-object v1, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->resetVehicleObserver()V

    .line 443
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_ACCESS_SING_UP:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 445
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    const-class v1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "#doLogOut()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 434
    invoke-static {v1, v2, v5}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllSharedPreferences()V

    .line 438
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllDBData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    sget-object v1, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->resetVehicleObserver()V

    .line 443
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_ACCESS_SING_UP:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    .line 445
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    const-class v1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 437
    :goto_2
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllSharedPreferences()V

    .line 438
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAllDBData()Z

    move-result v2

    if-nez v2, :cond_3

    .line 439
    sget-object v2, Lcom/texa/careapp/utils/LoginHelperRx;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->resetVehicleObserver()V

    .line 443
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v2, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_ACCESS_SING_UP:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_4

    .line 445
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    const-class v2, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 449
    :cond_4
    throw v1
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientSecret:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/texa/careapp/utils/LoginHelperRx;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 201
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 202
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda24;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 203
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 204
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 205
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda20;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 212
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda21;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 213
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->userVehiclesObservable()Lio/reactivex/Observable;

    move-result-object p2

    .line 232
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->startSyncServiceDongle()Lio/reactivex/Observable;

    move-result-object v0

    .line 230
    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    .line 233
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 234
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public doLogoutCompletable(Z)Lio/reactivex/Completable;
    .locals 1

    .line 453
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda17;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public doRegistration(Lcom/texa/careapp/networking/RegistrationInfo;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/RegistrationInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lcom/texa/careapp/networking/RegistrationInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcom/texa/careapp/networking/RegistrationInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    .line 280
    new-instance v0, Lcom/texa/careapp/networking/AuthorizationHeader;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/networking/AuthorizationHeader;-><init>(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    invoke-virtual {v0}, Lcom/texa/careapp/networking/AuthorizationHeader;->get()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientSecret:Ljava/lang/String;

    const-string v4, "client_credentials"

    invoke-interface {v1, v4, v2, v3}, Lcom/texa/careapp/networking/TexaCareAuthService;->getClientToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda25;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 283
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2, v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->signUpObservable(Ljava/lang/String;Lcom/texa/careapp/networking/RegistrationInfo;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 286
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda22;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 293
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 294
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mStoreAccountFunction:Lio/reactivex/functions/Function;

    .line 295
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda23;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 296
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    iget-object v0, v0, Lcom/texa/careapp/utils/authentication/AccessToken;->expires_in:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    iget-object v0, v0, Lcom/texa/careapp/utils/authentication/AccessToken;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->userVehiclesObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->startSyncServiceDongle()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    .line 319
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 320
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 314
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->userVehiclesObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->startSyncServiceDongle()Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDeleteAccountFunction:Lio/reactivex/functions/Consumer;

    .line 315
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 316
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/authentication/AccessToken;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    const-string v1, "password"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/texa/careapp/networking/TexaCareAuthService;->getAccessTokenObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getAccessTokenAndPersist(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/authentication/AccessToken;",
            ">;"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientSecret:Ljava/lang/String;

    const-string v1, "password"

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/texa/careapp/networking/TexaCareAuthService;->getAccessTokenObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 387
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected getUserDongleObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->userDongleAssociation()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getUserVehicles()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v0

    .line 258
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 259
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;

    .line 260
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 261
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    .line 262
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/utils/VehicleDataManager;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public isUserLogged()Z
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isUserLogged(Landroid/accounts/AccountManager;Lcom/texa/careapp/utils/UserDataManager;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$doLogin$0$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->storeCredentialsAndAccessToken(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method

.method public synthetic lambda$doLogin$1$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserObservable()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$doLogin$2$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/FlavorDelegator;->persistUserData(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic lambda$doLogin$3$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/model/UserModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mCrashlyticsHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/CrashlyticsHelper;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/CrashlyticsHelper;->setUser(Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method

.method public synthetic lambda$doLogin$6$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/model/UserModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v1, Lcom/texa/careapp/model/TermsModel;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "privacy"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/texa/careapp/model/TermsModel;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v3, Lcom/texa/careapp/model/TermsModelsEntity;

    invoke-direct {v3, v0}, Lcom/texa/careapp/model/TermsModelsEntity;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->acceptTerms(Lcom/texa/careapp/model/TermsModelsEntity;)Lio/reactivex/Completable;

    move-result-object v0

    .line 218
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 219
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, p1}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;-><init>(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V

    sget-object p1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda3;

    .line 220
    invoke-virtual {v0, v2, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$doLogoutCompletable$20$com-texa-careapp-utils-LoginHelperRx(ZLio/reactivex/CompletableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 455
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$doLogoutCompletable$21$com-texa-careapp-utils-LoginHelperRx(Z)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$doRegistration$12$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method

.method public synthetic lambda$doRegistration$13$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/FlavorDelegator;->persistUserData(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic lambda$doRegistration$14$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/model/UserModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mCrashlyticsHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/CrashlyticsHelper;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/CrashlyticsHelper;->setUser(Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method

.method public synthetic lambda$doRegistration$15$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/model/UserModel;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    iget-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientId:Ljava/lang/String;

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientSecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/texa/careapp/utils/LoginHelperRx;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$doRegistration$18$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v0, Lcom/texa/careapp/model/TermsModel;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "privacy"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/texa/careapp/model/TermsModel;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/model/TermsModelsEntity;

    invoke-direct {v2, p1}, Lcom/texa/careapp/model/TermsModelsEntity;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->acceptTerms(Lcom/texa/careapp/model/TermsModelsEntity;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda18;-><init>(Lcom/texa/careapp/model/TermsModel;)V

    sget-object v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda4;

    .line 301
    invoke-virtual {p1, v1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$getAccessTokenAndPersist$19$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->storeCredentialsAndAccessToken(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method

.method public synthetic lambda$getUserVehicles$11$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$userVehiclesObservable$8$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->hwid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->isDongleInDb(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$userVehiclesObservable$9$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected logException(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "login exception"

    .line 414
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public refreshDataSignInStep()V
    .locals 2

    .line 466
    invoke-direct {p0}, Lcom/texa/careapp/utils/LoginHelperRx;->deleteAccount()V

    .line 467
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method protected startSyncServiceDongle()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleOneOffJob(ILjava/lang/String;)V

    .line 405
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected storeCredentialsAndAccessToken(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessToken;)V
    .locals 0

    .line 349
    invoke-static {p1, p2, p3}, Lcom/texa/careapp/utils/LoginHelperRx;->addOrFindAccount(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    .line 350
    iget-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerUser:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {p1, p4}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method

.method protected userVehiclesObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v0

    .line 241
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 242
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda15;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda15;

    .line 243
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 244
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 245
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda16;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 246
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 247
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 249
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    .line 250
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/utils/VehicleDataManager;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 251
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 252
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
