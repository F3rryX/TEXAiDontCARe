.class Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;
.super Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;
.source "MockServiceFirmwareDownloadProcedure.java"


# static fields
.field private static final DELAY_FIRMWARE_DOWNLOAD:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "MockServiceFirmwareDownloadProcedure"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v4, "downloadFirmware[type=%s,version=%s,hWID=%s]"

    invoke-static {v0, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 60
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 66
    sget-object p3, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-eq p1, p3, :cond_1

    sget-object p3, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Invalid firmware type."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    move-result-object p3

    sget-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    if-eq p3, v1, :cond_2

    .line 78
    sget-object p3, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {p0, p3}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    .line 80
    new-instance p3, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_downloadFirmware"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void

    .line 75
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Firmware download is already running..."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Callback cannot be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_4
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Version file name is null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Version is null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_6
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "HardwareID not set"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$downloadFirmware$0$com-texa-carelib-webservices-internal-MockServiceFirmwareDownloadProcedure(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V
    .locals 4

    const-wide/16 v0, 0x7d0

    .line 82
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Wait has failed."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_0
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V

    .line 89
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "fake_firmware.bin"

    .line 95
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, v0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->fireDownloadFirmwareCompleted(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Ljava/io/File;)V

    return-void
.end method
