.class public final Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
.super Ljava/lang/Object;
.source "BCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hasher"
.end annotation


# instance fields
.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

.field private final secureRandom:Ljava/security/SecureRandom;

.field private final version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;


# direct methods
.method private constructor <init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Lat/favre/lib/crypto/bcrypt/BCrypt;->access$200()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->defaultCharset:Ljava/nio/charset/Charset;

    .line 166
    iput-object p1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 167
    iput-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->secureRandom:Ljava/security/SecureRandom;

    .line 168
    iput-object p3, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)V

    return-void
.end method


# virtual methods
.method public hash(I[B)[B
    .locals 2

    .line 248
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->secureRandom:Ljava/security/SecureRandom;

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hash(I[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public hash(I[B[B)[B
    .locals 1

    .line 266
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v0, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->formatter:Lat/favre/lib/crypto/bcrypt/BCryptFormatter;

    invoke-virtual {p0, p1, p2, p3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hashRaw(I[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    move-result-object p1

    invoke-interface {v0, p1}, Lat/favre/lib/crypto/bcrypt/BCryptFormatter;->createHashMessage(Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;)[B

    move-result-object p1

    return-object p1
.end method

.method public hash(I[C)[B
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 227
    :try_start_0
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {p2, v1}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    const/16 p2, 0x10

    .line 228
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {p2, v1}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hash(I[B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provided password must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashRaw(I[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;
    .locals 5

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_8

    const/4 v0, 0x4

    if-lt p1, v0, :cond_8

    if-eqz p2, :cond_7

    .line 290
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    if-eqz p3, :cond_5

    .line 297
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-boolean v0, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    if-nez v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provided password must at least be length 1 if no null terminator is appended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_1
    :goto_0
    array-length v0, p3

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget v1, v1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-boolean v2, v2, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 302
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    invoke-interface {v0, p3}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;->derive([B)[B

    move-result-object p3

    .line 305
    :cond_2
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-boolean v0, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->appendNullTerminator:Z

    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lat/favre/lib/bytes/Bytes;->append(B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->copy()Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    :goto_1
    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p3

    .line 307
    :try_start_0
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCryptOpenBSDProtocol;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/BCryptOpenBSDProtocol;-><init>()V

    const-wide/16 v1, 0x1

    int-to-long v3, p1

    long-to-int v4, v3

    shl-long/2addr v1, v4

    invoke-virtual {v0, v1, v2, p2, p3}, Lat/favre/lib/crypto/bcrypt/BCryptOpenBSDProtocol;->cryptRaw(J[B[B)[B

    move-result-object v0

    .line 308
    new-instance v1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-boolean v3, v2, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->useOnly23bytesForHash:Z

    if-eqz v3, :cond_4

    .line 309
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    const/16 v3, 0x17

    sget-object v4, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;->RESIZE_KEEP_FROM_ZERO_INDEX:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    invoke-virtual {v0, v3, v4}, Lat/favre/lib/bytes/Bytes;->resize(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    .line 310
    :cond_4
    invoke-direct {v1, p1, v2, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;-><init>(ILat/favre/lib/crypto/bcrypt/BCrypt$Version;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p1

    .line 294
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provided password must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "salt must be exactly 16 bytes, was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cost factor must be between 4 and 31, was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashToChar(I[C)[C
    .locals 1

    .line 185
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hash(I[C)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p1

    return-object p1
.end method

.method public hashToString(I[C)Ljava/lang/String;
    .locals 1

    .line 204
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hash(I[C)[B

    move-result-object p1

    iget-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
