.class final Lat/favre/lib/armadillo/HkdfMessageDigest;
.super Ljava/lang/Object;
.source "HkdfMessageDigest.java"

# interfaces
.implements Lat/favre/lib/armadillo/StringMessageDigest;


# instance fields
.field private final outLength:I

.field private final salt:[B


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lat/favre/lib/armadillo/HkdfMessageDigest;->salt:[B

    .line 27
    iput p2, p0, Lat/favre/lib/armadillo/HkdfMessageDigest;->outLength:I

    return-void
.end method


# virtual methods
.method public derive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha512()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    iget-object v1, p0, Lat/favre/lib/armadillo/HkdfMessageDigest;->salt:[B

    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 36
    invoke-static {p2, v2}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    iget v2, p0, Lat/favre/lib/armadillo/HkdfMessageDigest;->outLength:I

    .line 35
    invoke-virtual {v0, v1, p1, p2, v2}, Lat/favre/lib/crypto/HKDF;->extractAndExpand([B[B[BI)[B

    move-result-object p1

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
