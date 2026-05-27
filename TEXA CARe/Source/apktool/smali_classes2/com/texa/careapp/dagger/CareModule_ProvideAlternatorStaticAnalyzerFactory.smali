.class public final Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideAlternatorStaticAnalyzerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final vehicleAlarmNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/VehicleAlarmNotifier;",
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
            "Lcom/texa/careapp/alarms/VehicleAlarmNotifier;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->vehicleAlarmNotifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/VehicleAlarmNotifier;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAlternatorStaticAnalyzer(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideAlternatorStaticAnalyzer(Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->vehicleAlarmNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->provideAlternatorStaticAnalyzer(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->get()Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    move-result-object v0

    return-object v0
.end method
