.class public abstract Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "DiagnosticConfigurationBase.java"

# interfaces
.implements Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

.field private mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 34
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    .line 35
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-void
.end method


# virtual methods
.method protected fireDiagnosticConfigurationLoaded(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;->onDiagnosticConfigurationLoaded(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireDiagnosticConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;->onDiagnosticConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireDiagnosticConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;->onDiagnosticConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected getDiagnosticConfigurationListener()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    return-object v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-object v0
.end method

.method protected isRunning()Z
    .locals 2

    .line 103
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 115
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->resetData()V

    :goto_0
    return-void
.end method

.method protected resetData()V
    .locals 1

    .line 108
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->setStatus(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->setDiagnosticConfigurationListener(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;)V

    return-void
.end method

.method public setDiagnosticConfigurationListener(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    return-void
.end method

.method protected setStatus(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    .line 71
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->fireDiagnosticConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V

    return-void
.end method

.method protected terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Landroid/content/Context;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->fireDiagnosticConfigurationLoaded(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    .line 98
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->resetData()V

    return-void
.end method
