.class public final Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationServiceActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;",
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

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v10, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;

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

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)V

    return-void
.end method
