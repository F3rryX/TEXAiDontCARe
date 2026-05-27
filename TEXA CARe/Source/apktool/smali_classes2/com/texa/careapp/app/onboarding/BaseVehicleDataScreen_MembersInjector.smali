.class public final Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;
.super Ljava/lang/Object;
.source "BaseVehicleDataScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;",
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

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogInHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mLogInHelperProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v10, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method

.method public static injectMClientId(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public static injectMClientSecret(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mClientSecret:Ljava/lang/String;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMLogInHelper(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mLogInHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaCareAuthService(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareAuthService;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mLogInHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMLogInHelper(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mAccessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mClientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMClientId(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->mClientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    return-void
.end method
