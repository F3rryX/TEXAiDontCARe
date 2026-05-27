.class final enum Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;
.super Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
.source "SerialTripLogBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;-><init>(Ljava/lang/String;ILcom/texa/carelib/care/trips/internal/SerialTripLogBook$1;)V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->terminate(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private handleMessageBeginFileDataTrip(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 294
    invoke-static {p2}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;

    move-result-object p2

    .line 296
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->getFileSize()I

    move-result p3

    if-lez p3, :cond_0

    .line 297
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->access$200(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object p3

    invoke-interface {p3}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    move-result-object p3

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->getFileType()I

    move-result v2

    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->getFileSize()I

    move-result p2

    new-instance v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;

    invoke-direct {v3, p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;-><init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;)V

    invoke-virtual {p3, v0, v2, p2, v3}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->receiveFileWithType(Landroid/content/Context;IILcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 347
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Could not download trip data at this moment."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_0
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "Invalid file size."

    invoke-static {p2, v1, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0, p1, v0, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->terminate(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 359
    :cond_1
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    const-string v1, "Download trip data fail. Error=%s"

    invoke-static {p2, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0, p1, v0, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->terminate(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private terminate(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 366
    :try_start_0
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 369
    sget-object p3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const-string v1, "Trip log book download has terminated successfully."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 370
    invoke-virtual {p1, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateTripDataDownload(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 372
    :cond_0
    sget-object v1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const-string v2, "Trip log book download has terminated with error: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-static {v1, v2, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0x14

    invoke-direct {v0, v3, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/texa/carelib/trips/R$string;->error_care_trip_log_book_download_fails:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    invoke-virtual {p1, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateTripDataDownload(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :goto_0
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    throw p1
.end method


# virtual methods
.method canEraseTrips()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method canReadTrips()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isErasingTripInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isReadingTripInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onMessageReceived(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 285
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->handleMessageBeginFileDataTrip(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
