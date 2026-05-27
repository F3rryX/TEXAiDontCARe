.class public final Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideRxProfileFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/care/eco_driving/RxProfile;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 23
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->profileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRxProfile(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;)Lcom/texa/care/eco_driving/RxProfile;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideRxProfile(Lcom/texa/carelib/profile/Profile;)Lcom/texa/care/eco_driving/RxProfile;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/care/eco_driving/RxProfile;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/care/eco_driving/RxProfile;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->provideRxProfile(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;)Lcom/texa/care/eco_driving/RxProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->get()Lcom/texa/care/eco_driving/RxProfile;

    move-result-object v0

    return-object v0
.end method
