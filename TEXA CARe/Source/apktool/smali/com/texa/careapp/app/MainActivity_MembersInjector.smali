.class public final Lcom/texa/careapp/app/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/MainActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final fcmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
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

.field private final mLoggerManagerProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
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

.field private final mPreferencesProvider2:Ljavax/inject/Provider;
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

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
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

.field private final mUserDataManagerProvider2:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 94
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 95
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 96
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 97
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 98
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 99
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 100
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    move-object v1, p8

    .line 101
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 102
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 103
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mPreferencesProvider2:Ljavax/inject/Provider;

    move-object v1, p11

    .line 104
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 105
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 106
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 107
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mUserDataManagerProvider2:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 108
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 109
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 110
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->fcmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 111
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 112
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 113
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLoggerManagerProvider2:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 114
    iput-object v1, v0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 23
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/MainActivity;",
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

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    .line 137
    new-instance v22, Lcom/texa/careapp/app/MainActivity_MembersInjector;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/texa/careapp/app/MainActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v22
.end method

.method public static injectFcmManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/fcm/FcmManager;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    return-void
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/MainActivity;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMNotificationManager(Lcom/texa/careapp/app/MainActivity;Landroid/app/NotificationManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/MainActivity;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/MainActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mPreferencesProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/MainActivity;Landroid/content/SharedPreferences;)V

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/app/MainActivity;Landroid/app/NotificationManager;)V

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 154
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 155
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mUserDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->fcmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/fcm/FcmManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectFcmManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/fcm/FcmManager;)V

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mLoggerManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/texa/careapp/app/MainActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/MainActivity;)V

    return-void
.end method
