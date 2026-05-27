.class public final Lcom/texa/careapp/utils/MurmurHash3;
.super Ljava/lang/Object;
.source "MurmurHash3.java"


# static fields
.field public static seed:I = 0xccd1d5b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurhash3x8632([BII)I
    .locals 6

    .line 39
    sget v0, Lcom/texa/careapp/utils/MurmurHash3;->seed:I

    and-int/lit8 v1, p2, -0x4

    add-int/2addr v1, p1

    :goto_0
    const v2, -0x3361d2af    # -8.2930312E7f

    const v3, 0x1b873593

    if-ge p1, v1, :cond_0

    .line 44
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    mul-int v4, v4, v2

    shl-int/lit8 v2, v4, 0xf

    ushr-int/lit8 v4, v4, 0x11

    or-int/2addr v2, v4

    mul-int v2, v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v0, 0xd

    ushr-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x5

    const v2, -0x19ab949c

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    and-int/lit8 v4, p2, 0x3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 p1, 0x3

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v1, 0x2

    .line 59
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 62
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p1, v4

    .line 65
    :cond_3
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    mul-int p0, p0, v2

    shl-int/lit8 p1, p0, 0xf

    ushr-int/lit8 p0, p0, 0x11

    or-int/2addr p0, p1

    mul-int p0, p0, v3

    xor-int/2addr v0, p0

    :goto_1
    xor-int p0, v0, p2

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method
