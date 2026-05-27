.class public final Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;
.super Ljava/lang/Object;
.source "BCryptFormatter.java"

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/BCryptFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCryptFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;


# direct methods
.method public constructor <init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    .line 64
    iput-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public createHashMessage(Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;)[B
    .locals 6

    .line 69
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    iget-object v1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    invoke-interface {v0, v1}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->encode([B)[B

    move-result-object v0

    .line 70
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    iget-object v2, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-interface {v1, v2}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->encode([B)[B

    move-result-object v1

    .line 71
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

    iget-object v3, p0, Lat/favre/lib/crypto/bcrypt/BCryptFormatter$Default;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 74
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

    .line 76
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 86
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 87
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 86
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 87
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1
.end method
