.class public Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;
.super Ljava/lang/Object;
.source "BinaryToTextEncoding.java"

# interfaces
.implements Lat/favre/lib/bytes/BinaryToTextEncoding$EncoderDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BinaryToTextEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseRadixNumber"
.end annotation


# instance fields
.field private final radix:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    .line 183
    iput p1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;->radix:I

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "supported radix is between 2 and 36"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Ljava/lang/CharSequence;)[B
    .locals 4

    .line 193
    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;->radix:I

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 194
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 195
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 196
    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    :cond_0
    return-object p1
.end method

.method public encode([BLjava/nio/ByteOrder;)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->reverse()Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    invoke-direct {v0, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget p1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$BaseRadixNumber;->radix:I

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
