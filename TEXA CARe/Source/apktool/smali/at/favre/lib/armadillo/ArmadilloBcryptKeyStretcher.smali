.class final Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;
.super Ljava/lang/Object;
.source "ArmadilloBcryptKeyStretcher.java"

# interfaces
.implements Lat/favre/lib/armadillo/KeyStretchingFunction;


# static fields
.field private static final BCRYPT_DEFAULT_ROUNDS:I = 0xc

.field private static final BCRYPT_MIN_ROUNDS:I = 0x8


# instance fields
.field private final iterations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 36
    invoke-direct {p0, v0}, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 46
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;->iterations:I

    return-void
.end method

.method private static bcrypt([B[CI)[B
    .locals 5

    const-string v0, "bcrypt is a very expensive call and should not be done on the main thread"

    .line 67
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    .line 70
    :try_start_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([C)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    .line 71
    sget-object p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    invoke-static {p1}, Lat/favre/lib/crypto/bcrypt/BCrypt;->with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    move-result-object p1

    .line 72
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v1

    const-string v2, "bcrypt-salt"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object p0

    .line 73
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v1

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v2

    const-string v3, "bcrypt-pw"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v1, v2, v3, v4}, Lat/favre/lib/crypto/HKDF;->expand([B[BI)[B

    move-result-object v1

    .line 71
    invoke-virtual {p1, p2, p0, v1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hashRaw(I[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    move-result-object p0

    iget-object p0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p0
.end method


# virtual methods
.method public stretch([B[CI)[B
    .locals 2

    .line 52
    :try_start_0
    invoke-static {}, Lat/favre/lib/crypto/HKDF;->fromHmacSha256()Lat/favre/lib/crypto/HKDF;

    move-result-object v0

    iget v1, p0, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;->iterations:I

    invoke-static {p1, p2, v1}, Lat/favre/lib/armadillo/ArmadilloBcryptKeyStretcher;->bcrypt([B[CI)[B

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

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "could not stretch with bcrypt"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
