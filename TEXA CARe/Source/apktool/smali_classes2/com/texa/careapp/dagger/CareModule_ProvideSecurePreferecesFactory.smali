.class public final Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideSecurePreferecesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/securepreferences/SecurePreferences;",
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
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;)V

    return-object v0
.end method

.method public static provideSecurePrefereces(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/securepreferences/SecurePreferences;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule;->provideSecurePrefereces()Lcom/texa/securepreferences/SecurePreferences;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/securepreferences/SecurePreferences;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/securepreferences/SecurePreferences;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->provideSecurePrefereces(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/securepreferences/SecurePreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->get()Lcom/texa/securepreferences/SecurePreferences;

    move-result-object v0

    return-object v0
.end method
