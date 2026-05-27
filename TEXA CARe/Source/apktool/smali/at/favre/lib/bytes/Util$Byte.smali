.class final Lat/favre/lib/bytes/Util$Byte;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Byte"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs concat([[B)[B
    .locals 7

    .line 63
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 64
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-array v0, v3, [B

    .line 68
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 69
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static concatVararg(B[B)[B
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    aput-byte p0, p1, v1

    return-object p1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [[B

    new-array v3, v0, [B

    aput-byte p0, v3, v1

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    .line 96
    invoke-static {v2}, Lat/favre/lib/bytes/Util$Byte;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static constantTimeEquals([B[B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 375
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 379
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method static countByte([BB)I
    .locals 4

    .line 184
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p0, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static countByteArray([B[B)I
    .locals 6

    const-string v0, "pattern must not be null"

    .line 209
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 215
    :goto_0
    array-length v3, p0

    array-length v4, p1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_3

    const/4 v3, 0x0

    .line 216
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    add-int v4, v0, v3

    .line 217
    aget-byte v4, p0, v4

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v1
.end method

.method static entropy([B)D
    .locals 13

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, -0x1

    .line 404
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 406
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    .line 408
    aget v7, v1, v6

    if-ne v7, v2, :cond_0

    .line 409
    aput v4, v1, v6

    .line 411
    :cond_0
    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 415
    aget v3, v1, v4

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    int-to-double v7, v3

    .line 417
    array-length v3, p0

    int-to-double v9, v3

    div-double/2addr v7, v9

    .line 418
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    mul-double v7, v7, v9

    sub-double/2addr v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-wide v5
.end method

.method static indexOf([B[BII)I
    .locals 4

    const-string v0, "array must not be null"

    .line 121
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "target must not be null"

    .line 122
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    array-length v0, p1

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    :goto_0
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    .line 129
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    add-int v2, p2, v0

    .line 130
    aget-byte v2, p0, v2

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return p2

    :cond_3
    :goto_2
    return v1
.end method

.method static lastIndexOf([BBII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 159
    aget-byte v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static reverse([BII)V
    .locals 2

    .line 272
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 274
    aget-byte v0, p0, p1

    .line 275
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 276
    aput-byte v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static shiftLeft([BI)[B
    .locals 7

    .line 298
    rem-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    int-to-byte v1, v2

    .line 300
    div-int/lit8 p1, p1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 303
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    add-int v4, v3, p1

    .line 305
    array-length v5, p0

    if-lt v4, v5, :cond_0

    .line 306
    aput-byte v2, p0, v3

    goto :goto_1

    .line 308
    :cond_0
    aget-byte v5, p0, v4

    shl-int/2addr v5, v0

    int-to-byte v5, v5

    add-int/lit8 v4, v4, 0x1

    .line 310
    array-length v6, p0

    if-ge v4, v6, :cond_1

    .line 311
    aget-byte v4, p0, v4

    rsub-int/lit8 v6, v0, 0x8

    ushr-int/2addr v4, v6

    and-int/2addr v4, v1

    or-int/2addr v4, v5

    int-to-byte v5, v4

    .line 313
    :cond_1
    aput-byte v5, p0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method static shiftRight([BI)[B
    .locals 7

    .line 337
    rem-int/lit8 v0, p1, 0x8

    rsub-int/lit8 v1, v0, 0x8

    const/16 v2, 0xff

    shl-int v3, v2, v1

    int-to-byte v3, v3

    .line 339
    div-int/lit8 p1, p1, 0x8

    .line 342
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    sub-int v5, v4, p1

    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 345
    aput-byte v5, p0, v4

    goto :goto_1

    .line 347
    :cond_0
    aget-byte v6, p0, v5

    and-int/2addr v6, v2

    ushr-int/2addr v6, v0

    int-to-byte v6, v6

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 350
    aget-byte v5, p0, v5

    shl-int/2addr v5, v1

    and-int/2addr v5, v3

    or-int/2addr v5, v6

    int-to-byte v6, v5

    .line 352
    :cond_1
    aput-byte v6, p0, v4

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method static shuffle([BLjava/util/Random;)V
    .locals 4

    .line 245
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 246
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 247
    aget-byte v2, p0, v1

    .line 248
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 249
    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
