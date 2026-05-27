.class public final Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;
.super Ljava/lang/Object;
.source "ApiModule_ProvideTexaCareServiceBusFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/networking/TexaCareServiceBus;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/ApiModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ApiModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;-><init>(Lcom/texa/careapp/dagger/ApiModule;)V

    return-object v0
.end method

.method public static provideTexaCareServiceBus(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/networking/TexaCareServiceBus;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule;->provideTexaCareServiceBus()Lcom/texa/careapp/networking/TexaCareServiceBus;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/networking/TexaCareServiceBus;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/networking/TexaCareServiceBus;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;->provideTexaCareServiceBus(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/networking/TexaCareServiceBus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;->get()Lcom/texa/careapp/networking/TexaCareServiceBus;

    move-result-object v0

    return-object v0
.end method
