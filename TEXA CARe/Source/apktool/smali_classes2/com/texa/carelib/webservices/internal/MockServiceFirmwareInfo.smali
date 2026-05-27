.class Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;
.source "MockServiceFirmwareInfo.java"


# static fields
.field private static final LOAD_INFO_DELAY:I = 0x7d0

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;-><init>()V

    return-void
.end method

.method private getAvailableMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 15

    .line 59
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v14, v1, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v14}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/webservices/FirmwareType;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    return-object v0
.end method

.method private getAvailableServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 15

    .line 64
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v14, v1, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v14}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/webservices/FirmwareType;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    return-object v0
.end method

.method private getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/webservices/FirmwareType;IIII)Ljava/lang/String;
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]_["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object p1, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, p5, :cond_0

    const-string p1, "MA_"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    sget-object p1, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, p5, :cond_1

    const-string p1, "SA_"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bin"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$loadFirmwareInfo$0$com-texa-carelib-webservices-internal-MockServiceFirmwareInfo(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getAvailableMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 48
    invoke-direct {p0, p2}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getAvailableServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 50
    sget-object p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Loaded:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 52
    new-instance p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/CareError;)V

    .line 54
    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 42
    sget-object p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    .line 44
    sget-object p1, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceFirmwareInfo;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V

    const-wide/16 p2, 0x7d0

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 36
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Load firmware info is already in progress."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
