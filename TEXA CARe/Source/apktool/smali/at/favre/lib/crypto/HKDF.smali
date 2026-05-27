.class public final Lat/favre/lib/crypto/HKDF;
.super Ljava/lang/Object;
.source "HKDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/crypto/HKDF$Expander;,
        Lat/favre/lib/crypto/HKDF$Extractor;
    }
.end annotation


# static fields
.field private static hkdfHmacSha256:Lat/favre/lib/crypto/HKDF;

.field private static hkdfHmacSha512:Lat/favre/lib/crypto/HKDF;


# instance fields
.field private final macFactory:Lat/favre/lib/crypto/HkdfMacFactory;


# direct methods
.method private constructor <init>(Lat/favre/lib/crypto/HkdfMacFactory;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    return-void
.end method

.method public static from(Lat/favre/lib/crypto/HkdfMacFactory;)Lat/favre/lib/crypto/HKDF;
    .locals 1

    .line 95
    new-instance v0, Lat/favre/lib/crypto/HKDF;

    invoke-direct {v0, p0}, Lat/favre/lib/crypto/HKDF;-><init>(Lat/favre/lib/crypto/HkdfMacFactory;)V

    return-object v0
.end method

.method public static fromHmacSha256()Lat/favre/lib/crypto/HKDF;
    .locals 1

    .line 69
    sget-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha256:Lat/favre/lib/crypto/HKDF;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lat/favre/lib/crypto/HkdfMacFactory$Default;->hmacSha256()Lat/favre/lib/crypto/HkdfMacFactory;

    move-result-object v0

    invoke-static {v0}, Lat/favre/lib/crypto/HKDF;->from(Lat/favre/lib/crypto/HkdfMacFactory;)Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    sput-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha256:Lat/favre/lib/crypto/HKDF;

    .line 72
    :cond_0
    sget-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha256:Lat/favre/lib/crypto/HKDF;

    return-object v0
.end method

.method public static fromHmacSha512()Lat/favre/lib/crypto/HKDF;
    .locals 1

    .line 82
    sget-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha512:Lat/favre/lib/crypto/HKDF;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lat/favre/lib/crypto/HkdfMacFactory$Default;->hmacSha512()Lat/favre/lib/crypto/HkdfMacFactory;

    move-result-object v0

    invoke-static {v0}, Lat/favre/lib/crypto/HKDF;->from(Lat/favre/lib/crypto/HkdfMacFactory;)Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    sput-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha512:Lat/favre/lib/crypto/HKDF;

    .line 85
    :cond_0
    sget-object v0, Lat/favre/lib/crypto/HKDF;->hkdfHmacSha512:Lat/favre/lib/crypto/HKDF;

    return-object v0
.end method


# virtual methods
.method public expand(Ljavax/crypto/SecretKey;[BI)[B
    .locals 2

    .line 182
    new-instance v0, Lat/favre/lib/crypto/HKDF$Expander;

    iget-object v1, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-direct {v0, v1}, Lat/favre/lib/crypto/HKDF$Expander;-><init>(Lat/favre/lib/crypto/HkdfMacFactory;)V

    invoke-virtual {v0, p1, p2, p3}, Lat/favre/lib/crypto/HKDF$Expander;->execute(Ljavax/crypto/SecretKey;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public expand([B[BI)[B
    .locals 1

    .line 167
    iget-object v0, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-interface {v0, p1}, Lat/favre/lib/crypto/HkdfMacFactory;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lat/favre/lib/crypto/HKDF;->expand(Ljavax/crypto/SecretKey;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extract(Ljavax/crypto/SecretKey;[B)[B
    .locals 2

    .line 137
    new-instance v0, Lat/favre/lib/crypto/HKDF$Extractor;

    iget-object v1, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-direct {v0, v1}, Lat/favre/lib/crypto/HKDF$Extractor;-><init>(Lat/favre/lib/crypto/HkdfMacFactory;)V

    invoke-virtual {v0, p1, p2}, Lat/favre/lib/crypto/HKDF$Extractor;->execute(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public extract([B[B)[B
    .locals 1

    .line 123
    iget-object v0, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-interface {v0, p1}, Lat/favre/lib/crypto/HkdfMacFactory;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lat/favre/lib/crypto/HKDF;->extract(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public extractAndExpand(Ljavax/crypto/SecretKey;[B[BI)[B
    .locals 3

    .line 208
    new-instance v0, Lat/favre/lib/crypto/HKDF$Expander;

    iget-object v1, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-direct {v0, v1}, Lat/favre/lib/crypto/HKDF$Expander;-><init>(Lat/favre/lib/crypto/HkdfMacFactory;)V

    iget-object v1, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    new-instance v2, Lat/favre/lib/crypto/HKDF$Extractor;

    invoke-direct {v2, v1}, Lat/favre/lib/crypto/HKDF$Extractor;-><init>(Lat/favre/lib/crypto/HkdfMacFactory;)V

    .line 209
    invoke-virtual {v2, p1, p2}, Lat/favre/lib/crypto/HKDF$Extractor;->execute(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    .line 208
    invoke-interface {v1, p1}, Lat/favre/lib/crypto/HkdfMacFactory;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Lat/favre/lib/crypto/HKDF$Expander;->execute(Ljavax/crypto/SecretKey;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extractAndExpand([B[B[BI)[B
    .locals 1

    .line 195
    iget-object v0, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-interface {v0, p1}, Lat/favre/lib/crypto/HkdfMacFactory;->createSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lat/favre/lib/crypto/HKDF;->extractAndExpand(Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method getMacFactory()Lat/favre/lib/crypto/HkdfMacFactory;
    .locals 1

    .line 219
    iget-object v0, p0, Lat/favre/lib/crypto/HKDF;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    return-object v0
.end method
