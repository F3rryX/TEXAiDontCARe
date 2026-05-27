.class public final Lat/favre/lib/armadillo/Armadillo$Builder;
.super Ljava/lang/Object;
.source "Armadillo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/Armadillo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field private final context:Landroid/content/Context;

.field private defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

.field private enableDerivedPasswordCache:Z

.field private enableKitKatSupport:Z

.field private fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

.field private password:[C

.field private final prefName:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

.field private supportVerifyPassword:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0, p1, p2}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/Armadillo$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lat/favre/lib/armadillo/HkdfMessageDigest;

    sget-object v1, Lat/favre/lib/armadillo/BuildConfig;->PREF_SALT:[B

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lat/favre/lib/armadillo/HkdfMessageDigest;-><init>([BI)V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    .line 77
    invoke-static {}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->newDefaultConfig()Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->additionalDecryptionConfigs:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->secureRandom:Ljava/security/SecureRandom;

    .line 80
    new-instance v0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;-><init>(ZZ)V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    .line 82
    iput-boolean v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->supportVerifyPassword:Z

    .line 84
    iput-boolean v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableDerivedPasswordCache:Z

    .line 85
    iput-boolean v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableKitKatSupport:Z

    .line 96
    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 97
    iput-object p2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->context:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->prefName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/Armadillo$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private checkKitKatSupport(Lat/favre/lib/armadillo/AuthenticatedEncryption;)V
    .locals 2

    .line 581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lat/favre/lib/armadillo/AesGcmEncryption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "aes gcm is not supported with KitKat, add support manually with Armadillo.Builder.enableKitKatSupport()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdditionalDecryptionProtocolConfig(Lat/favre/lib/armadillo/EncryptionProtocolConfig;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 497
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->additionalDecryptionConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
    .locals 9

    .line 538
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-virtual {v0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->build()Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    move-result-object v0

    .line 544
    iget-boolean v1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableKitKatSupport:Z

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    if-nez v1, :cond_0

    .line 550
    invoke-static {v0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->newBuilder(Lat/favre/lib/armadillo/EncryptionProtocolConfig;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v1

    new-instance v2, Lat/favre/lib/armadillo/AesCbcEncryption;

    iget-object v3, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->secureRandom:Ljava/security/SecureRandom;

    iget-object v4, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->provider:Ljava/security/Provider;

    invoke-direct {v2, v3, v4}, Lat/favre/lib/armadillo/AesCbcEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    .line 551
    invoke-virtual {v1, v2}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption(Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v1

    const/16 v2, -0x13

    .line 552
    invoke-virtual {v1, v2}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->build()Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->additionalDecryptionConfigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enabling kitkat support will prevent using custom encryption implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    :goto_0
    iget-object v1, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    if-nez v1, :cond_2

    .line 564
    invoke-static {v0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->newBuilder(Lat/favre/lib/armadillo/EncryptionProtocolConfig;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    new-instance v1, Lat/favre/lib/armadillo/AesGcmEncryption;

    iget-object v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3}, Lat/favre/lib/armadillo/AesGcmEncryption;-><init>(Ljava/security/SecureRandom;Ljava/security/Provider;)V

    .line 565
    invoke-virtual {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption(Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->build()Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    move-result-object v0

    .line 568
    :cond_2
    new-instance v8, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;

    iget-object v3, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    iget-object v4, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    iget-object v5, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->secureRandom:Ljava/security/SecureRandom;

    iget-boolean v6, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableDerivedPasswordCache:Z

    iget-object v1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->additionalDecryptionConfigs:Ljava/util/List;

    .line 569
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;Lat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;)V

    .line 571
    iget-object v0, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    invoke-direct {p0, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->checkKitKatSupport(Lat/favre/lib/armadillo/AuthenticatedEncryption;)V

    .line 573
    iget-object v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    .line 574
    new-instance v0, Lat/favre/lib/armadillo/SecureSharedPreferences;

    iget-object v4, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    iget-object v5, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->password:[C

    iget-boolean v6, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->supportVerifyPassword:Z

    move-object v1, v0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lat/favre/lib/armadillo/SecureSharedPreferences;-><init>(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V

    return-object v0

    .line 576
    :cond_3
    new-instance v0, Lat/favre/lib/armadillo/SecureSharedPreferences;

    iget-object v2, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->prefName:Ljava/lang/String;

    iget-object v5, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    iget-object v6, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->password:[C

    iget-boolean v7, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->supportVerifyPassword:Z

    move-object v1, v0

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lat/favre/lib/armadillo/SecureSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/EncryptionProtocol$Factory;Lat/favre/lib/armadillo/RecoveryPolicy;[CZ)V

    return-object v0

    .line 539
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No encryption fingerprint is set - see encryptionFingerprint() methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAdditionalDecryptionProtocolConfigs()Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 508
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->additionalDecryptionConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public compress()Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 467
    new-instance v0, Lat/favre/lib/armadillo/GzipCompressor;

    invoke-direct {v0}, Lat/favre/lib/armadillo/GzipCompressor;-><init>()V

    invoke-virtual {p0, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->compress(Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public compress(Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 477
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->compressor(Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method

.method public contentKeyDigest(I)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 2

    .line 234
    new-instance v0, Lat/favre/lib/armadillo/HkdfMessageDigest;

    sget-object v1, Lat/favre/lib/armadillo/BuildConfig;->PREF_SALT:[B

    invoke-direct {v0, v1, p1}, Lat/favre/lib/armadillo/HkdfMessageDigest;-><init>([BI)V

    invoke-virtual {p0, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->contentKeyDigest(Lat/favre/lib/armadillo/StringMessageDigest;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public contentKeyDigest(Lat/favre/lib/armadillo/StringMessageDigest;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/StringMessageDigest;

    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    return-object p0
.end method

.method public contentKeyDigest([B)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 2

    .line 216
    new-instance v0, Lat/favre/lib/armadillo/HkdfMessageDigest;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Lat/favre/lib/armadillo/HkdfMessageDigest;-><init>([BI)V

    invoke-virtual {p0, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->contentKeyDigest(Lat/favre/lib/armadillo/StringMessageDigest;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public cryptoProtocolVersion(I)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 427
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method

.method public dataObfuscatorFactory(Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 332
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/DataObfuscator$Factory;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory(Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method

.method public enableDerivedPasswordCache(Z)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 456
    iput-boolean p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableDerivedPasswordCache:Z

    return-object p0
.end method

.method public enableKitKatSupport(Z)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 528
    iput-boolean p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->enableKitKatSupport:Z

    return-object p0
.end method

.method public encryptionFingerprint(Landroid/content/Context;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 111
    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->encryptionFingerprint(Landroid/content/Context;[Ljava/lang/String;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encryptionFingerprint(Landroid/content/Context;[B)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 129
    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->encodeBase64()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->encryptionFingerprint(Landroid/content/Context;[Ljava/lang/String;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs encryptionFingerprint(Landroid/content/Context;[Ljava/lang/String;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 4

    .line 150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 154
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lat/favre/lib/armadillo/EncryptionFingerprintFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lat/favre/lib/armadillo/EncryptionFingerprint;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    return-object p0
.end method

.method public encryptionFingerprint(Lat/favre/lib/armadillo/EncryptionFingerprint;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    return-object p0
.end method

.method public encryptionFingerprint([B)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;

    invoke-direct {v0, p1}, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;-><init>([B)V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    return-object p0
.end method

.method public encryptionKeyStrength(I)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 273
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method

.method public keyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 318
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/KeyStretchingFunction;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method

.method public password([C)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 393
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->password:[C

    return-object p0
.end method

.method public recoveryPolicy(Lat/favre/lib/armadillo/RecoveryPolicy;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 372
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/RecoveryPolicy;

    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    return-object p0
.end method

.method public recoveryPolicy(ZZ)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 360
    new-instance v0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;-><init>(ZZ)V

    iput-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->recoveryPolicy:Lat/favre/lib/armadillo/RecoveryPolicy;

    return-object p0
.end method

.method public secureRandom(Ljava/security/SecureRandom;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public securityProvider(Ljava/security/Provider;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->provider:Ljava/security/Provider;

    return-object p0
.end method

.method public supportVerifyPassword(Z)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 0

    .line 410
    iput-boolean p1, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->supportVerifyPassword:Z

    return-object p0
.end method

.method public symmetricEncryption(Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 1

    .line 303
    iget-object v0, p0, Lat/favre/lib/armadillo/Armadillo$Builder;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/armadillo/AuthenticatedEncryption;

    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption(Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    return-object p0
.end method
