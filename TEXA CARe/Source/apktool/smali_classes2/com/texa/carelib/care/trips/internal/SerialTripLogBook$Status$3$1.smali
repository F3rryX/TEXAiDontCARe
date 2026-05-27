.class Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;
.super Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;
.source "SerialTripLogBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->handleMessageBeginFileDataTrip(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

.field final synthetic val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->this$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFileReceivedProgressChanged$0(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V
    .locals 0

    .line 342
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->fireDownloadTripDataProgressChanged(Lcom/texa/carelib/care/trips/TripLogBook;F)V

    return-void
.end method


# virtual methods
.method public onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V
    .locals 12

    .line 301
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.texa.carelib.care.trips.TripLogBook#EXTRA_DUMP_LOGBOOK"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v3}, Lcom/texa/carelib/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/texa/carelib/core/utils/ExternalFileCache;

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/texa/carelib/core/utils/ExternalFileCache;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 312
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    :goto_0
    :try_start_0
    const-string v3, "trips"

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_triplogbook_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/texa/carelib/core/utils/internal/Utils;->getISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/texa/carelib/core/utils/FileCache;->store(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 318
    sget-object v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Could not dump trip log book..."

    invoke-static {v3, v0, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;-><init>()V

    .line 324
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v0, v3}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getTripInfoList(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setTripInfos(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 329
    :try_start_2
    sget-object v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const-string v4, "Could not subscribe trip log book."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 327
    sget-object v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const-string v4, "Could not subscribe tri`p log book."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :goto_2
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 332
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->this$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getTripsInfo()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v0, v2, v1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->access$100(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    goto :goto_4

    .line 331
    :goto_3
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 332
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->this$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getTripsInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->access$100(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    throw v0

    .line 303
    :cond_2
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Received file cannot be null if no error was occurred!!!"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "file cannot be null!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->this$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;->access$100(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    :goto_4
    return-void
.end method

.method public onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V
    .locals 5

    .line 341
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1;->val$target:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    new-instance v2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
