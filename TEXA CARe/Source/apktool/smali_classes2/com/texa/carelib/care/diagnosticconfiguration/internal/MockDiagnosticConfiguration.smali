.class public Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;
.source "MockDiagnosticConfiguration.java"


# static fields
.field private static final CONFIGURATION_UPLOAD_DURATION:I = 0x5dc

.field public static final TAG:Ljava/lang/String; = "MockDiagnosticConfiguration"


# instance fields
.field private final mProfile:Lcom/texa/carelib/profile/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 44
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 45
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method


# virtual methods
.method public clearConfiguration(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 113
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Not yet implemented."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public synthetic lambda$loadConfigurations$0$com-texa-carelib-care-diagnosticconfiguration-internal-MockDiagnosticConfiguration(Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const-wide/16 v4, 0x5dc

    const/4 v2, 0x1

    .line 77
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 79
    sget-object v5, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "Wait has failed."

    invoke-static {v5, v4, v6}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_1
    sget-object v4, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "Before notify subscribe configurations progress %s of %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v2, v1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v2, v2, v4

    .line 86
    new-instance v5, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;

    invoke-direct {v5, p0, v2, v4, v3}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;FFLcom/texa/carelib/core/CareError;)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->fireDiagnosticConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V

    .line 89
    invoke-virtual {v5}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    :goto_2
    sget-object p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Before notify subscribe configurations completed"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    .line 101
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->setStatus(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Update configuration ends"

    .line 102
    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loadConfigurations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Update configuration begins"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 69
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->setStatus(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V

    .line 71
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 73
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_BeginUpdateConfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 66
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v0, "Could not subscribe the configuration. Operation is already running."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method
