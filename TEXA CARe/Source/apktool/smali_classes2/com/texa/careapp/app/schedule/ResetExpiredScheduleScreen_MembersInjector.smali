.class public final Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ResetExpiredScheduleScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;",
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

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v6, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMContext(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V

    return-void
.end method
