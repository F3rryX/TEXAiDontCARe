.class public Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser;
.super Ljava/lang/Object;
.source "GetExtractionInsertionTimePacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentDate([C)Ljava/util/Date;
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 84
    array-length v2, p0

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    .line 86
    aget-char v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v3, v0

    const/16 v0, 0x9

    .line 87
    aget-char v0, p0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    const-wide/32 v5, 0xff00

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const/16 v0, 0xa

    .line 88
    aget-char v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    const-wide/32 v5, 0xff0000

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const/16 v0, 0xb

    .line 89
    aget-char p0, p0, v0

    int-to-long v0, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    const-wide/32 v5, -0x1000000

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, v3

    .line 94
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static getPlugDate([C)Ljava/util/Date;
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 67
    array-length v2, p0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    .line 69
    aget-char v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v4, v0

    const/4 v0, 0x5

    .line 70
    aget-char v0, p0, v0

    int-to-long v0, v0

    shl-long/2addr v0, v3

    const-wide/32 v2, 0xff00

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    const/4 v0, 0x6

    .line 71
    aget-char v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    const/4 v0, 0x7

    .line 72
    aget-char p0, p0, v0

    int-to-long v0, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    const-wide/32 v2, -0x1000000

    and-long/2addr v0, v2

    add-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, v4

    .line 77
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static getUnPlugDate([C)Ljava/util/Date;
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 50
    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 52
    aget-char v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v2, v0

    const/4 v0, 0x1

    .line 53
    aget-char v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    const/4 v0, 0x2

    .line 54
    aget-char v0, p0, v0

    int-to-long v0, v0

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    const/4 v0, 0x3

    .line 55
    aget-char p0, p0, v0

    int-to-long v0, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    const-wide/32 v4, -0x1000000

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, v2

    .line 60
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;-><init>()V

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    .line 32
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;-><init>()V

    if-eqz p0, :cond_1

    .line 35
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 36
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 37
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->setUnPlugDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-static {v2, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->setPlugDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    invoke-static {v2, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->setCurrentDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;

    :cond_1
    return-object v0
.end method
