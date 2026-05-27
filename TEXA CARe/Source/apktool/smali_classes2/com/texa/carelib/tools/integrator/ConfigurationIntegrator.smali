.class public Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;
.super Ljava/lang/Object;
.source "ConfigurationIntegrator.java"


# static fields
.field private static final CONFIGURATION_WEIGHT:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "ConfigurationIntegrator"

.field private static final UPLOAD_REPORTS_WEIGHT:F = 0.05f


# instance fields
.field private final mConfigurationProcedureListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

.field private mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

.field private mError:Lcom/texa/carelib/core/CareError;

.field private mListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

.field private mProgress:F

.field private mSerialNumber:Ljava/lang/String;

.field private mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;-><init>(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)V

    iput-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mConfigurationProcedureListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mError:Lcom/texa/carelib/core/CareError;

    return-object p0
.end method

.method static synthetic access$002(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mError:Lcom/texa/carelib/core/CareError;

    return-object p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mProgress:F

    return p0
.end method

.method static synthetic access$102(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->getReports(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->deleteReports(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    return-object p0
.end method

.method private deleteReports(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Could not delete file: %s"

    invoke-static {v1, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getReports(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/ConfigurationReport;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 245
    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Configuration file cannot be null!!"

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Configuration file does not exists!!"

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/FileUtils;->readAllBytes(Ljava/io/File;)[B

    move-result-object v3

    .line 254
    invoke-static {v3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigurationReportParser;->getReportStatus([B)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const-string v5, "OK"

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne v6, v4, :cond_3

    const-string v5, "NOT_AVAILABLE"

    :cond_3
    :goto_1
    const/4 v4, 0x4

    .line 262
    array-length v6, v3

    invoke-static {v3, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v4, 0x2

    .line 263
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 264
    new-instance v4, Lcom/texa/carelib/webservices/ConfigurationReport;

    invoke-direct {v4, v5, v3}, Lcom/texa/carelib/webservices/ConfigurationReport;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 266
    sget-object v4, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File doesn\'t exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method protected fireCareConfigurationCompleted(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;->onConfigurationProcedureCompleted(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireCareConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;->onConfigurationProcedureProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireCareConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;->onConfigurationProcedureStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V

    :cond_0
    return-void
.end method

.method public getCareConfigurationProcedureStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Undef:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-object v0

    .line 129
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mError:Lcom/texa/carelib/core/CareError;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mProgress:F

    return v0
.end method

.method public setConfigurationProcedure(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    return-object p0
.end method

.method public setListener(Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    return-object p0
.end method

.method public setServiceVehicleConfigurationProcedure(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    return-object p0
.end method

.method public updateConfigurationAndUploadReports(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    const-string v1, "Service vehicle configuration procedure is not yet set."

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Begin configuration..."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mSerialNumber:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mConfigurationProcedureListener:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;->setDiagnosticConfigurationListener(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;)V

    .line 159
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    invoke-interface {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;->loadConfigurations(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
