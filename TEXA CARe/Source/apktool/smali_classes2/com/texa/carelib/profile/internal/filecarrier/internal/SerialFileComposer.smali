.class Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;
.super Ljava/lang/Object;
.source "SerialFileComposer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialFileComposer"


# instance fields
.field private mActualSize:I

.field private final mExpectedFileSize:I

.field private final mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mFile:Ljava/io/File;

    .line 39
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mExpectedFileSize:I

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/File;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mFile:Ljava/io/File;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 75
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mExpectedFileSize:I

    if-lez v0, :cond_0

    .line 76
    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    return v1
.end method

.method public isCompleted()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mExpectedFileSize:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processChunk([B)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 113
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 120
    iget v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    if-ne v1, v2, :cond_2

    .line 122
    array-length p1, p1

    add-int/lit8 p1, p1, -0x4

    .line 124
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    sget-object v1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not create the file!!."

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 131
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    int-to-long v6, v2

    int-to-long v8, p1

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 141
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    .line 144
    :cond_2
    iget p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 114
    :cond_3
    :goto_1
    iget p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    goto :goto_0
.end method

.method public processChunk([C)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 100
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->processChunk([B)J

    move-result-wide v0

    return-wide v0

    .line 101
    :cond_1
    :goto_0
    iget p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->mActualSize:I

    int-to-long v0, p1

    return-wide v0
.end method
