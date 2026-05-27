.class public Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.source "BcPublicKeyKeyEncryptionMethodGenerator.java"


# instance fields
.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 38
    new-instance p1, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const-string v0, "exception encrypting session info: "

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    .line 70
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    .line 74
    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    .line 79
    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v5, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, p1, v5}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 81
    array-length p1, p2

    invoke-interface {v1, p2, v3, p1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 86
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 87
    new-instance v5, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 90
    new-instance v6, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v6}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 91
    new-instance v7, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v8, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v7, v5, v8}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 93
    new-instance v5, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v7, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;

    invoke-direct {v7, p0}, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    .line 101
    invoke-virtual {v5}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/spongycastle/crypto/EphemeralKeyPair;

    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 105
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 107
    new-instance v6, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v7, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v7}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    .line 109
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    new-instance v8, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v8}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {p1, v8}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    invoke-direct {v7, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 111
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/spongycastle/crypto/Wrapper;

    move-result-object p1

    .line 113
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v7, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {p1, v4, v1}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 115
    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object p2

    .line 117
    array-length v1, p2

    invoke-interface {p1, p2, v3, v1}, Lorg/spongycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    .line 118
    new-instance p2, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p2, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p2

    .line 120
    array-length v1, p2

    add-int/2addr v1, v4

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 122
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length v2, p2

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 124
    array-length p2, p2

    add-int/2addr p2, v4

    array-length v2, p1

    invoke-static {p1, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 131
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
