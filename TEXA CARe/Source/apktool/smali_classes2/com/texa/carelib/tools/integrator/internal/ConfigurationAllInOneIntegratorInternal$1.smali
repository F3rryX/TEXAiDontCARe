.class synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

.field static final synthetic $SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

.field static final synthetic $SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 697
    invoke-static {}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->values()[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

    sget-object v3, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->WaitingForEngineON:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {v3}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 504
    :catch_1
    invoke-static {}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->values()[Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus:[I

    :try_start_2
    sget-object v3, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus:[I

    sget-object v3, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 311
    :catch_3
    invoke-static {}, Lcom/texa/carelib/communication/CommunicationStatus;->values()[Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    :try_start_4
    sget-object v3, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v3}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    sget-object v2, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
