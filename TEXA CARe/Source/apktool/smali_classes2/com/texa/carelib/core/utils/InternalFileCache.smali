.class public Lcom/texa/carelib/core/utils/InternalFileCache;
.super Ljava/lang/Object;
.source "InternalFileCache.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/FileCache;


# static fields
.field public static final TAG:Ljava/lang/String; = "InternalFileCache"


# instance fields
.field private mCacheRootDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->clear(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0
.end method

.method public create(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->create(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->create(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->delete(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

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

    .line 87
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

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

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 74
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

.method protected getRootDirectory()Ljava/io/File;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/utils/InternalFileCache;->mCacheRootDir:Ljava/io/File;

    return-object v0
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->store(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/InternalFileCache;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/texa/carelib/core/utils/internal/FileCacheSupport;->store(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
