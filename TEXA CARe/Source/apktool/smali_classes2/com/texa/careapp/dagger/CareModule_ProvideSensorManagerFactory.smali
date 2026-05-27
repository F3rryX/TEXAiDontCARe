.class public final Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideSensorManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/hardware/SensorManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSensorManager(Lcom/texa/careapp/dagger/CareModule;Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/hardware/SensorManager;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->provideSensorManager(Lcom/texa/careapp/dagger/CareModule;Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->get()Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method
