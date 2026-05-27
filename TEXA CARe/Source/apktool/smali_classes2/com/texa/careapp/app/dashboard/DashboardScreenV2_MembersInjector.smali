.class public final Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;
.super Ljava/lang/Object;
.source "DashboardScreenV2_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/dashboard/DashboardScreenV2;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
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

.field private final mFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private final mLampsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
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

.field private final mPercentColorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
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

.field private final mSosFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
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

.field private final mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
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
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mPercentColorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/dashboard/DashboardScreenV2;",
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

    .line 117
    new-instance v18, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/Context;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMLampsManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMPercentColorHelper(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/PercentColorHelper;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/SharedPreferences;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/FlavorDelegator;)V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lorg/greenrobot/eventbus/EventBus;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mPercentColorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMPercentColorHelper(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/PercentColorHelper;)V

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMembers(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    return-void
.end method
