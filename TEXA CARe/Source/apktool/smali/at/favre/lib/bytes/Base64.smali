.class final Lat/favre/lib/bytes/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lat/favre/lib/bytes/Base64;->MAP:[B

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_1

    sput-object v0, Lat/favre/lib/bytes/Base64;->URL_MAP:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/CharSequence;)[B
    .locals 14

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    .line 54
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_0

    if-eq v5, v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long v5, v5, v7

    const-wide/16 v7, 0x8

    .line 61
    div-long/2addr v5, v7

    long-to-int v6, v5

    new-array v5, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v8, v0, :cond_b

    .line 67
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-lt v12, v13, :cond_2

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_2

    add-int/lit8 v12, v12, -0x41

    goto :goto_5

    :cond_2
    const/16 v13, 0x61

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_3

    add-int/lit8 v12, v12, -0x47

    goto :goto_5

    :cond_3
    const/16 v13, 0x30

    if-lt v12, v13, :cond_4

    const/16 v13, 0x39

    if-gt v12, v13, :cond_4

    add-int/lit8 v12, v12, 0x4

    goto :goto_5

    :cond_4
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_9

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_5

    goto :goto_4

    :cond_5
    const/16 v13, 0x2f

    if-eq v12, v13, :cond_8

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_6

    goto :goto_3

    :cond_6
    if-eq v12, v4, :cond_a

    if-eq v12, v3, :cond_a

    if-eq v12, v2, :cond_a

    if-ne v12, v1, :cond_7

    goto :goto_6

    .line 92
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid character to decode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    const/16 v12, 0x3f

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v12, 0x3e

    :goto_5
    shl-int/lit8 v10, v10, 0x6

    int-to-byte v12, v12

    or-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    .line 100
    rem-int/lit8 v12, v9, 0x4

    if-nez v12, :cond_a

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v13, v10, 0x10

    int-to-byte v13, v13

    .line 101
    aput-byte v13, v5, v11

    add-int/lit8 v11, v12, 0x1

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    .line 102
    aput-byte v13, v5, v12

    add-int/lit8 v12, v11, 0x1

    int-to-byte v13, v10

    .line 103
    aput-byte v13, v5, v11

    move v11, v12

    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 107
    :cond_b
    rem-int/lit8 v9, v9, 0x4

    const/4 p0, 0x1

    if-ne v9, p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p0, 0x2

    if-ne v9, p0, :cond_d

    shl-int/lit8 p0, v10, 0xc

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 114
    aput-byte p0, v5, v11

    move v11, v0

    goto :goto_7

    :cond_d
    const/4 p0, 0x3

    if-ne v9, p0, :cond_e

    shl-int/lit8 p0, v10, 0x6

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 118
    aput-byte v1, v5, v11

    add-int/lit8 v11, v0, 0x1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 119
    aput-byte p0, v5, v0

    :cond_e
    :goto_7
    if-ne v11, v6, :cond_f

    return-object v5

    .line 126
    :cond_f
    invoke-static {v5, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method static encode([B)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 130
    invoke-static {p0, v0, v1}, Lat/favre/lib/bytes/Base64;->encode([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method static encode([BZZ)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 134
    sget-object p1, Lat/favre/lib/bytes/Base64;->URL_MAP:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lat/favre/lib/bytes/Base64;->MAP:[B

    :goto_0
    invoke-static {p0, p1, p2}, Lat/favre/lib/bytes/Base64;->encode([B[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static encode([B[BZ)[B
    .locals 9

    .line 138
    array-length v0, p0

    invoke-static {v0, p2}, Lat/favre/lib/bytes/Base64;->outLength(IZ)I

    move-result v0

    .line 139
    new-array v0, v0, [B

    .line 140
    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 142
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v4

    aget-byte v6, p1, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 143
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v2, 0x1

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v6, v8

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v3, 0x1

    .line 144
    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v4, v6, 0x2

    add-int/lit8 v6, v2, 0x2

    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v4, v7

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 145
    aget-byte v4, p0, v6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, p1, v4

    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 147
    :cond_0
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 157
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v4

    aget-byte v7, p1, v7

    aput-byte v7, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 158
    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v1, v6

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 159
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    if-eqz p2, :cond_3

    .line 162
    aput-byte v5, v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    .line 149
    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v4, v6, 0x2

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 150
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v2

    if-eqz p2, :cond_3

    add-int/lit8 p0, v3, 0x1

    .line 152
    aput-byte v5, v0, v3

    .line 153
    aput-byte v5, v0, p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static outLength(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x2

    .line 172
    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 174
    :cond_0
    rem-int/lit8 p1, p0, 0x3

    .line 175
    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x4

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    add-int/2addr p0, p1

    :goto_1
    return p0
.end method
