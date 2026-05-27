.class public final Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;
.super Ljava/lang/Object;
.source "OnBoardingConfigurationActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;",
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

.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mFormValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
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

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
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
            "Lcom/texa/careapp/utils/FormValidator;",
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
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    move-object v1, p11

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 91
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 92
    iput-object v1, v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 18
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
            "Lcom/texa/careapp/utils/FormValidator;",
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
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;",
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

    .line 110
    new-instance v17, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v17
.end method

.method public static injectMAccessory(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDataManagerConfiguration(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 116
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/FormValidator;)V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Landroid/content/SharedPreferences;)V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    return-void
.end method
