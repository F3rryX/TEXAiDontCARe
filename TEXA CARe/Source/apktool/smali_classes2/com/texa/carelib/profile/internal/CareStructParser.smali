.class public abstract Lcom/texa/carelib/profile/internal/CareStructParser;
.super Ljava/lang/Object;
.source "CareStructParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFloat([BI)Ljava/lang/Float;
    .locals 2

    .line 157
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 161
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected getFloat([CI)Ljava/lang/Float;
    .locals 0

    .line 165
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/internal/CareStructParser;->getFloat([BI)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedByte([BI)Ljava/lang/Byte;
    .locals 2

    .line 33
    array-length v0, p1

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    aget-byte p1, p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedByte([CI)Ljava/lang/Byte;
    .locals 2

    .line 40
    array-length v0, p1

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    aget-char p1, p1, p2

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedChar([BI)Ljava/lang/Short;
    .locals 2

    .line 61
    array-length v0, p1

    add-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 66
    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    const p2, 0xff00

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-short p1, v0

    .line 68
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedChar([CI)Ljava/lang/Short;
    .locals 2

    .line 72
    array-length v0, p1

    add-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    aget-char v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 77
    aget-char p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    const p2, 0xff00

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-short p1, v0

    .line 79
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedInt([BI)Ljava/lang/Integer;
    .locals 3

    .line 105
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p2, 0x1

    .line 111
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 112
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 113
    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedInt([CI)Ljava/lang/Integer;
    .locals 3

    .line 119
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    aget-char v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p2, 0x1

    .line 125
    aget-char v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 126
    aget-char v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 127
    aget-char p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getSignedLong([BI)Ljava/lang/Long;
    .locals 2

    .line 149
    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x8

    .line 153
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp([BI)Ljava/util/Date;
    .locals 5

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/internal/CareStructParser;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 177
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 180
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0x7df

    if-ge p1, v1, :cond_1

    return-object p2

    .line 184
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp([CI)Ljava/util/Date;
    .locals 5

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/internal/CareStructParser;->getUnsignedInt([CI)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 193
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0x7df

    if-ge p1, v1, :cond_1

    return-object p2

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedByte([BI)Ljava/lang/Short;
    .locals 2

    .line 47
    array-length v0, p1

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedByte([CI)Ljava/lang/Short;
    .locals 2

    .line 54
    array-length v0, p1

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    aget-char p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedChar([BI)Ljava/lang/Integer;
    .locals 2

    .line 83
    array-length v0, p1

    add-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 88
    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    const p2, 0xff00

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedChar([CI)Ljava/lang/Integer;
    .locals 2

    .line 94
    array-length v0, p1

    add-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    aget-char v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 p2, p2, 0x1

    .line 99
    aget-char p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    const p2, 0xff00

    and-int/2addr p1, p2

    add-int/2addr v0, p1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedInt([BI)Ljava/lang/Long;
    .locals 2

    .line 133
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 137
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected getUnsignedInt([CI)Ljava/lang/Long;
    .locals 1

    .line 141
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p2, v0, p1}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray(II[C)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/profile/internal/CareStructParser;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public abstract parse([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method
