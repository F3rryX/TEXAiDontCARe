.class public final Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideDiagnosticConfigurationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 31
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->profileProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->accessoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDiagnosticConfiguration(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule;->provideDiagnosticConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-static {v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->provideDiagnosticConfiguration(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->get()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v0

    return-object v0
.end method
