.class public final Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideCurrentTripFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/carelib/care/trips/CurrentTrip;",
        ">;"
    }
.end annotation


# instance fields
.field private final featureVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final profileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->profileProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCurrentTrip(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/CurrentTrip;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideCurrentTrip(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/CurrentTrip;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/carelib/care/trips/CurrentTrip;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->provideCurrentTrip(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->get()Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object v0

    return-object v0
.end method
