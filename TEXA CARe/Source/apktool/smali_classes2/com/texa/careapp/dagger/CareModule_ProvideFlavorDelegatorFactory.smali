.class public final Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideFlavorDelegatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/FlavorDelegator;",
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
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;)V

    return-object v0
.end method

.method public static provideFlavorDelegator(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/FlavorDelegator;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule;->provideFlavorDelegator()Lcom/texa/careapp/FlavorDelegator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/FlavorDelegator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/FlavorDelegator;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;->provideFlavorDelegator(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/FlavorDelegator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;->get()Lcom/texa/careapp/FlavorDelegator;

    move-result-object v0

    return-object v0
.end method
