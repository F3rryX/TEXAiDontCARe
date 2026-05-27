.class public final Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
.super Ljava/lang/Object;
.source "EncryptionProtocolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/EncryptionProtocolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

.field private compressor:Lat/favre/lib/armadillo/Compressor;

.field private dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

.field private keyStrength:I

.field private keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

.field private protocolVersion:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength:I

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)I
    .locals 0

    .line 60
    iget p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion:I

    return p0
.end method

.method static synthetic access$002(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;I)I
    .locals 0

    .line 60
    iput p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion:I

    return p1
.end method

.method static synthetic access$100(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/AuthenticatedEncryption;
    .locals 0

    .line 60
    iget-object p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    return-object p0
.end method

.method static synthetic access$102(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/AuthenticatedEncryption;
    .locals 0

    .line 60
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    return-object p1
.end method

.method static synthetic access$200(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)I
    .locals 0

    .line 60
    iget p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength:I

    return p0
.end method

.method static synthetic access$202(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;I)I
    .locals 0

    .line 60
    iput p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength:I

    return p1
.end method

.method static synthetic access$300(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/KeyStretchingFunction;
    .locals 0

    .line 60
    iget-object p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    return-object p0
.end method

.method static synthetic access$302(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/KeyStretchingFunction;
    .locals 0

    .line 60
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    return-object p1
.end method

.method static synthetic access$400(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/DataObfuscator$Factory;
    .locals 0

    .line 60
    iget-object p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    return-object p0
.end method

.method static synthetic access$402(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/DataObfuscator$Factory;
    .locals 0

    .line 60
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    return-object p1
.end method

.method static synthetic access$500(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;)Lat/favre/lib/armadillo/Compressor;
    .locals 0

    .line 60
    iget-object p0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->compressor:Lat/favre/lib/armadillo/Compressor;

    return-object p0
.end method

.method static synthetic access$502(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/Compressor;
    .locals 0

    .line 60
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->compressor:Lat/favre/lib/armadillo/Compressor;

    return-object p1
.end method


# virtual methods
.method public authenticatedEncryption(Lat/favre/lib/armadillo/AuthenticatedEncryption;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->authenticatedEncryption:Lat/favre/lib/armadillo/AuthenticatedEncryption;

    return-object p0
.end method

.method public build()Lat/favre/lib/armadillo/EncryptionProtocolConfig;
    .locals 2

    .line 166
    iget-object v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lat/favre/lib/armadillo/EncryptionProtocolConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/favre/lib/armadillo/EncryptionProtocolConfig;-><init>(Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;Lat/favre/lib/armadillo/EncryptionProtocolConfig$1;)V

    return-object v0
.end method

.method public compressor(Lat/favre/lib/armadillo/Compressor;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->compressor:Lat/favre/lib/armadillo/Compressor;

    return-object p0
.end method

.method public dataObfuscatorFactory(Lat/favre/lib/armadillo/DataObfuscator$Factory;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->dataObfuscatorFactory:Lat/favre/lib/armadillo/DataObfuscator$Factory;

    return-object p0
.end method

.method public keyStrength(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStrength:I

    return-object p0
.end method

.method public keyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->keyStretchingFunction:Lat/favre/lib/armadillo/KeyStretchingFunction;

    return-object p0
.end method

.method public protocolVersion(I)Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;
    .locals 0

    .line 81
    iput p1, p0, Lat/favre/lib/armadillo/EncryptionProtocolConfig$Builder;->protocolVersion:I

    return-object p0
.end method
