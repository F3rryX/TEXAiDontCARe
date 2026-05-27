.class public final Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "WeekPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;",
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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lorg/greenrobot/eventbus/EventBus;)V

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    return-void
.end method
