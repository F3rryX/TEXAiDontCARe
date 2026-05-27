.class public final Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;
.super Ljava/lang/Object;
.source "SchedulesAdapter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/SchedulesAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinderScheduleViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/schedule/BinderScheduleView;",
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

.field private final vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/schedule/BinderScheduleView;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->vehicleObserverProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->mBinderScheduleViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/schedule/BinderScheduleView;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/SchedulesAdapter;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMBinderScheduleView(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/app/schedule/BinderScheduleView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    return-void
.end method

.method public static injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/ScheduleDataManager;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    return-void
.end method

.method public static injectVehicleObserver(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectVehicleObserver(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->mBinderScheduleViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/schedule/BinderScheduleView;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectMBinderScheduleView(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/app/schedule/BinderScheduleView;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)V

    return-void
.end method
