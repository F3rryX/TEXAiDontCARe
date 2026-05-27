.class public final Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;
.super Ljava/lang/Object;
.source "UpdateConfigurationActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/configuration/UpdateConfigurationActivity;",
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

.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
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

.field private final mDongleDataManagerProvider2:Ljavax/inject/Provider;
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

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleParametersManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p4, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p5, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p6, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p7, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p8, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p9, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    .line 74
    iput-object p10, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p11, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p12, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mVehicleParametersManagerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p13, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mVehicleProvider:Ljavax/inject/Provider;

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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationActivity;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v14, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;

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

    invoke-direct/range {v0 .. v13}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static injectMAccessory(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMVehicle(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    return-void
.end method

.method public static injectMVehicleParametersManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mVehicleParametersManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMVehicleParametersManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->mVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMVehicle(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    return-void
.end method
