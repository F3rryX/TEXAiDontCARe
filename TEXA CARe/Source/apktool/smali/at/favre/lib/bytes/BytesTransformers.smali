.class public final Lat/favre/lib/bytes/BytesTransformers;
.super Ljava/lang/Object;
.source "BytesTransformers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;,
        Lat/favre/lib/bytes/BytesTransformers$GzipCompressor;,
        Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;,
        Lat/favre/lib/bytes/BytesTransformers$SortTransformer;,
        Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksum(Ljava/util/zip/Checksum;Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;I)Lat/favre/lib/bytes/BytesTransformer;
    .locals 1

    .line 111
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;

    invoke-direct {v0, p0, p1, p2}, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;-><init>(Ljava/util/zip/Checksum;Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;I)V

    return-object v0
.end method

.method public static checksumAppendCrc32()Lat/favre/lib/bytes/BytesTransformer;
    .locals 4

    .line 89
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    sget-object v2, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;->APPEND:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;-><init>(Ljava/util/zip/Checksum;Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;I)V

    return-object v0
.end method

.method public static checksumCrc32()Lat/favre/lib/bytes/BytesTransformer;
    .locals 4

    .line 98
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    sget-object v2, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;->TRANSFORM:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;-><init>(Ljava/util/zip/Checksum;Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;I)V

    return-object v0
.end method

.method public static compressGzip()Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 122
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$GzipCompressor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BytesTransformers$GzipCompressor;-><init>(Z)V

    return-object v0
.end method

.method public static decompressGzip()Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 133
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$GzipCompressor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BytesTransformers$GzipCompressor;-><init>(Z)V

    return-object v0
.end method

.method public static hmac([BLjava/lang/String;)Lat/favre/lib/bytes/BytesTransformer;
    .locals 1

    .line 164
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;

    invoke-direct {v0, p0, p1}, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 143
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 153
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static shuffle()Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 34
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public static shuffle(Ljava/util/Random;)Lat/favre/lib/bytes/BytesTransformer;
    .locals 1

    .line 44
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;

    invoke-direct {v0, p0}, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;-><init>(Ljava/util/Random;)V

    return-object v0
.end method

.method public static sort()Lat/favre/lib/bytes/BytesTransformer;
    .locals 1

    .line 54
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;

    invoke-direct {v0}, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;-><init>()V

    return-object v0
.end method

.method public static sort(Ljava/util/Comparator;)Lat/favre/lib/bytes/BytesTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lat/favre/lib/bytes/BytesTransformer;"
        }
    .end annotation

    .line 80
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;

    invoke-direct {v0, p0}, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static sortUnsigned()Lat/favre/lib/bytes/BytesTransformer;
    .locals 2

    .line 67
    new-instance v0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;

    new-instance v1, Lat/favre/lib/bytes/BytesTransformers$SortTransformer$UnsignedByteComparator;

    invoke-direct {v1}, Lat/favre/lib/bytes/BytesTransformers$SortTransformer$UnsignedByteComparator;-><init>()V

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
