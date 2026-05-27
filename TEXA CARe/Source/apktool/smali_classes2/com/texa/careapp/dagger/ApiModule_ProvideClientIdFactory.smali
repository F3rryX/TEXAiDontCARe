.class public final Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;
.super Ljava/lang/Object;
.source "ApiModule_ProvideClientIdFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/ApiModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ApiModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;-><init>(Lcom/texa/careapp/dagger/ApiModule;)V

    return-object v0
.end method

.method public static provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule;->provideClientId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
