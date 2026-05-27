.class public final Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideAvgCalculatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;)V

    return-object v0
.end method

.method public static provideAvgCalculator(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule;->provideAvgCalculator()Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;->provideAvgCalculator(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;->get()Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    move-result-object v0

    return-object v0
.end method
