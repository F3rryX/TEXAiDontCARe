.class public final Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;
.super Ljava/lang/Object;
.source "EcoDrivingScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final avgCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final careObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->careObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-void
.end method

.method public static injectCareObserver(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->careObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->careObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectCareObserver(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    return-void
.end method
