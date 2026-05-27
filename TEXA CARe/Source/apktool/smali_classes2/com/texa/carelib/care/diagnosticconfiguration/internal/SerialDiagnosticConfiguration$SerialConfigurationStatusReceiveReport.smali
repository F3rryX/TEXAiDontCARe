.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
.source "SerialDiagnosticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialConfigurationStatusReceiveReport"
.end annotation


# instance fields
.field private final _TAG:Ljava/lang/String;

.field private volatile mIsWaiting:Z

.field private mTimeoutRunnableFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mUpdateProgressFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mUseWatchDog:Z


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Z)V
    .locals 1

    .line 1071
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    .line 1073
    iput-boolean p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mUseWatchDog:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;)Ljava/lang/String;
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    return-object p0
.end method

.method private onEnterBigTimeout()V
    .locals 7

    .line 1129
    invoke-static {}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mUpdateProgressFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1137
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Setting receive configuration report timeout..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$500(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v0

    .line 1139
    invoke-direct {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->scheduleReceiveReportTimeoutCallback(I)V

    return-void
.end method

.method private onEnterWatchDog()V
    .locals 1

    const v0, 0xea60

    .line 1108
    invoke-direct {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->scheduleReceiveReportTimeoutCallback(I)V

    return-void
.end method

.method private onReceiveBeginFileDownload(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    const/4 v0, 0x0

    .line 1183
    iput-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mIsWaiting:Z

    .line 1185
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->resetReceiveReportTimeoutCallback()V

    if-eqz p2, :cond_0

    .line 1188
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Couldn\'t receive configuration report. (BeginFileDownload error)."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 1193
    :cond_0
    new-instance p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;

    invoke-direct {p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;-><init>()V

    .line 1194
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;->getFileLength([B)I

    move-result v1

    .line 1195
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;->getFileType([B)I

    move-result p1

    .line 1197
    iget-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "File type:%d"

    invoke-static {p2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    iget-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "File length:%d"

    invoke-static {p2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x11

    if-ne p1, p2, :cond_2

    if-nez v1, :cond_1

    .line 1202
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Report length is zero!"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v0, 0x8

    invoke-direct {p2, v2, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_configuration_report_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialProfileProxy()Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    move-result-object p2

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$1;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;)V

    invoke-virtual {p2, v2, p1, v1, v3}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->receiveFileWithType(Landroid/content/Context;IILcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1269
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Could not download configuration report at this moment."

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onReceiveGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1169
    sget-object p2, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->WaitingForEngineON:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1170
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    move-result-object p1

    .line 1172
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->getStatus()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->cancelWaitEngine()V

    .line 1176
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    :cond_0
    return-void
.end method

.method private resetReceiveReportTimeoutCallback()V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mTimeoutRunnableFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Removing receive configuration timeout."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mTimeoutRunnableFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mTimeoutRunnableFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private scheduleReceiveReportTimeoutCallback(I)V
    .locals 4

    .line 1120
    invoke-static {}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$1000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mTimeoutRunnableFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEnterBigTimeout$1$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport()V
    .locals 4

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->updateConfigurationProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1133
    :catch_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_care_configuration_aborted_by_user:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleReceiveReportTimeoutCallback$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport()V
    .locals 4

    .line 1121
    iget-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mIsWaiting:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Receive report TIMEOUT!!! Terminating configuration procedure..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_receive_configuration_report_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method

.method public onEnter()V
    .locals 3

    .line 1079
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onEnter()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    iget-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mIsWaiting:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1082
    iput-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mIsWaiting:Z

    .line 1084
    iget-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mUseWatchDog:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->onEnterWatchDog()V

    goto :goto_0

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->onEnterBigTimeout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 4

    .line 1094
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onExit()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    iput-boolean v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mIsWaiting:Z

    .line 1098
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->resetReceiveReportTimeoutCallback()V

    .line 1100
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mUpdateProgressFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1101
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1102
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->mUpdateProgressFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1104
    :cond_0
    invoke-super {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onExit()V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 1144
    invoke-super {p0, p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 1146
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x30

    if-ne v2, p1, :cond_0

    .line 1147
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Received command: %s"

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->onReceiveBeginFileDownload(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0xe6

    .line 1149
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    const-string v3, "Received command: %s "

    if-ne p1, v2, :cond_1

    .line 1150
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->onReceiveGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x49

    .line 1152
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p3

    if-ne p1, p3, :cond_2

    .line 1153
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-static {p1, v3, p3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->_TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/GetConfigurationPercentPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "Configuration verify progress: %d "

    invoke-static {p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->resetReceiveReportTimeoutCallback()V

    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->updateConfigurationProgress()V

    const p1, 0xea60

    .line 1160
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->scheduleReceiveReportTimeoutCallback(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    :catch_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 p3, 0x17

    invoke-direct {p2, v1, p3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_care_configuration_aborted_by_user:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method
