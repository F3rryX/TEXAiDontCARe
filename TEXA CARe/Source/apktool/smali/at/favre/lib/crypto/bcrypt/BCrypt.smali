.class public final Lat/favre/lib/crypto/bcrypt/BCrypt;
.super Ljava/lang/Object;
.source "BCrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/crypto/bcrypt/BCrypt$Version;,
        Lat/favre/lib/crypto/bcrypt/BCrypt$Result;,
        Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;,
        Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;,
        Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field static final HASH_OUT_LENGTH:I = 0x17

.field static final MAJOR_VERSION:B = 0x32t

.field public static final MAX_COST:I = 0x1f

.field public static final MIN_COST:I = 0x4

.field public static final SALT_LENGTH:I = 0x10

.field static final SEPARATOR:B = 0x24t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/nio/charset/Charset;
    .locals 1

    .line 21
    sget-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static verifyer()Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-static {v0, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt;->verifyer(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;

    move-result-object v0

    return-object v0
.end method

.method public static verifyer(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;
    .locals 3

    .line 140
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;

    invoke-static {p0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;->strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static verifyer(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;
    .locals 2

    .line 153
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 4

    .line 74
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;->strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 3

    .line 109
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 2

    .line 121
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static with(Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 4

    .line 98
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    sget-object v1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static with(Ljava/security/SecureRandom;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 4

    .line 86
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    sget-object v1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    sget-object v2, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    invoke-static {v2}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;->strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method

.method public static withDefaults()Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;
    .locals 5

    .line 63
    new-instance v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    sget-object v1, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sget-object v3, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    invoke-static {v3}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;->strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Ljava/security/SecureRandom;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V

    return-object v0
.end method
