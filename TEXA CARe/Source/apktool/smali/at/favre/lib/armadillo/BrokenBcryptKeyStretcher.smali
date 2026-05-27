.class final Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;
.super Ljava/lang/Object;
.source "BrokenBcryptKeyStretcher.java"

# interfaces
.implements Lat/favre/lib/armadillo/KeyStretchingFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BCRYPT_DEFAULT_ROUNDS:I = 0xc

.field private static final BCRYPT_MIN_ROUNDS:I = 0x8

.field private static final CUSTOM_LEGACY_VERSION:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;


# instance fields
.field private final iterations:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 40
    new-instance v7, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-instance v5, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;

    new-instance v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v5, v0, v2, v3}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$CustomFormatter;-><init>(Lat/favre/lib/crypto/bcrypt/Radix64Encoder;Ljava/nio/charset/Charset;Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$1;)V

    sget-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v6, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->parser:Lat/favre/lib/crypto/bcrypt/BCryptParser;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x47

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;-><init>([BZZILat/favre/lib/crypto/bcrypt/BCryptFormatter;Lat/favre/lib/crypto/bcrypt/BCryptParser;)V

    sput-object v7, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->CUSTOM_LEGACY_VERSION:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    return-void

    :array_0
    .array-data 1
        0x32t
        0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 48
    invoke-direct {p0, v0}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 58
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->iterations:I

    return-void
.end method

.method private static bcrypt([C[BI)[B
    .locals 3

    const-string v0, "bcrypt is a very expensive call and should not be done on the main thread"

    .line 79
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->CUSTOM_LEGACY_VERSION:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sget-object v2, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;->INSTANCE:Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;

    invoke-static {v0, v1, v2}, Lat/favre/lib/crypto/bcrypt/BCrypt;->with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->createLegacySalt([B)[B

    move-result-object v1

    .line 82
    invoke-static {p0, p1}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->createLegacyPassword([C[B)[B

    move-result-object p0

    .line 80
    invoke-virtual {v0, p2, v1, p0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hash(I[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static createLegacyPassword([C[B)[B
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->from(Ljava/lang/CharSequence;)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->encodeUtf8()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static createLegacySalt([B)[B
    .locals 3

    .line 90
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    const-string v1, "bcrypt"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object p0

    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lat/favre/lib/crypto/bcrypt/Radix64Encoder$Default;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bcrypt$0([B)[B
    .locals 0

    .line 80
    invoke-static {p0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->copy()Lat/favre/lib/bytes/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public stretch([B[CI)[B
    .locals 2

    .line 64
    :try_start_0
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    iget v1, p0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->iterations:I

    invoke-static {p2, p1, v1}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->bcrypt([C[BI)[B

    move-result-object p1

    const-string p2, "bcrypt"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "could not stretch with bcrypt"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
