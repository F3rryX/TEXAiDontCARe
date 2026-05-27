.class public final Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SelectNewScheduleScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    return-void
.end method
