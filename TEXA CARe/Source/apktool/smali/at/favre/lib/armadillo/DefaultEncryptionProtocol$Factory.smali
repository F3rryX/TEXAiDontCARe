.class public final Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;
.super Ljava/lang/Object;
.source "DefaultEncryptionProtocol.java"

# interfaces
.implements Lat/favre/lib/armadillo/EncryptionProtocol$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/DefaultEncryptionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final additionalDecryptionConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            ">;"
        }
    .end annotation
.end field

.field private defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

.field private final enableDerivedPasswordCaching:Z

.field private final fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

.field private final secureRandom:Ljava/security/SecureRandom;

.field private final stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;


# direct methods
.method constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;Lat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            "Lat/favre/lib/armadillo/EncryptionFingerprint;",
            "Lat/favre/lib/armadillo/StringMessageDigest;",
            "Ljava/security/SecureRandom;",
            "Z",
            "Ljava/util/List<",
            "Lat/favre/lib/armadillo/EncryptionProtocolConfig;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    .line 244
    iput-object p2, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    .line 245
    iput-object p3, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    .line 246
    iput-object p4, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->secureRandom:Ljava/security/SecureRandom;

    .line 247
    iput-boolean p5, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->enableDerivedPasswordCaching:Z

    .line 248
    iput-object p6, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->additionalDecryptionConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public create([B)Lat/favre/lib/armadillo/EncryptionProtocol;
    .locals 10

    .line 253
    new-instance v9, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;

    iget-object v1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v3, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    iget-object v4, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    iget-object v5, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->secureRandom:Ljava/security/SecureRandom;

    iget-boolean v6, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->enableDerivedPasswordCaching:Z

    iget-object v7, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->additionalDecryptionConfigs:Ljava/util/List;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig;[BLat/favre/lib/armadillo/EncryptionFingerprint;Lat/favre/lib/armadillo/StringMessageDigest;Ljava/security/SecureRandom;ZLjava/util/List;Lat/favre/lib/armadillo/DefaultEncryptionProtocol$1;)V

    return-object v9
.end method

.method public createDataObfuscator()Lat/favre/lib/armadillo/DataObfuscator;
    .locals 2

    .line 264
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->defaultConfig:Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    iget-object v0, v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    iget-object v1, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->fingerprint:Lat/favre/lib/armadillo/EncryptionFingerprint;

    invoke-interface {v1}, Lat/favre/lib/armadillo/EncryptionFingerprint;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lat/favre/lib/armadillo/DataObfuscator$Factory;->create([B)Lat/favre/lib/armadillo/DataObfuscator;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 269
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getStringMessageDigest()Lat/favre/lib/armadillo/StringMessageDigest;
    .locals 1

    .line 259
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->stringMessageDigest:Lat/favre/lib/armadillo/StringMessageDigest;

    return-object v0
.end method

.method public obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
    .locals 1

    .line 275
    iget-object v0, p0, Lat/favre/lib/armadillo/DefaultEncryptionProtocol$Factory;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {p1, v0}, Lat/favre/lib/armadillo/DefaultEncryptionProtocol;->access$100([CLjava/security/SecureRandom;)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    move-result-object p1

    return-object p1
.end method
