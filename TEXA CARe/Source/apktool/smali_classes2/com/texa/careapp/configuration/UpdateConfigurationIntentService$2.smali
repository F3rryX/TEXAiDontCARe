.class synthetic Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$2;
.super Ljava/lang/Object;
.source "UpdateConfigurationIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 206
    invoke-static {}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->values()[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$2;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->WaitingForEngineON:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$2;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
