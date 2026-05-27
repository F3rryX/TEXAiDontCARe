.class public Lcom/texa/careapp/utils/LogConfigurator;
.super Ljava/lang/Object;
.source "LogConfigurator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogConfigurator"


# instance fields
.field private mCAReLibFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

.field private mCustomDebugTree:Lcom/texa/careapp/utils/logger/CustomDebugTree;

.field private mFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

.field private mLogcatLoggerTree:Lcom/texa/carelib/core/logging/LogcatLoggerTree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canReadWriteExternalStorage(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 78
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    sget-object p1, Lcom/texa/careapp/utils/LogConfigurator;->TAG:Ljava/lang/String;

    const-string v0, "Manifest.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 83
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    sget-object p1, Lcom/texa/careapp/utils/LogConfigurator;->TAG:Ljava/lang/String;

    const-string v0, "Manifest.permission.WRITE_EXTERNAL_STORAGE DENIED"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public logToFile(Landroid/content/Context;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iput-object v1, p0, Lcom/texa/careapp/utils/LogConfigurator;->mFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCAReLibFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lcom/texa/carelib/core/CareLibConfig;->removeLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    .line 59
    iput-object v1, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCAReLibFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/LogConfigurator;->canReadWriteExternalStorage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/texa/careapp/utils/logger/FileLoggerTree;

    new-instance v1, Ljava/io/File;

    const-string v2, "care.log"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/logger/FileLoggerTree;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    .line 66
    new-instance v0, Lcom/texa/careapp/utils/logger/FileLoggerTree;

    new-instance v1, Ljava/io/File;

    const-string v2, "carelib.log"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/logger/FileLoggerTree;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCAReLibFileLoggerTree:Lcom/texa/careapp/utils/logger/FileLoggerTree;

    .line 67
    invoke-static {v0}, Lcom/texa/carelib/core/CareLibConfig;->addLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    :cond_2
    return-void
.end method

.method public logToLogcat(I)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCustomDebugTree:Lcom/texa/careapp/utils/logger/CustomDebugTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Ltimber/log/Timber;->uproot(Ltimber/log/Timber$Tree;)V

    .line 37
    iput-object v1, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCustomDebugTree:Lcom/texa/careapp/utils/logger/CustomDebugTree;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mLogcatLoggerTree:Lcom/texa/carelib/core/logging/LogcatLoggerTree;

    if-eqz v0, :cond_1

    .line 41
    invoke-static {v0}, Lcom/texa/carelib/core/CareLibConfig;->removeLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    .line 42
    iput-object v1, p0, Lcom/texa/careapp/utils/LogConfigurator;->mLogcatLoggerTree:Lcom/texa/carelib/core/logging/LogcatLoggerTree;

    .line 45
    :cond_1
    new-instance v0, Lcom/texa/careapp/utils/logger/CustomDebugTree;

    invoke-direct {v0}, Lcom/texa/careapp/utils/logger/CustomDebugTree;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mCustomDebugTree:Lcom/texa/careapp/utils/logger/CustomDebugTree;

    .line 46
    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 48
    new-instance v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;

    invoke-direct {v0, p1}, Lcom/texa/carelib/core/logging/LogcatLoggerTree;-><init>(I)V

    iput-object v0, p0, Lcom/texa/careapp/utils/LogConfigurator;->mLogcatLoggerTree:Lcom/texa/carelib/core/logging/LogcatLoggerTree;

    .line 49
    invoke-static {v0}, Lcom/texa/carelib/core/CareLibConfig;->addLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    return-void
.end method
