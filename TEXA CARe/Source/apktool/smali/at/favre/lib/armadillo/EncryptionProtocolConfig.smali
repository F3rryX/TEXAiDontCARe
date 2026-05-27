.class public final Lat/favre/lib/armadillo/EncryptionProtocolConfig;
.super Ljava/lang/Object;
.source "EncryptionProtocolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    }
.end annotation


# instance fields
.field public final authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

.field public final compressor:Lat/favre/lib/armadillo/Compressor;

.field public final dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

.field public final keyStrength:I

.field public final keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

.field public final protocolVersion:I


# direct methods
.method private constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$000(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)I

    move-result v0

    iput v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    .line 29
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$100(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/AuthenticatedEncryption;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    .line 30
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$200(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)I

    move-result v0

    iput v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStrength:I

    .line 31
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$300(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/KeyStretchingFunction;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    .line 32
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$400(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/DataObfuscator$Factory;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    .line 33
    invoke-static {p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$500(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/Compressor;

    move-result-object p1

    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->compressor:Lat/favre/lib/armadillo/Compressor;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/EncryptionProtocolConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 2

    .line 37
    new-instance v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$1;)V

    return-object v0
.end method

.method public static newBuilder(Lat/favre/lib/armadillo/EncryptionProtocolConfig;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 2

    .line 41
    new-instance v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$1;)V

    .line 42
    iget v1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->protocolVersion:I

    invoke-static {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$002(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;I)I

    .line 43
    iget-object v1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    invoke-static {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$102(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/AuthenticatedEncryption;

    .line 44
    iget v1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStrength:I

    invoke-static {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$202(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;I)I

    .line 45
    iget-object v1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    invoke-static {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$302(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/KeyStretchingFunction;

    .line 46
    iget-object v1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    invoke-static {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$402(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/DataObfuscator$Factory;

    .line 47
    iget-object p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->compressor:Lat/favre/lib/armadillo/Compressor;

    invoke-static {v0, p0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->access$502(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/Compressor;

    return-object v0
.end method

.method public static newDefaultConfig()Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 3

    .line 52
    invoke-static {}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;->newBuilder()Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    new-instance v2, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;

    invoke-direct {v2}, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;-><init>()V

    .line 54
    invoke-virtual {v0, v2}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    new-instance v1, Lat/favre/lib/armadillo/DisabledCompressor;

    invoke-direct {v1}, Lat/favre/lib/armadillo/DisabledCompressor;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->compressor(Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    new-instance v1, Lat/favre/lib/armadillo/HkdfXorObfuscator$Factory;

    invoke-direct {v1}, Lat/favre/lib/armadillo/HkdfXorObfuscator$Factory;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory(Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;

    move-result-object v0

    return-object v0
.end method
