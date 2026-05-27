.class public final Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MechanicActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/sos/MechanicActivity;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final mMechanicDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/MechanicDataManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/utils/MechanicDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mMechanicDataManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
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
            "Lcom/texa/careapp/utils/MechanicDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/sos/MechanicActivity;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v9, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectMMechanicDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/MechanicDataManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/sos/MechanicActivity;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mMechanicDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->injectMMechanicDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/MechanicDataManager;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/sos/MechanicActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    return-void
.end method
