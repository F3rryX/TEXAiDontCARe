.class public Lcom/texa/carelib/core/utils/ExternalFileCache;
.super Ljava/lang/Object;
.source "ExternalFileCache.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/FileCache;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheRootDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/texa/carelib/core/utils/InternalFileCache;

    const-string v0, "InternalFileCache"

    sput-object v0, Lcom/texa/carelib/core/utils/ExternalFileCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/ExternalFileCache;->hasPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    iput-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    :cond_0
    return-void
.end method

.method private ensureWritePermission(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/ExternalFileCache;->hasPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Application is not authorized to write on external storage. Permission WRITE_EXTERNAL_STORAGE has be denied."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 137
    invoke-static {p1, v0}, Lcom/texa/carelib/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clear()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->clear(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0
.end method

.method public create(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->create(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;

    invoke-direct {p2}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;-><init>()V

    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p2, p1, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->create(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;

    invoke-direct {p2}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;-><init>()V

    iget-object p3, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->delete(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 77
    new-instance p2, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;

    invoke-direct {p2}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;-><init>()V

    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->getDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->getFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1, p2, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->store(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;

    invoke-direct {p2}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;-><init>()V

    iget-object p3, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/core/utils/ExternalFileCache;->ensureWritePermission(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-static {v0, p1, p2, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->store(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;

    invoke-direct {p2}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;-><init>()V

    iget-object p3, p0, Lcom/texa/carelib/core/utils/ExternalFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/texa/carelib/core/utils/internal/MediaScannerHelper;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method
