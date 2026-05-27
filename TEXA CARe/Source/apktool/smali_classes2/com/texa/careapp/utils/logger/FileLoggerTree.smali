.class public Lcom/texa/careapp/utils/logger/FileLoggerTree;
.super Lcom/texa/carelib/core/logging/CareLog$LoggerTree;
.source "FileLoggerTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLoggerTree"

.field private static final THREE_MB:J = 0x300000L

.field private static final sDateFormat:Ljava/text/DateFormat;


# instance fields
.field private final mLogFile:Ljava/io/File;

.field private mMaxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->sDateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    const-wide/32 v0, 0x300000

    .line 33
    iput-wide v0, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mMaxSize:J

    return-void
.end method

.method private backupLogFile()V
    .locals 4

    const/4 v0, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {v1}, Lcom/texa/careapp/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 78
    iget-object v1, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-static {v1}, Lcom/texa/careapp/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    const-string v1, "BACKUP LOG FILE --> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "backupLogFile() fails."

    .line 81
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    sget-object v1, Lcom/texa/careapp/utils/logger/FileLoggerTree;->sDateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "|"

    if-eqz p1, :cond_0

    .line 90
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 91
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 93
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 94
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "got exception"

    .line 98
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mMaxSize:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/texa/careapp/utils/logger/FileLoggerTree;->backupLogFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/texa/careapp/utils/logger/FileLoggerTree;->append(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 58
    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/utils/logger/FileLoggerTree;->append(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxSize(J)Lcom/texa/careapp/utils/logger/FileLoggerTree;
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/texa/careapp/utils/logger/FileLoggerTree;->mMaxSize:J

    return-object p0
.end method
