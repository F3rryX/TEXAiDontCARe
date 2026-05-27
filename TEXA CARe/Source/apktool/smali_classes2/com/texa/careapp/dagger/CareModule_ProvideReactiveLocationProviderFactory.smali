.class public final Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideReactiveLocationProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
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
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;)V

    return-object v0
.end method

.method public static provideReactiveLocationProvider(Lcom/texa/careapp/dagger/CareModule;)Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule;->provideReactiveLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;->get()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;->provideReactiveLocationProvider(Lcom/texa/careapp/dagger/CareModule;)Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    move-result-object v0

    return-object v0
.end method
