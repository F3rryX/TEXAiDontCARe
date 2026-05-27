.class public final Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;
.super Ljava/lang/Object;
.source "LoginHelperRx_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/LoginHelperRx;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCrashlyticsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareAuthServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/accounts/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccountManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mCrashlyticsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 99
    iput-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/accounts/AccountManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    .line 118
    new-instance v19, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v19
.end method

.method public static injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method

.method public static injectMAccessTokenPersistenceManagerUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationUser;
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccessTokenPersistenceManagerUser:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method

.method public static injectMAccountManager(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/accounts/AccountManager;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMClientId(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public static injectMClientSecret(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mClientSecret:Ljava/lang/String;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/Context;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMCrashlyticsHelper(Lcom/texa/careapp/utils/LoginHelperRx;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mCrashlyticsHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaCareAuthService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareAuthService;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMClientId(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccountManager(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/accounts/AccountManager;)V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMContext(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mAccessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccessTokenPersistenceManagerUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMCrashlyticsHelper(Lcom/texa/careapp/utils/LoginHelperRx;Ldagger/Lazy;)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/FlavorDelegator;)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/SharedPreferences;)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-void
.end method
