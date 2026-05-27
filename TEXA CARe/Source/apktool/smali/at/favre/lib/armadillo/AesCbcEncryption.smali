.class final Lat/favre/lib/armadillo/AesCbcEncryption;
.super Ljava/lang/Object;
.source "AesCbcEncryption.java"

# interfaces
.implements Lat/favre/lib/armadillo/AuthenticatedEncryption;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final IV_LENGTH_BYTE:I = 0x10


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

.field private hmac:Ljavax/crypto/Mac;

.field private final provider:Ljava/security/Provider;

.field private final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/favre/lib/armadillo/AesCbcEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lat/favre/lib/armadillo/AesCbcEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    .line 61
    iput-object p1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->secureRandom:Ljava/security/SecureRandom;

    .line 62
    iput-object p2, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->provider:Ljava/security/Provider;

    return-void
.end method

.method private checkAesKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 191
    array-length p1, p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AES key length must be 16, 24, or 32 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private createEncryptionKey([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .line 101
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v1

    const-string v2, "encKey"

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized createHmacInstance()Ljavax/crypto/Mac;
    .locals 3

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "HmacSHA256"

    .line 133
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not get cipher instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMacKey([B)Ljavax/crypto/SecretKey;
    .locals 3

    .line 126
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    const-string v1, "macKey"

    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, p1, v1, v2}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object p1

    .line 127
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .locals 3

    .line 199
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    .line 202
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->provider:Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AES/CBC/PKCS5Padding"

    if-eqz v0, :cond_0

    .line 203
    :try_start_1
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_0
    iget-object v1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->cipherWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not get cipher instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private macCipherText([B[B[B[B)[B
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/AesCbcEncryption;->createMacKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 108
    :try_start_0
    invoke-direct {p0}, Lat/favre/lib/armadillo/AesCbcEncryption;->createHmacInstance()Ljavax/crypto/Mac;

    .line 109
    iget-object v0, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 110
    iget-object p1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 111
    iget-object p1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_0

    .line 118
    iget-object p1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 121
    :cond_0
    iget-object p1, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1

    .line 114
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error during HMAC calculation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyMac([B[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2, p3, p5}, Lat/favre/lib/armadillo/AesCbcEncryption;->macCipherText([B[B[B[B)[B

    move-result-object p1

    .line 180
    invoke-static {p4}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2, p1}, Lat/favre/lib/bytes/Bytes;->equalsConstantTime([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance p1, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;

    const-string p2, "encryption integrity exception: mac does not match"

    invoke-direct {p1, p2}, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/AesCbcEncryption;->checkAesKey([B)V

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 151
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 152
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 156
    new-array v8, v2, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :try_start_2
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 160
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v8

    move-object v7, p3

    .line 162
    invoke-direct/range {v2 .. v7}, Lat/favre/lib/armadillo/AesCbcEncryption;->verifyMac([B[B[B[B[B)V

    .line 164
    invoke-direct {p0}, Lat/favre/lib/armadillo/AesCbcEncryption;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x2

    .line 165
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/AesCbcEncryption;->createEncryptionKey([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 166
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 171
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 172
    invoke-static {v8}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    move-object v8, p2

    :goto_0
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v0

    move-object v8, p2

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v8, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v8, p2

    .line 168
    :goto_2
    :try_start_3
    new-instance p3, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;

    const-string v1, "could not decrypt"

    invoke-direct {p3, v1, p1}, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 170
    :goto_3
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 171
    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 172
    invoke-static {v8}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1
.end method

.method public encrypt([B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/AesCbcEncryption;->checkAesKey([B)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    :try_start_1
    iget-object v3, p0, Lat/favre/lib/armadillo/AesCbcEncryption;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 76
    invoke-direct {p0}, Lat/favre/lib/armadillo/AesCbcEncryption;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 77
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/AesCbcEncryption;->createEncryptionKey([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    invoke-direct {p0, p1, p2, v2, p3}, Lat/favre/lib/armadillo/AesCbcEncryption;->macCipherText([B[B[B[B)[B

    move-result-object v1

    const/16 p1, 0x12

    .line 82
    array-length p3, v1

    add-int/2addr p1, p3

    array-length p3, p2

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    int-to-byte p3, v0

    .line 83
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    array-length p3, v1

    int-to-byte p3, p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 94
    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 95
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    move-object p3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p3, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    :goto_0
    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    .line 91
    :goto_2
    :try_start_3
    new-instance v0, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;

    const-string v2, "could not encrypt"

    invoke-direct {v0, v2, p1}, Lat/favre/lib/armadillo/AuthenticatedEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 93
    :goto_3
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 94
    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 95
    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1
.end method
