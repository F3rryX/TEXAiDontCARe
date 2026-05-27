.class public final Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LoginActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/LoginActivity;",
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

.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
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

.field private final mDataManagerConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
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

.field private final mLocalBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mRxProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
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

.field private final mUserDataManagerProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p2, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p3, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p4, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p5, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p6, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p7, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mUserDataManagerProvider2:Ljavax/inject/Provider;

    .line 72
    iput-object p8, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p9, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p10, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p11, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p12, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p13, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/LoginActivity;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v14, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;

    move-object v0, v14

    move-object v1, p0

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

    invoke-direct/range {v0 .. v13}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMClientId(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public static injectMClientSecret(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mClientSecret:Ljava/lang/String;

    return-void
.end method

.method public static injectMDataManagerConfiguration(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method

.method public static injectMTexaCareAuthService(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/networking/TexaCareAuthService;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mUserDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMClientId(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/LoginActivity;)V

    return-void
.end method
