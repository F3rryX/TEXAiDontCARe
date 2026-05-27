.class Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;
.super Ljava/lang/Object;
.source "SerialInputStreamSplitter.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final MIN_FIELD_LENGTH:I = 0x4

.field public static final OFFSET_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SerialInputStreamSplitter"


# instance fields
.field public final MAX_BLOCK_SIZE:I

.field public final MAX_SEND_SIZE:I

.field private final mInputStream:Ljava/io/InputStream;

.field private mReadBytesCount:I

.field private mTotalBytesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mInputStream:Ljava/io/InputStream;

    mul-int/lit16 p2, p2, 0x200

    .line 28
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->MAX_BLOCK_SIZE:I

    add-int/lit8 p2, p2, 0x4

    .line 29
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->MAX_SEND_SIZE:I

    const/4 p2, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mTotalBytesCount:I

    .line 33
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total bytes count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mTotalBytesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->TAG:Ljava/lang/String;

    new-array v1, p2, [Ljava/lang/Object;

    const-string v2, "Could not retrieve input stream size."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mTotalBytesCount:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getChunkOfData()[B
    .locals 8

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 57
    :cond_0
    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->MAX_BLOCK_SIZE:I

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    .line 58
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    iget v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mReadBytesCount:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    new-array v1, v1, [B

    .line 64
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    .line 65
    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 67
    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mReadBytesCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mReadBytesCount:I

    .line 68
    sget-object v1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->TAG:Ljava/lang/String;

    const-string v5, "Read chunk of %1$d bytes.(%2$d/%3$d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x1

    iget v7, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mReadBytesCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget v7, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mTotalBytesCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getProgress()F
    .locals 2

    .line 88
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mTotalBytesCount:I

    if-lez v0, :cond_0

    .line 89
    iget v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;->mReadBytesCount:I

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
