.class public Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationFactory;
.super Ljava/lang/Object;
.source "DiagnosticConfigurationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDiagnosticConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 3

    .line 38
    instance-of v0, p0, Lcom/texa/carelib/profile/ProfileTypeProxy;

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

    move-object v1, p0

    check-cast v1, Lcom/texa/carelib/profile/ProfileTypeProxy;

    invoke-interface {v1}, Lcom/texa/carelib/profile/ProfileTypeProxy;->getType()Lcom/texa/carelib/profile/ProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 47
    new-instance p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 48
    invoke-interface {p0, p1}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object p1

    .line 41
    :cond_0
    invoke-interface {p0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    new-instance v2, Lcom/texa/carelib/core/utils/InternalFileCache;

    invoke-direct {v2, v0}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/core/utils/FileCache;)V

    .line 43
    invoke-interface {p0, v1}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Profile type is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
