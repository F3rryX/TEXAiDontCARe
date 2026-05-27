.class public final Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideBatteryAnalyzerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;",
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
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->profileProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;
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
            "Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBatteryAnalyzer(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideBatteryAnalyzer(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->provideBatteryAnalyzer(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->get()Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    move-result-object v0

    return-object v0
.end method
