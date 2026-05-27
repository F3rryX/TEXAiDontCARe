.class Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;
.super Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;
.source "SerialImpactDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;->onMessageReceivedBeginFileDataCrash(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;

.field final synthetic val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->this$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;

    iput-object p2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SimpleFileCarrierListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V
    .locals 11

    .line 554
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_3

    .line 555
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_DUMP_REPORTS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Lcom/texa/carelib/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/texa/carelib/core/utils/ExternalFileCache;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/texa/carelib/core/utils/ExternalFileCache;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 561
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    const-string v2, "crash_reports"

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-static {v4}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$100(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_crash_report_bundle_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/core/utils/internal/Utils;->getISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/texa/carelib/core/utils/FileCache;->store(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 567
    :try_start_2
    sget-object v2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v3, "Could not dump crash data."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    :cond_1
    :goto_1
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 573
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 574
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->parse(Ljava/nio/ByteBuffer;)V

    .line 576
    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getImpacts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->addImpacts(Ljava/util/List;)V

    .line 577
    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getAccelerationEvents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->addAccelerationEvents(Ljava/util/List;)V

    .line 578
    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;->getAccelerationEventsLPM()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->addAccelerationEventsLPM(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    :try_start_4
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 580
    :try_start_5
    sget-object v2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v3, "IOError."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 582
    :try_start_6
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    .line 585
    :cond_2
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v2, "file cannot be NULL!!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 589
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    throw v0
.end method

.method public onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    new-instance v1, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;->val$target:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    invoke-static {v0, v1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$300(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V

    return-void
.end method
