.class final Lat/favre/lib/armadillo/AesGcmEncryption;
.super Ljava/lang/Object;
.source "AesGcmEncryption.java"

# interfaces
.implements Lat/favre/lib/armadillo/AuthenticatedEncryption;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final IV_LENGTH_BYTE:I = 0xc

.field private static final TAG_LENGTH_BIT:I = 0x80


# instance fields
.field private cipherWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/security/Provider;

.field private final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/favre/lib/armadillo/AesGcmEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lat/favre/lib/armadillo/AesGcmEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    .line 53
    iput-object p1, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->secureRandom:Ljava/security/SecureRandom;

    .line 54
    iput-object p2, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->provider:Ljava/security/Provider;

    return-void
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .locals 3

    .line 121
    iget-object v0, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    .line 124
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->provider:Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AES/GCM/NoPadding"

    if-eqz v0, :cond_0

    .line 125
    :try_start_1
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_0
    iget-object v1, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not get cipher instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public byteSizeLength(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    return p1
.end method

.method public decrypt([B[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    :try_start_0
    aget-byte v1, p2, v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected iv length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    :goto_0
    invoke-direct {p0}, Lat/favre/lib/armadillo/AesGcmEncryption;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 102
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {p1, v5, p2, v0, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    invoke-virtual {v2, v3, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p3, :cond_2

    .line 106
    invoke-virtual {v2, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_2
    add-int/2addr v0, v1

    .line 109
    array-length p1, p2

    sub-int/2addr p1, v0

    invoke-virtual {v2, p2, v0, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;

    const-string p3, "could not decrypt"

    invoke-direct {p2, p3, p1}, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encrypt([B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation

    .line 59
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v0, 0xc

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    iget-object v3, p0, Lat/favre/lib/armadillo/AesGcmEncryption;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 69
    invoke-direct {p0}, Lat/favre/lib/armadillo/AesGcmEncryption;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 70
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, p1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {p1, v6, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v3, v4, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {v3, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 76
    :cond_0
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/16 p1, 0xd

    .line 78
    array-length p2, v1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    int-to-byte p2, v0

    .line 79
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 87
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, v1

    .line 84
    :goto_0
    :try_start_2
    new-instance p3, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;

    const-string v0, "could not encrypt"

    invoke-direct {p3, v0, p1}, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 86
    :goto_1
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 87
    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key length must be longer than 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
