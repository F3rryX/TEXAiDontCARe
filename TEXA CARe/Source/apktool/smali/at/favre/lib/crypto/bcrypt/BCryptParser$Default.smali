.class public final Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;
.super Ljava/lang/Object;
.source "BCryptParser.java"

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/BCryptParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCryptParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;


# direct methods
.method constructor <init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->defaultCharset:Ljava/nio/charset/Charset;

    .line 46
    iput-object p1, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    return-void
.end method


# virtual methods
.method public parse([B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 52
    array-length v0, p1

    if-eqz v0, :cond_b

    .line 56
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_a

    .line 60
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_9

    const/4 v1, 0x0

    .line 67
    sget-object v3, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->SUPPORTED_VERSIONS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v7, 0x0

    .line 68
    :goto_0
    iget-object v8, v4, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    iget-object v9, v4, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    aget-byte v9, v9, v7

    if-eq v8, v9, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 74
    :cond_1
    iget-object v8, v4, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->versionIdentifier:[B

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_2

    move-object v1, v4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    :cond_4
    if-eqz v1, :cond_8

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const-string v4, "expected separator "

    if-ne v3, v2, :cond_7

    const/4 v3, 0x2

    new-array v3, v3, [B

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v3, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v3, v6

    .line 93
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v2, :cond_6

    .line 102
    array-length p1, p1

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_5

    const/16 p1, 0x16

    new-array p1, p1, [B

    const/16 v2, 0x1f

    new-array v2, v2, [B

    .line 108
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    iget-object v4, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    invoke-interface {v4, p1}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->decode([B)[B

    move-result-object p1

    iget-object v4, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->encoder:Lat/favre/lib/crypto/bcrypt/Radix64Encoder;

    invoke-interface {v4, v2}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder;->decode([B)[B

    move-result-object v2

    invoke-direct {v0, v3, v1, p1, v2}, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;-><init>(ILat/favre/lib/crypto/bcrypt/BCrypt$Version;[B[B)V

    return-object v0

    .line 103
    :cond_5
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    const-string v0, "hash expected to be exactly 60 bytes"

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_6
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from(B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " after cost factor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :catch_0
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot parse cost factor \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_7
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from(B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " after version identifier and before cost factor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_8
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    const-string/jumbo v0, "unknown bcrypt version"

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_9
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash must start with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from(B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_a
    new-instance p1, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;

    const-string v0, "hash prefix meta must be at least 7 bytes long e.g. \'$2a$10$\'"

    invoke-direct {p1, v0}, Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must provide non-null, non-empty hash"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
