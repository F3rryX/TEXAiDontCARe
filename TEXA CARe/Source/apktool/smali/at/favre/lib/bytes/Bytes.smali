.class public Lat/favre/lib/bytes/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/Bytes$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lat/favre/lib/bytes/Bytes;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lat/favre/lib/bytes/Bytes;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final byteArray:[B

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final factory:Lat/favre/lib/bytes/BytesFactory;

.field private transient hashCodeCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 64
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    sput-object v0, Lat/favre/lib/bytes/Bytes;->EMPTY:Lat/favre/lib/bytes/Bytes;

    return-void
.end method

.method constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 2

    .line 721
    new-instance v0, Lat/favre/lib/bytes/Bytes$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/Bytes$Factory;-><init>(Lat/favre/lib/bytes/Bytes$1;)V

    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/bytes/Bytes;-><init>([BLjava/nio/ByteOrder;Lat/favre/lib/bytes/BytesFactory;)V

    return-void
.end method

.method constructor <init>([BLjava/nio/ByteOrder;Lat/favre/lib/bytes/BytesFactory;)V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Lat/favre/lib/bytes/Bytes;->byteArray:[B

    .line 732
    iput-object p2, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    .line 733
    iput-object p3, p0, Lat/favre/lib/bytes/Bytes;->factory:Lat/favre/lib/bytes/BytesFactory;

    return-void
.end method

.method public static allocate(I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->allocate(IB)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static allocate(IB)Lat/favre/lib/bytes/Bytes;
    .locals 0

    if-nez p0, :cond_0

    .line 86
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0

    .line 87
    :cond_0
    new-array p0, p0, [B

    if-eqz p1, :cond_1

    .line 89
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    :cond_1
    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 100
    sget-object v0, Lat/favre/lib/bytes/Bytes;->EMPTY:Lat/favre/lib/bytes/Bytes;

    return-object v0
.end method

.method public static from(B)Lat/favre/lib/bytes/Bytes;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 251
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from(B[B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 263
    invoke-static {p0, p1}, Lat/favre/lib/bytes/Util$Byte;->concatVararg(B[B)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(C)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x2

    .line 286
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(D)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/16 v0, 0x8

    .line 356
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(F)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x4

    .line 346
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x4

    .line 306
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(J)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/16 v0, 0x8

    .line 326
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/io/DataInput;I)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 442
    invoke-static {p0, p1}, Lat/favre/lib/bytes/Util$File;->readFromDataInput(Ljava/io/DataInput;I)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/io/File;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 455
    invoke-static {p0}, Lat/favre/lib/bytes/Util$File;->readFromFile(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/io/File;II)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 470
    invoke-static {p0, p1, p2}, Lat/favre/lib/bytes/Util$File;->readFromFile(Ljava/io/File;II)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/io/InputStream;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, -0x1

    .line 419
    invoke-static {p0, v0}, Lat/favre/lib/bytes/Util$File;->readFromStream(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/io/InputStream;I)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 431
    invoke-static {p0, p1}, Lat/favre/lib/bytes/Util$File;->readFromStream(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 480
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "provided string must not be null"

    .line 502
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "provided charset must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 491
    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/math/BigInteger;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 409
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/nio/ByteBuffer;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "provided byte buffer must not be null"

    .line 367
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p0}, Lat/favre/lib/bytes/Bytes;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/nio/CharBuffer;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "provided char buffer must not be null"

    .line 378
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from([C)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/nio/IntBuffer;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "provided int buffer must not be null"

    .line 389
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from([I)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/BitSet;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 399
    invoke-virtual {p0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/Collection;)Lat/favre/lib/bytes/Bytes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lat/favre/lib/bytes/Bytes;"
        }
    .end annotation

    .line 231
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Converter;->toArray(Ljava/util/Collection;)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/util/UUID;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 547
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    invoke-static {p0}, Lat/favre/lib/bytes/Util$Converter;->toBytesFromUUID(Ljava/util/UUID;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(S)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x2

    .line 296
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from(Z)Lat/favre/lib/bytes/Bytes;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 276
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([B)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "must at least pass a single byte"

    .line 167
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([BII)Lat/favre/lib/bytes/Bytes;
    .locals 2

    const-string v0, "passed array must not be null"

    .line 192
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 194
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([C)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 512
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 523
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;II)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([CLjava/nio/charset/Charset;II)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 536
    invoke-static {p0, p1, p2, p3}, Lat/favre/lib/bytes/Util$Converter;->charToByteArray([CLjava/nio/charset/Charset;II)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from([I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "must provide at least a single int"

    .line 316
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0}, Lat/favre/lib/bytes/Util$Converter;->toByteArray([I)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from([J)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "must provide at least a single long"

    .line 336
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [J

    invoke-static {p0}, Lat/favre/lib/bytes/Util$Converter;->toByteArray([J)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from([Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 3

    const-string v0, "bytes most not be null"

    .line 215
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 217
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 218
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->from([[B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static from([Ljava/lang/Byte;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 241
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Converter;->toPrimitiveArray([Ljava/lang/Byte;)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from([[B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 205
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Byte;->concat([[B)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static fromNullSafe([B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    if-eqz p0, :cond_0

    .line 180
    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private internalBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1504
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "passed decoder instance must no be null"

    .line 658
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;

    const-string v0, "encoded data must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p1, p0}, Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseBase32(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 3

    .line 621
    new-instance v0, Lat/favre/lib/bytes/BaseEncoding;

    sget-object v1, Lat/favre/lib/bytes/BaseEncoding;->BASE32_RFC4848:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/BaseEncoding;-><init>(Lat/favre/lib/bytes/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseBase36(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;-><init>(I)V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseBase64(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 647
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;

    invoke-direct {v0}, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;-><init>()V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseBinary(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/4 v0, 0x2

    .line 557
    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parseRadix(Ljava/lang/CharSequence;I)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseDec(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/16 v0, 0xa

    .line 577
    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parseRadix(Ljava/lang/CharSequence;I)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseHex(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 609
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;

    invoke-direct {v0}, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;-><init>()V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseOctal(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    const/16 v0, 0x8

    .line 567
    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parseRadix(Ljava/lang/CharSequence;I)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static parseRadix(Ljava/lang/CharSequence;I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 592
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;-><init>(I)V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->parse(Ljava/lang/CharSequence;Lat/favre/lib/bytes/BinaryToTextEncoding$Decoder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static random(I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 668
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 708
    new-array p0, p0, [B

    .line 709
    invoke-virtual {p1, p0}, Ljava/util/Random;->nextBytes([B)V

    .line 710
    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static unsecureRandom(I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 681
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static unsecureRandom(IJ)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 697
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object p0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lat/favre/lib/bytes/Bytes;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([B)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 141
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Lat/favre/lib/bytes/Bytes;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 156
    new-instance v0, Lat/favre/lib/bytes/Bytes;

    const-string v1, "passed array must not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [B

    invoke-direct {v0, p0, p1}, Lat/favre/lib/bytes/Bytes;-><init>([BLjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    if-eqz p0, :cond_0

    .line 127
    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public and(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 889
    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->and([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public and([B)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 901
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->AND:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;-><init>([BLat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 758
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 768
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(C)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(I)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 788
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(I)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(J)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 798
    invoke-static {p1, p2}, Lat/favre/lib/bytes/Bytes;->from(J)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 748
    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 842
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/Bytes;->append(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 853
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;-><init>([B)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append(S)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 778
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(S)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public append([B)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 820
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;-><init>([B)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public varargs append([[B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 810
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([[B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public appendNullSafe([B)Lat/favre/lib/bytes/Bytes;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public array()[B
    .locals 1

    .line 1541
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    return-object v0
.end method

.method public bitAt(I)Z
    .locals 3

    .line 1320
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->lengthBit()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "bit"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->byteAt(I)B

    move-result v0

    rem-int/lit8 p1, p1, 0x8

    ushr-int p1, v0, p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public buffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1500
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 3

    .line 1334
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "byte"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1335
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    aget-byte p1, v0, p1

    return p1
.end method

.method public byteOrder(Ljava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1470
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    if-eq p1, v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lat/favre/lib/bytes/Bytes;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public byteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 1186
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public charAt(I)C
    .locals 3

    .line 1361
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "char"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p1

    return p1
.end method

.method public compareTo(Lat/favre/lib/bytes/Bytes;)I
    .locals 1

    .line 2053
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p1}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Lat/favre/lib/bytes/Bytes;

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->compareTo(Lat/favre/lib/bytes/Bytes;)I

    move-result p1

    return p1
.end method

.method public contains(B)Z
    .locals 1

    .line 1214
    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->indexOf(B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copy()Lat/favre/lib/bytes/Bytes;
    .locals 3

    .line 995
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;-><init>(II)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public copy(II)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1006
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;-><init>(II)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public count(B)I
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lat/favre/lib/bytes/Util$Byte;->countByte([BB)I

    move-result p1

    return p1
.end method

.method public count([B)I
    .locals 1

    .line 1430
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lat/favre/lib/bytes/Util$Byte;->countByteArray([B[B)I

    move-result p1

    return p1
.end method

.method public duplicate()Lat/favre/lib/bytes/Bytes;
    .locals 3

    .line 1457
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->factory:Lat/favre/lib/bytes/BytesFactory;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    iget-object v2, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-interface {v0, v1, v2}, Lat/favre/lib/bytes/BytesFactory;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;)Ljava/lang/String;
    .locals 2

    .line 1756
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0, v1}, Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;->encode([BLjava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeBase32()Ljava/lang/String;
    .locals 3

    .line 1641
    new-instance v0, Lat/favre/lib/bytes/BaseEncoding;

    sget-object v1, Lat/favre/lib/bytes/BaseEncoding;->BASE32_RFC4848:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/BaseEncoding;-><init>(Lat/favre/lib/bytes/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encode(Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBase36()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x24

    .line 1658
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeRadix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBase64()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1672
    invoke-virtual {p0, v0, v1}, Lat/favre/lib/bytes/Bytes;->encodeBase64(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBase64(ZZ)Ljava/lang/String;
    .locals 1

    .line 1702
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encode(Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeBase64Url()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1687
    invoke-virtual {p0, v0, v0}, Lat/favre/lib/bytes/Bytes;->encodeBase64(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBinary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1560
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeRadix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeCharset(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1722
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    const-string v2, "given charset must not be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public encodeCharsetToBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 1746
    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->encodeCharset(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeDec()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 1584
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeRadix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeHex()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1616
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeHex(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeHex(Z)Ljava/lang/String;
    .locals 1

    .line 1628
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;-><init>(Z)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encode(Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeOctal()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    .line 1572
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeRadix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRadix(I)Ljava/lang/String;
    .locals 1

    .line 1604
    new-instance v0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;-><init>(I)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encode(Lat/favre/lib/bytes/BinaryToTextEncoding$Encoder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeUtf8()Ljava/lang/String;
    .locals 1

    .line 1712
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeCharset(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUtf8ToBytes()[B
    .locals 1

    .line 1734
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->encodeCharsetToBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public endsWith([B)Z
    .locals 3

    .line 1307
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 1308
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, p1, v0, v2}, Lat/favre/lib/bytes/Util$Byte;->indexOf([B[BII)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entropy()D
    .locals 2

    .line 1446
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0}, Lat/favre/lib/bytes/Util$Byte;->entropy([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2065
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2067
    :cond_1
    check-cast p1, Lat/favre/lib/bytes/Bytes;

    .line 2069
    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteArray:[B

    iget-object v2, p1, Lat/favre/lib/bytes/Bytes;->byteArray:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 2070
    :cond_2
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    iget-object p1, p1, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public equals(Ljava/nio/ByteBuffer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2116
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals([B)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2080
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals([Ljava/lang/Byte;)Z
    .locals 1

    .line 2105
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lat/favre/lib/bytes/Util$Obj;->equals([B[Ljava/lang/Byte;)Z

    move-result p1

    return p1
.end method

.method public equalsConstantTime([B)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2094
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lat/favre/lib/bytes/Util$Byte;->constantTimeEquals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsContent(Lat/favre/lib/bytes/Bytes;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2126
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hash(Ljava/lang/String;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1110
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;

    invoke-direct {v0, p1}, Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 2131
    iget v0, p0, Lat/favre/lib/bytes/Bytes;->hashCodeCache:I

    if-nez v0, :cond_0

    .line 2132
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Obj;->hashCode([BLjava/nio/ByteOrder;)I

    move-result v0

    iput v0, p0, Lat/favre/lib/bytes/Bytes;->hashCodeCache:I

    .line 2134
    :cond_0
    iget v0, p0, Lat/favre/lib/bytes/Bytes;->hashCodeCache:I

    return v0
.end method

.method public hashMd5()Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "MD5"

    .line 1072
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->hash(Ljava/lang/String;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public hashSha1()Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "SHA-1"

    .line 1087
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->hash(Ljava/lang/String;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public hashSha256()Lat/favre/lib/bytes/Bytes;
    .locals 1

    const-string v0, "SHA-256"

    .line 1098
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->hash(Ljava/lang/String;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)I
    .locals 1

    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/Bytes;->indexOf(BI)I

    move-result p1

    return p1
.end method

.method public indexOf(BI)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1239
    invoke-virtual {p0, v0, p2}, Lat/favre/lib/bytes/Bytes;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/Bytes;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([BI)I
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lat/favre/lib/bytes/Util$Byte;->indexOf([B[BII)I

    move-result p1

    return p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 2

    .line 1528
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public intAt(I)I
    .locals 3

    .line 1387
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "int"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1388
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method internalArray()[B
    .locals 1

    .line 1545
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteArray:[B

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 2150
    new-instance v0, Lat/favre/lib/bytes/Util$BytesIterator;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/Util$BytesIterator;-><init>([B)V

    return-object v0
.end method

.method public lastIndexOf(B)I
    .locals 3

    .line 1296
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lat/favre/lib/bytes/Util$Byte;->lastIndexOf([BBII)I

    move-result p1

    return p1
.end method

.method public leftShift(I)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 950
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->LEFT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;-><init>(ILat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public lengthBit()I
    .locals 1

    .line 1167
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public longAt(I)J
    .locals 3

    .line 1400
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "long"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1401
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public mutable()Lat/favre/lib/bytes/MutableBytes;
    .locals 3

    .line 1515
    instance-of v0, p0, Lat/favre/lib/bytes/MutableBytes;

    if-eqz v0, :cond_0

    .line 1516
    move-object v0, p0

    check-cast v0, Lat/favre/lib/bytes/MutableBytes;

    return-object v0

    .line 1518
    :cond_0
    new-instance v0, Lat/favre/lib/bytes/MutableBytes;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    iget-object v2, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/MutableBytes;-><init>([BLjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public not()Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 936
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$NegateTransformer;

    invoke-direct {v0}, Lat/favre/lib/bytes/BytesTransformer$NegateTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public or(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 913
    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->or([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public or([B)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 925
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->OR:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;-><init>([BLat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public readOnly()Lat/favre/lib/bytes/ReadOnlyBytes;
    .locals 3

    .line 1483
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    move-object v0, p0

    check-cast v0, Lat/favre/lib/bytes/ReadOnlyBytes;

    return-object v0

    .line 1486
    :cond_0
    new-instance v0, Lat/favre/lib/bytes/ReadOnlyBytes;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    iget-object v2, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/ReadOnlyBytes;-><init>([BLjava/nio/ByteOrder;)V

    return-object v0
.end method

.method public resize(I)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1034
    sget-object v0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;->RESIZE_KEEP_FROM_MAX_LENGTH:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/Bytes;->resize(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public resize(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1057
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;-><init>(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 1017
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;

    invoke-direct {v0}, Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public rightShift(I)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 965
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->RIGHT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;-><init>(ILat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public shortAt(I)S
    .locals 3

    .line 1374
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "short"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1375
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1
.end method

.method public startsWith([B)Z
    .locals 3

    .line 1284
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Byte;->indexOf([B[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public switchBit(I)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 986
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;-><init>(ILjava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public switchBit(IZ)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 976
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;-><init>(ILjava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 4

    .line 1802
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 1803
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;

    invoke-direct {v1}, Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;-><init>()V

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;->transform([BZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    .line 1805
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public toBitSet()Ljava/util/BitSet;
    .locals 1

    .line 1789
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public toBoxedArray()[Ljava/lang/Byte;
    .locals 1

    .line 1780
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0}, Lat/favre/lib/bytes/Util$Converter;->toBoxedArray([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public toByte()B
    .locals 3

    .line 1835
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "byte"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    .line 1836
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public toChar()C
    .locals 3

    .line 1865
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "char"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1866
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->charAt(I)C

    move-result v0

    return v0
.end method

.method public toCharArray()[C
    .locals 1

    .line 2023
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->toCharArray(Ljava/nio/charset/Charset;)[C

    move-result-object v0

    return-object v0
.end method

.method public toCharArray(Ljava/nio/charset/Charset;)[C
    .locals 2

    .line 2034
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1, v1}, Lat/favre/lib/bytes/Util$Converter;->byteToCharArray([BLjava/nio/charset/Charset;Ljava/nio/ByteOrder;)[C

    move-result-object p1

    return-object p1
.end method

.method public toDouble()D
    .locals 3

    .line 1993
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "double"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    .line 1994
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public toDoubleArray()[D
    .locals 3

    .line 2012
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "creating an double array"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkModLength(IILjava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Converter;->toDoubleArray([BLjava/nio/ByteOrder;)[D

    move-result-object v0

    return-object v0
.end method

.method public toFloat()F
    .locals 3

    .line 1961
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "float"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    .line 1962
    invoke-direct {p0}, Lat/favre/lib/bytes/Bytes;->internalBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public toFloatArray()[F
    .locals 3

    .line 1980
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "creating an float array"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkModLength(IILjava/lang/String;)V

    .line 1981
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Converter;->toFloatArray([BLjava/nio/ByteOrder;)[F

    move-result-object v0

    return-object v0
.end method

.method public toInt()I
    .locals 3

    .line 1895
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "int"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1896
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->intAt(I)I

    move-result v0

    return v0
.end method

.method public toIntArray()[I
    .locals 3

    .line 1914
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "creating an int array"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkModLength(IILjava/lang/String;)V

    .line 1915
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Converter;->toIntArray([BLjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1768
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0}, Lat/favre/lib/bytes/Util$Converter;->toList([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toLong()J
    .locals 3

    .line 1929
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "long"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1930
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->longAt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toLongArray()[J
    .locals 3

    .line 1948
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "creating an long array"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkModLength(IILjava/lang/String;)V

    .line 1949
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Converter;->toLongArray([BLjava/nio/ByteOrder;)[J

    move-result-object v0

    return-object v0
.end method

.method public toShort()S
    .locals 3

    .line 1880
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "short"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1881
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->shortAt(I)S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2145
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Obj;->toString(Lat/favre/lib/bytes/Bytes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUUID()Ljava/util/UUID;
    .locals 6

    .line 1817
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1820
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1821
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1

    .line 1818
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating UUID requires internal array to be exactly 16 bytes, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toUnsignedByte()I
    .locals 3

    .line 1850
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "unsigned byte"

    invoke-static {v0, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkExactLength(IILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1851
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->unsignedByteAt(I)I

    move-result v0

    return v0
.end method

.method public transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;
    .locals 3

    .line 1126
    iget-object v0, p0, Lat/favre/lib/bytes/Bytes;->factory:Lat/favre/lib/bytes/BytesFactory;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->isMutable()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lat/favre/lib/bytes/BytesTransformer;->transform([BZ)[B

    move-result-object p1

    iget-object v1, p0, Lat/favre/lib/bytes/Bytes;->byteOrder:Ljava/nio/ByteOrder;

    invoke-interface {v0, p1, v1}, Lat/favre/lib/bytes/BytesFactory;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public unsignedByteAt(I)I
    .locals 3

    .line 1348
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "unsigned byte"

    invoke-static {v0, p1, v1, v2}, Lat/favre/lib/bytes/Util$Validation;->checkIndexBounds(IIILjava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public varargs validate([Lat/favre/lib/bytes/BytesValidator;)Z
    .locals 1

    .line 1147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [Lat/favre/lib/bytes/BytesValidator;

    invoke-static {p1}, Lat/favre/lib/bytes/BytesValidators;->and([Lat/favre/lib/bytes/BytesValidator;)Lat/favre/lib/bytes/BytesValidator;

    move-result-object p1

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lat/favre/lib/bytes/BytesValidator;->validate([B)Z

    move-result p1

    return p1
.end method

.method public validateNotOnlyZeros()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lat/favre/lib/bytes/BytesValidator;

    const/4 v1, 0x0

    .line 1137
    invoke-static {v1}, Lat/favre/lib/bytes/BytesValidators;->notOnlyOf(B)Lat/favre/lib/bytes/BytesValidator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->validate([Lat/favre/lib/bytes/BytesValidator;)Z

    move-result v0

    return v0
.end method

.method public xor(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;
    .locals 0

    .line 865
    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/favre/lib/bytes/Bytes;->xor([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method

.method public xor([B)Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 877
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->XOR:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-direct {v0, p1, v1}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;-><init>([BLat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;)V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/Bytes;->transform(Lat/favre/lib/bytes/BytesTransformer;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    return-object p1
.end method
