.class public final Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ScheduleScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/ScheduleScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final mScheduleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/ScheduleScreen;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v9, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectMContext(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/careapp/app/schedule/ScheduleScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    return-void
.end method
