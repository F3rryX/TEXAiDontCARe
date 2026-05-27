.class public final Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SetTyresOdometerScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;",
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

.field private final mScheduleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->mScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V

    return-void
.end method
