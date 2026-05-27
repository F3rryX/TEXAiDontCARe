.class public final Lat/favre/lib/armadillo/HkdfXorObfuscator;
.super Ljava/lang/Object;
.source "HkdfXorObfuscator.java"

# interfaces
.implements Lat/favre/lib/armadillo/DataObfuscator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/HkdfXorObfuscator$Factory;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTE:I = 0x80


# instance fields
.field private final key:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lat/favre/lib/armadillo/HkdfXorObfuscator;->key:[B

    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 1

    .line 65
    iget-object v0, p0, Lat/favre/lib/armadillo/HkdfXorObfuscator;->key:[B

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-void
.end method

.method public deobfuscate([B)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lat/favre/lib/armadillo/HkdfXorObfuscator;->obfuscate([B)V

    return-void
.end method

.method public obfuscate([B)V
    .locals 12

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha512()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [B

    iget-object v2, p0, Lat/favre/lib/armadillo/HkdfXorObfuscator;->key:[B

    invoke-virtual {v0, v1, v2}, Lat/favre/lib/crypto/HKDF;->extract([B[B)[B

    move-result-object v0

    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x80

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 45
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha512()Lat/favre/lib/crypto/HKDF;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-static {v3}, Lat/favre/lib/bytes/Bytes;->from(I)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v3

    invoke-virtual {v7, v0, v3, v5}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object v3

    .line 46
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    add-int/lit8 v9, v4, 0x1

    .line 49
    aget-byte v10, v6, v7

    aget-byte v11, v3, v7

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    .line 51
    :cond_0
    invoke-static {v6}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v5

    invoke-virtual {v5}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v5

    invoke-virtual {v5, v2}, Lat/favre/lib/bytes/MutableBytes;->fill(B)Lat/favre/lib/bytes/MutableBytes;

    .line 52
    invoke-static {v3}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lat/favre/lib/bytes/MutableBytes;->fill(B)Lat/favre/lib/bytes/MutableBytes;

    move v3, v8

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1, v2}, Lat/favre/lib/bytes/MutableBytes;->fill(B)Lat/favre/lib/bytes/MutableBytes;

    return-void
.end method
