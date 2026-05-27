.class Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;
.super Ljava/lang/Object;
.source "SerialFileSplitter.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x200

.field private static final MIN_FIELD_LENGTH:I = 0x4

.field public static final OFFSET_SIZE:I = 0x4


# instance fields
.field public final DATA_SIZE:I

.field public final FULL_DATA_SIZE:I

.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit16 p2, p2, 0x200

    .line 43
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->DATA_SIZE:I

    add-int/lit8 p2, p2, 0x4

    .line 44
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->FULL_DATA_SIZE:I

    return-void
.end method


# virtual methods
.method public getChunkOfData()[B
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->DATA_SIZE:I

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    .line 67
    new-array v1, v1, [B

    .line 69
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x4

    .line 71
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public getProgress()F
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileSplitter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v0, :cond_0

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
