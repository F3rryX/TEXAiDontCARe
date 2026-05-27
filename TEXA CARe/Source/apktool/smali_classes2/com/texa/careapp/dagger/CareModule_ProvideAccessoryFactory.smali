.class public final Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideAccessoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/carelib/care/accessory/Accessory;",
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
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 23
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->profileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAccessory(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/care/accessory/Accessory;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideAccessory(Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/accessory/Accessory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/carelib/care/accessory/Accessory;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->provideAccessory(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->get()Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    return-object v0
.end method
