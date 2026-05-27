.class public final Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "EcoDrivingCardViewPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;",
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

.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->careObserverProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v6, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectAvgCalculator(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-void
.end method

.method public static injectCareObserver(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->careObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/Context;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/SharedPreferences;)V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->careObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectCareObserver(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V

    return-void
.end method
