.class public final Lat/favre/lib/bytes/MutableBytes;
.super Lat/favre/lib/bytes/Bytes;
.source "MutableBytes.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/MutableBytes$Factory;
    }
.end annotation


# direct methods
.method constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 2

    .line 38
    new-instance v0, Lat/favre/lib/bytes/MutableBytes$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/MutableBytes$Factory;-><init>(Lat/favre/lib/bytes/MutableBytes$1;)V

    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/bytes/Bytes;-><init>([BLjava/nio/ByteOrder;Lat/favre/lib/bytes/BytesFactory;)V

    return-void
.end method

.method public static allocate(I)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0}, Lat/favre/lib/bytes/MutableBytes;->allocate(IB)Lat/favre/lib/bytes/MutableBytes;

    move-result-object p0

    return-object p0
.end method

.method public static allocate(IB)Lat/favre/lib/bytes/MutableBytes;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lat/favre/lib/bytes/Bytes;->allocate(IB)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lat/favre/lib/bytes/Bytes;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fill(B)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Util$Obj;->hashCode([BLjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public immutable()Lat/favre/lib/bytes/Bytes;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->byteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lat/favre/lib/bytes/Bytes;->wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public overwrite(Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/MutableBytes;->overwrite(Lat/favre/lib/bytes/Bytes;I)Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    return-object p1
.end method

.method public overwrite(Lat/favre/lib/bytes/Bytes;I)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const-string v0, "must provide non-null array as source"

    .line 116
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/bytes/Bytes;

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lat/favre/lib/bytes/MutableBytes;->overwrite([BI)Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    return-object p1
.end method

.method public overwrite([B)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lat/favre/lib/bytes/MutableBytes;->overwrite([BI)Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    return-object p1
.end method

.method public overwrite([BI)Lat/favre/lib/bytes/MutableBytes;
    .locals 3

    const-string v0, "must provide non-null array as source"

    .line 101
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public secureWipe()Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    .line 157
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe(Ljava/security/SecureRandom;)Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    return-object v0
.end method

.method public secureWipe(Ljava/security/SecureRandom;)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const-string v0, "random param must not be null"

    .line 167
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    return-object p0
.end method

.method public setByteAt(IB)Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lat/favre/lib/bytes/MutableBytes;->internalArray()[B

    move-result-object v0

    aput-byte p2, v0, p1

    return-object p0
.end method

.method public wipe()Lat/favre/lib/bytes/MutableBytes;
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lat/favre/lib/bytes/MutableBytes;->fill(B)Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    return-object v0
.end method
