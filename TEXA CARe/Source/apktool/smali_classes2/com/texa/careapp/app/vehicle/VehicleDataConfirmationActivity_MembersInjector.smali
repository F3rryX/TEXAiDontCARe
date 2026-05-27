.class public final Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;
.super Ljava/lang/Object;
.source "VehicleDataConfirmationActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p3, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p9, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p10, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    .line 69
    iput-object p11, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 13
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
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v12, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMDataManagerConfiguration(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V

    return-void
.end method
