.class public final Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "ScheduleCardViewPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;",
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

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContext(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V

    return-void
.end method
