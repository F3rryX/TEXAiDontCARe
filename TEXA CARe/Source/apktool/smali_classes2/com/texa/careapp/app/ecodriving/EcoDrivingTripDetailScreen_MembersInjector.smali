.class public final Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;
.super Ljava/lang/Object;
.source "EcoDrivingTripDetailScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;->avgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    return-void
.end method
