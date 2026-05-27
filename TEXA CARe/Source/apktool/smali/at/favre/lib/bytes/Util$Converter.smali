.class final Lat/favre/lib/bytes/Util$Converter;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Converter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteToCharArray([BLjava/nio/charset/Charset;Ljava/nio/ByteOrder;)[C
    .locals 1

    const-string v0, "bytes must not be null"

    .line 652
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "charset must not be null"

    .line 653
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 657
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 658
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [C

    .line 659
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    return-object p1

    .line 662
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 664
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static charToByteArray([CLjava/nio/charset/Charset;II)[B
    .locals 2

    if-ltz p2, :cond_6

    .line 610
    array-length v0, p0

    if-gt p2, v0, :cond_6

    if-ltz p3, :cond_5

    .line 612
    array-length v0, p0

    if-gt p3, v0, :cond_5

    add-int v0, p2, p3

    .line 614
    array-length v1, p0

    if-gt v0, v1, :cond_4

    if-nez p3, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 619
    :cond_0
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    if-nez p2, :cond_1

    .line 621
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 622
    :cond_1
    invoke-virtual {p0, p2, v0}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 625
    :cond_2
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 626
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 627
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 628
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    .line 631
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 615
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length + offset must be smaller than array length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 613
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length must be at least 1 and less than array length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 611
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be gt 0 and smaller than array length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toArray(Ljava/util/Collection;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 455
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 456
    new-array v0, v0, [B

    .line 458
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 459
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toBoxedArray([B)[Ljava/lang/Byte;
    .locals 3

    .line 482
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    .line 483
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 484
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toByteArray([I)[B
    .locals 7

    .line 554
    array-length v0, p0

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 555
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 556
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 557
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 558
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    mul-int/lit8 v5, v3, 0x4

    .line 559
    array-length v6, v4

    invoke-static {v4, v2, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toByteArray([J)[B
    .locals 7

    .line 581
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 582
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 583
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 584
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 585
    aget-wide v4, p0, v3

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    mul-int/lit8 v5, v3, 0x8

    .line 586
    array-length v6, v4

    invoke-static {v4, v2, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toBytesFromUUID(Ljava/util/UUID;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x10

    .line 793
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static toDoubleArray([BLjava/nio/ByteOrder;)[D
    .locals 0

    .line 770
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 771
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [D

    .line 772
    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object p1
.end method

.method static toFloatArray([BLjava/nio/ByteOrder;)[F
    .locals 0

    .line 743
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [F

    .line 745
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static toIntArray([BLjava/nio/ByteOrder;)[I
    .locals 0

    .line 689
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 690
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [I

    .line 691
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p1
.end method

.method static toList([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 507
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 508
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toLongArray([BLjava/nio/ByteOrder;)[J
    .locals 0

    .line 716
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 717
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [J

    .line 718
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object p1
.end method

.method static toPrimitiveArray([Ljava/lang/Byte;)[B
    .locals 3

    .line 530
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 531
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 532
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
