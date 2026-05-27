.class final Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;
.super Ljava/lang/Object;
.source "BrokenBcryptKeyStretcher.java"

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/BCryptFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomFormatter"
.end annotation


# instance fields
.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;


# direct methods
.method private constructor <init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    .line 104
    iput-object p2, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;-><init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public createHashMessage(Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;)[B
    .locals 6

    .line 109
    iget-object v0, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    iget-object v1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    invoke-interface {v0, v1}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->encode([B)[B

    move-result-object v0

    .line 110
    iget-object v1, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    iget-object v2, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-interface {v1, v2}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->encode([B)[B

    move-result-object v1

    .line 111
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 114
    :try_start_0
    iget-object v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v3, v3, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    array-length v3, v3

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x24

    .line 116
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 126
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 127
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    .line 125
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 126
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 127
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1
.end method
