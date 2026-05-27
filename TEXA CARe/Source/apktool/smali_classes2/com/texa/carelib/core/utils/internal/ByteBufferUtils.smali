.class public Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;
.super Ljava/lang/Object;
.source "ByteBufferUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p0, v0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3

    .line 149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const-string v1, ""

    if-lt p1, v0, :cond_0

    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    return-object v1

    .line 163
    :cond_2
    new-array v0, v0, [B

    .line 164
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 168
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private static getTimeStamp(JLjava/util/concurrent/TimeUnit;)Ljava/util/Date;
    .locals 0

    .line 132
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 135
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 137
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 p1, 0x7df

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;)Ljava/util/Date;
    .locals 2

    .line 124
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimeStamp(JLjava/util/concurrent/TimeUnit;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;I)Ljava/util/Date;
    .locals 0

    .line 128
    invoke-static {p1, p2}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-static {p1, p2, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimeStamp(JLjava/util/concurrent/TimeUnit;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 0

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static getUnsignedByte(Ljava/nio/ByteBuffer;I)S
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)J
    .locals 4

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;I)J
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static getUnsignedLong(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 109
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->reverse([B)V

    .line 111
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static getUnsignedLong(Ljava/nio/ByteBuffer;I)Ljava/math/BigInteger;
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 117
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->reverse([B)V

    .line 120
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;ILjava/lang/Integer;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public static putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;ILjava/lang/Long;)Z
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;ILjava/lang/Integer;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0xffff

    and-int/2addr p2, v0

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method
