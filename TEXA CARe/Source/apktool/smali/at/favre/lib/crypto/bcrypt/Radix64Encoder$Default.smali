.class public Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;
.super Ljava/lang/Object;
.source "Radix64Encoder.java"

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/Radix64Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/Radix64Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static final DECODE_TABLE:[B

.field private static final MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 59
    fill-array-data v0, :array_0

    sput-object v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->DECODE_TABLE:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 68
    fill-array-data v0, :array_1

    sput-object v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->MAP:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
    .end array-data

    :array_1
    .array-data 1
        0x2et
        0x2ft
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode([B[B)[B
    .locals 10

    .line 148
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    :goto_0
    add-int/2addr v0, v1

    .line 149
    new-array v0, v0, [B

    .line 150
    array-length v1, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v2, v1, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 152
    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 153
    aget-byte v7, p0, v2

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v2, 0x1

    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v7, v9

    aget-byte v7, p1, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v4, 0x1

    .line 154
    aget-byte v7, p0, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v5, v7, 0x2

    add-int/lit8 v7, v2, 0x2

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v6, 0x1

    .line 155
    aget-byte v5, p0, v7

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p1, v5

    aput-byte v5, v0, v6

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 157
    :cond_1
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    if-eq v2, v3, :cond_3

    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 163
    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v5

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    .line 164
    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v1, v3

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v6

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 165
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v5

    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v4, 0x1

    .line 159
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v5

    aget-byte v3, p1, v3

    aput-byte v3, v0, v4

    .line 160
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v2

    :goto_2
    return-object v0
.end method


# virtual methods
.method public decode([B)[B
    .locals 14

    .line 85
    array-length v0, p1

    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    .line 87
    aget-byte v5, p1, v5

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

    .line 94
    div-long/2addr v5, v7

    long-to-int v6, v5

    new-array v5, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v8, v0, :cond_7

    .line 100
    aget-byte v12, p1, v8

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_5

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_5

    const/16 v13, 0x41

    if-lt v12, v13, :cond_2

    const/16 v13, 0x7a

    if-le v12, v13, :cond_5

    :cond_2
    const/16 v13, 0x30

    if-lt v12, v13, :cond_3

    const/16 v13, 0x39

    if-gt v12, v13, :cond_3

    goto :goto_3

    :cond_3
    if-eq v12, v4, :cond_6

    if-eq v12, v3, :cond_6

    if-eq v12, v2, :cond_6

    if-ne v12, v1, :cond_4

    goto :goto_4

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid character to decode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_5
    :goto_3
    sget-object v13, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->DECODE_TABLE:[B

    aget-byte v12, v13, v12

    shl-int/lit8 v10, v10, 0x6

    int-to-byte v12, v12

    or-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    .line 116
    rem-int/lit8 v12, v9, 0x4

    if-nez v12, :cond_6

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v13, v10, 0x10

    int-to-byte v13, v13

    .line 117
    aput-byte v13, v5, v11

    add-int/lit8 v11, v12, 0x1

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    .line 118
    aput-byte v13, v5, v12

    add-int/lit8 v12, v11, 0x1

    int-to-byte v13, v10

    .line 119
    aput-byte v13, v5, v11

    move v11, v12

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 123
    :cond_7
    rem-int/lit8 v9, v9, 0x4

    const/4 p1, 0x1

    if-ne v9, p1, :cond_8

    new-array p1, v7, [B

    return-object p1

    :cond_8
    const/4 p1, 0x2

    if-ne v9, p1, :cond_9

    shl-int/lit8 p1, v10, 0xc

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 130
    aput-byte p1, v5, v11

    move v11, v0

    goto :goto_5

    :cond_9
    const/4 p1, 0x3

    if-ne v9, p1, :cond_a

    shl-int/lit8 p1, v10, 0x6

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 134
    aput-byte v1, v5, v11

    add-int/lit8 v11, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 135
    aput-byte p1, v5, v0

    :cond_a
    :goto_5
    if-ne v11, v6, :cond_b

    return-object v5

    .line 142
    :cond_b
    new-array p1, v11, [B

    .line 143
    invoke-static {v5, v7, p1, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public encode([B)[B
    .locals 1

    .line 79
    sget-object v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->MAP:[B

    invoke-static {p1, v0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->encode([B[B)[B

    move-result-object p1

    return-object p1
.end method
