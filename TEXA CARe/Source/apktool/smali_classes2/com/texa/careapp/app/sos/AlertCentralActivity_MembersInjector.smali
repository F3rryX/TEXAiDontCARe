.class public final Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;
.super Ljava/lang/Object;
.source "AlertCentralActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/sos/AlertCentralActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCaReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mFlavourDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
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

.field private final mProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mFlavourDelegatorProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mLocationProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mCaReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/sos/AlertCentralActivity;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v10, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;

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

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFlavourDelegator(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mFlavourDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMLocationProvider(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/sos/AlertCentralActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mFlavourDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMFlavourDelegator(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/FlavorDelegator;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/carelib/profile/Profile;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMLocationProvider(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/sos/AlertCentralActivity;Landroid/content/SharedPreferences;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->mCaReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V

    return-void
.end method
