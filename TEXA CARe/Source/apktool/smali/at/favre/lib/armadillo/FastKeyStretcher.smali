.class public final Lat/favre/lib/armadillo/FastKeyStretcher;
.super Ljava/lang/Object;
.source "FastKeyStretcher.java"

# interfaces
.implements Lat/favre/lib/armadillo/KeyStretchingFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stretch([B[CI)[B
    .locals 2

    .line 18
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p2, v1}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    const-string v1, "FastKeyStretcher"

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 18
    invoke-virtual {v0, p1, p2, v1, p3}, Lat/favre/lib/crypto/HKDF;->extractAndExpand([B[B[BI)[B

    move-result-object p1

    return-object p1
.end method
