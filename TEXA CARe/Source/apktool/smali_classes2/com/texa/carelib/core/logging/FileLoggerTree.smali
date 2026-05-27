.class public Lcom/texa/carelib/core/logging/FileLoggerTree;
.super Lcom/texa/carelib/core/logging/CareLog$LoggerTree;
.source "FileLoggerTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLoggerTree"

.field private static final THREE_MB:J = 0x300000L

.field private static final _DateFormat:Ljava/text/DateFormat;


# instance fields
.field private final mFileLock:Ljava/lang/Object;

.field private mLogFile:Ljava/io/File;

.field private mMaxSize:J

.field private mMinPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/core/logging/FileLoggerTree;->_DateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x4

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/core/logging/FileLoggerTree;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mFileLock:Ljava/lang/Object;

    .line 36
    iput p2, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mMinPriority:I

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    const-wide/32 p1, 0x300000

    .line 38
    iput-wide p1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mMaxSize:J

    .line 40
    invoke-direct {p0}, Lcom/texa/carelib/core/logging/FileLoggerTree;->createLogFile()V

    return-void
.end method

.method private backupLogFile()V
    .locals 3

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 94
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createLogFile()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    .line 57
    sget-object v1, Lcom/texa/carelib/core/logging/FileLoggerTree;->TAG:Ljava/lang/String;

    const-string v2, "got exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 101
    sget-object p1, Lcom/texa/carelib/core/logging/FileLoggerTree;->TAG:Ljava/lang/String;

    const-string p2, "mLogFile is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 108
    sget-object v1, Lcom/texa/carelib/core/logging/FileLoggerTree;->_DateFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "|"

    if-eqz p1, :cond_1

    .line 110
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 111
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 115
    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string p1, "line.separator"

    .line 116
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 117
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    sget-object p2, Lcom/texa/carelib/core/logging/FileLoggerTree;->TAG:Ljava/lang/String;

    const-string v0, "got exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected isLoggable(I)Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mMinPriority:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 69
    iget-object p1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mFileLock:Ljava/lang/Object;

    monitor-enter p1

    .line 70
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/core/logging/FileLoggerTree;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p3, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mLogFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mMaxSize:J

    cmp-long p3, v0, v2

    if-ltz p3, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/texa/carelib/core/logging/FileLoggerTree;->backupLogFile()V

    :cond_0
    if-eqz p4, :cond_1

    .line 77
    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/core/logging/FileLoggerTree;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setMaxSize(J)Lcom/texa/carelib/core/logging/FileLoggerTree;
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/texa/carelib/core/logging/FileLoggerTree;->mMaxSize:J

    return-object p0
.end method
