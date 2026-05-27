.class public final Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "AutomaticSosPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/sos/AutomaticSosPresenter;",
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

.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final reactiveLocationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->reactiveLocationProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mCaReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/sos/AutomaticSosPresenter;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v10, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;

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

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/Context;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectReactiveLocationProvider(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->reactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/carelib/profile/Profile;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/FlavorDelegator;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->reactiveLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectReactiveLocationProvider(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/SharedPreferences;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->mCaReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    return-void
.end method
