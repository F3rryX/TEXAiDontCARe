.class final Lat/favre/lib/armadillo/DefaultEncryptionProtocol;
.super Ljava/lang/Object;
.source "DefaultEncryptionProtocol.java"

# interfaces
.implements Lat/favre/lib/armadillo/EncryptionProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;
    }
.end annotation


# static fields
.field private static final CONTENT_SALT_LENGTH_BYTES:I = 0x10

.field private static final CONTENT_SALT_SIZE_LENGTH_BYTES:I = 0x1

.field private static final ENCRYPTED_CONTENT_SIZE_LENGTH_BYTES:I = 0x4

.field private static final PROTOCOL_VERSION_LENGTH_BYTES:I = 0x4

.field private static final STRETCHED_PASSWORD_LENGTH_BYTES:I = 0x20


# instance fields
.field private additionalDecryptionConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            ">;"
        }
    .end annotation
.end field

.field private defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

.field private final derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

.field private final fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

.field private final keyLengthBit:I

.field private final preferenceSalt:[B

.field private final secureRandom:Ljava/security/SecureRandom;

.field private final stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;


# direct methods
.method private constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;[BLat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            "[B",
            "Lat/favre/lib/armadillo/EncryptionFingerprint;",
            "Lat/favre/lib/armadillo/StringMessageDigest;",
            "Ljava/security/SecureRandom;",
            "Z",
            "Ljava/util/List<",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    .line 58
    iput-object p2, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->preferenceSalt:[B

    .line 59
    iput-object p3, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    .line 60
    iput-object p4, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    .line 61
    iget-object p2, p1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    iget p1, p1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStrength:I

    invoke-interface {p2, p1}, Lat/favre/lib/armadillo/AuthenticatedEncryption;->byteSizeLength(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->keyLengthBit:I

    .line 62
    iput-object p5, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->secureRandom:Ljava/security/SecureRandom;

    .line 63
    new-instance p1, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;

    invoke-direct {p1, p6, p5}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;-><init>(ZLjava/security/SecureRandom;)V

    iput-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

    .line 64
    iput-object p7, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->additionalDecryptionConfigs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;[BLat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;Lat/favre/lib/armadillo/DefaultEncryptionProtocol$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p7}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;[BLat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100([CLjava/security/SecureRandom;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->obfuscatePasswordInternal([CLjava/security/SecureRandom;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p0

    return-object p0
.end method

.method private encode([B[B)[B
    .locals 2

    .line 109
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget v1, v1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private getConfigForDecryption(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget v0, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    return-object p1

    .line 167
    :cond_0
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->additionalDecryptionConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    .line 168
    iget v2, v1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    if-ne p1, v2, :cond_1

    return-object v1

    .line 173
    :cond_2
    new-instance v0, Lat/favre/lib/armadillo/EncryptionProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal protocol version ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private keyDerivationFunction(Ljava/lang/String;[B[B[B[C)[B
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 216
    sget-object p2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p1, p2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->from([[B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 220
    iget-object p2, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

    invoke-interface {p2, p3, p5}, Lat/favre/lib/armadillo/DerivedPasswordCache;->get([B[C)[B

    move-result-object p2

    if-nez p2, :cond_0

    .line 221
    iget-object p2, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object p2, p2, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    const/16 v0, 0x20

    invoke-interface {p2, p3, p5, v0}, Lat/favre/lib/armadillo/KeyStretchingFunction;->stretch([B[CI)[B

    move-result-object p2

    .line 222
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

    invoke-interface {v0, p3, p5, p2}, Lat/favre/lib/armadillo/DerivedPasswordCache;->put([B[C[B)V

    .line 224
    :cond_0
    invoke-virtual {p1, p2}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    .line 227
    :cond_1
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha512()Lat/favre/lib/crypto/HKDF;

    move-result-object p2

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    const-string p3, "DefaultEncryptionProtocol"

    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p3

    iget p5, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->keyLengthBit:I

    div-int/lit8 p5, p5, 0x8

    invoke-virtual {p2, p4, p1, p3, p5}, Lat/favre/lib/crypto/HKDF;->extractAndExpand([B[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private static obfuscatePasswordInternal([CLjava/security/SecureRandom;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_0
    new-instance v0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from([C)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;-><init>([BLjava/security/SecureRandom;)V

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->decrypt(Ljava/lang/String;[C[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;[C[B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "decrypt took %d ms"

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    new-array v1, v11, [B

    new-array v12, v11, [B

    const/4 v13, 0x1

    .line 132
    :try_start_0
    iget-object v0, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    invoke-interface {v0}, Lat/favre/lib/armadillo/EncryptionFingerprint;->getBytes()[B

    move-result-object v14
    :try_end_0
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    :try_start_1
    invoke-static/range {p3 .. p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-direct {v7, v1}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->getConfigForDecryption(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    move-result-object v15

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    new-array v4, v1, [B

    .line 138
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    new-array v6, v1, [B

    .line 141
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, v15, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    invoke-static/range {p1 .. p1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1, v14}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lat/favre/lib/armadillo/DataObfuscator$Factory;->create([B)Lat/favre/lib/armadillo/DataObfuscator;

    move-result-object v1
    :try_end_1
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    invoke-interface {v1, v6}, Lat/favre/lib/armadillo/DataObfuscator;->deobfuscate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    invoke-interface {v1}, Lat/favre/lib/armadillo/DataObfuscator;->clearKey()V

    .line 150
    iget-object v5, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->preferenceSalt:[B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v0, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->keyDerivationFunction(Ljava/lang/String;[B[B[B[C)[B

    move-result-object v12

    .line 152
    iget-object v1, v15, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->compressor:Lat/favre/lib/armadillo/Compressor;

    iget-object v2, v15, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    iget v3, v15, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    invoke-static {v3}, Lat/favre/lib/bytes/Bytes;->from(I)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v3

    invoke-interface {v2, v12, v0, v3}, Lat/favre/lib/armadillo/AuthenticatedEncryption;->decrypt([B[B[B)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lat/favre/lib/armadillo/Compressor;->decompress([B)[B

    move-result-object v0
    :try_end_3
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    invoke-static {v14}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 157
    invoke-static {v12}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    new-array v1, v13, [Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v8, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 147
    :try_start_4
    invoke-interface {v1}, Lat/favre/lib/armadillo/DataObfuscator;->clearKey()V

    throw v2
    :try_end_4
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 154
    :goto_0
    :try_start_5
    new-instance v2, Lat/favre/lib/armadillo/EncryptionProtocolException;

    invoke-direct {v2, v0}, Lat/favre/lib/armadillo/EncryptionProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    :goto_1
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 157
    invoke-static {v12}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    new-array v1, v13, [Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v8, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public deobfuscatePassword(Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;)[C
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 203
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [C

    .line 204
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p1

    return-object p1
.end method

.method public deriveContentKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    iget-object v1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->preferenceSalt:[B

    invoke-virtual {p1, v1}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object p1

    const-string v1, "contentKey"

    invoke-interface {v0, p1, v1}, Lat/favre/lib/armadillo/StringMessageDigest;->derive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, p2}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->encrypt(Ljava/lang/String;[C[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;[C[B)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation

    move-object v7, p0

    const-string v8, "encrypt took %d ms"

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    new-array v1, v11, [B

    new-array v12, v11, [B

    const/16 v0, 0x10

    const/4 v13, 0x1

    .line 84
    :try_start_0
    iget-object v2, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    .line 86
    iget-object v2, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    invoke-interface {v2}, Lat/favre/lib/armadillo/EncryptionFingerprint;->getBytes()[B

    move-result-object v14
    :try_end_0
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 87
    :try_start_1
    iget-object v5, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->preferenceSalt:[B

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->keyDerivationFunction(Ljava/lang/String;[B[B[B[C)[B

    move-result-object v12

    .line 88
    iget-object v1, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v1, v1, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    iget-object v2, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v2, v2, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->compressor:Lat/favre/lib/armadillo/Compressor;

    move-object/from16 v3, p3

    .line 89
    invoke-interface {v2, v3}, Lat/favre/lib/armadillo/Compressor;->compress([B)[B

    move-result-object v2

    iget-object v3, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget v3, v3, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    invoke-static {v3}, Lat/favre/lib/bytes/Bytes;->from(I)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v3

    .line 88
    invoke-interface {v1, v12, v2, v3}, Lat/favre/lib/armadillo/AuthenticatedEncryption;->encrypt([B[B[B)[B

    move-result-object v1

    .line 91
    iget-object v2, v7, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v2, v2, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    invoke-static/range {p1 .. p1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3, v14}, Lat/favre/lib/bytes/Bytes;->append([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lat/favre/lib/armadillo/DataObfuscator$Factory;->create([B)Lat/favre/lib/armadillo/DataObfuscator;

    move-result-object v2
    :try_end_1
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    invoke-interface {v2, v1}, Lat/favre/lib/armadillo/DataObfuscator;->obfuscate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    invoke-interface {v2}, Lat/favre/lib/armadillo/DataObfuscator;->clearKey()V

    .line 98
    invoke-direct {p0, v0, v1}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->encode([B[B)[B

    move-result-object v0
    :try_end_3
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    invoke-static {v14}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 103
    invoke-static {v12}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    new-array v1, v13, [Ljava/lang/Object;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v8, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 95
    :try_start_4
    invoke-interface {v2}, Lat/favre/lib/armadillo/DataObfuscator;->clearKey()V

    throw v1
    :try_end_4
    .catch Lat/favre/lib/armadillo/AuthenticatedEncryptionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 100
    :goto_0
    :try_start_5
    new-instance v2, Lat/favre/lib/armadillo/EncryptionProtocolException;

    invoke-direct {v2, v0}, Lat/favre/lib/armadillo/EncryptionProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 102
    :goto_1
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 103
    invoke-static {v12}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    new-array v1, v13, [Ljava/lang/Object;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v8, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getKeyStretchingFunction()Lat/favre/lib/armadillo/KeyStretchingFunction;
    .locals 1

    .line 186
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v0, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    return-object v0
.end method

.method public obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
    .locals 1

    .line 192
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {p1, v0}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->obfuscatePasswordInternal([CLjava/security/SecureRandom;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    return-object p1
.end method

.method public setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    invoke-static {v0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->newBuilder(Lat/favre/lib/armadillo/EncryptionProtocolConfig;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    .line 179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/KeyStretchingFunction;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->build()Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    .line 181
    iget-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

    invoke-interface {p1}, Lat/favre/lib/armadillo/DerivedPasswordCache;->wipe()V

    return-void
.end method

.method public wipeDerivedPasswordCache()V
    .locals 1

    .line 212
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->derivedPasswordCache:Lat/favre/lib/armadillo/DerivedPasswordCache;

    invoke-interface {v0}, Lat/favre/lib/armadillo/DerivedPasswordCache;->wipe()V

    return-void
.end method
