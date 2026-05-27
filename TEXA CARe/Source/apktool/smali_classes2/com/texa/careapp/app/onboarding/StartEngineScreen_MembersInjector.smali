.class public final Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;
.super Ljava/lang/Object;
.source "StartEngineScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/StartEngineScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
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

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
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

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p6, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p7, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p8, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p9, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleInfoProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p10, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/StartEngineScreen;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v11, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleInfo(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Landroid/content/SharedPreferences;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mVehicleInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleInfo(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    return-void
.end method
