.class public Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;
.super Ljava/lang/Object;
.source "BinaryToTextEncoding.java"

# interfaces
.implements Lat/favre/lib/bytes/BinaryToTextEncoding$EncoderDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BinaryToTextEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64Encoding"
.end annotation


# instance fields
.field private final padding:Z

.field private final urlSafe:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-direct {p0, v0, v1}, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;-><init>(ZZ)V

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;->urlSafe:Z

    .line 159
    iput-boolean p2, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;->padding:Z

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/CharSequence;)[B
    .locals 0

    .line 169
    invoke-static {p1}, Lat/favre/lib/bytes/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([BLjava/nio/ByteOrder;)Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->reverse()Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    :goto_0
    iget-boolean p2, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;->urlSafe:Z

    iget-boolean v1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Base64Encoding;->padding:Z

    invoke-static {p1, p2, v1}, Lat/favre/lib/bytes/Base64;->encode([BZZ)[B

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
