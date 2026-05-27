.class public final Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;
.super Ljava/lang/Object;
.source "BytesTransformers.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChecksumTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;
    }
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final checksumLengthByte:I

.field private final mode:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;I)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p3, :cond_0

    const/16 v0, 0x8

    if-gt p3, v0, :cond_0

    const-string v0, "checksum instance must not be null"

    .line 252
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iput-object p1, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->checksum:Ljava/util/zip/Checksum;

    .line 254
    iput-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->mode:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;

    .line 255
    iput p3, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->checksumLengthByte:I

    return-void

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checksum length must be between 1 and 8 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 4

    .line 260
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->checksum:Ljava/util/zip/Checksum;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 261
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lat/favre/lib/bytes/Bytes;->from(J)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    iget v0, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->checksumLengthByte:I

    invoke-virtual {p2, v0}, Lat/favre/lib/bytes/Bytes;->resize(I)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    .line 263
    iget-object v0, p0, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer;->mode:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;

    sget-object v2, Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;->TRANSFORM:Lat/favre/lib/bytes/BytesTransformers$ChecksumTransformer$Mode;

    if-ne v0, v2, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 266
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->from([[B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    return-object p1
.end method
