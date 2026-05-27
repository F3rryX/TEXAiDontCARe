.class public final Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;
.super Ljava/lang/Object;
.source "LongPasswordStrategies.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashSha512(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
    .locals 1

    .line 30
    new-instance v0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$Sha512DerivationStrategy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget p0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    invoke-direct {v0, p0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$Sha512DerivationStrategy;-><init>(I)V

    return-object v0
.end method

.method public static none()Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
    .locals 1

    .line 49
    new-instance v0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$PassThroughStrategy;

    invoke-direct {v0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$PassThroughStrategy;-><init>()V

    return-object v0
.end method

.method public static strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
    .locals 1

    .line 40
    new-instance v0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$StrictMaxPasswordLengthStrategy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget p0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    invoke-direct {v0, p0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$StrictMaxPasswordLengthStrategy;-><init>(I)V

    return-object v0
.end method

.method public static truncate(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
    .locals 1

    .line 20
    new-instance v0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$TruncateStrategy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget p0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->allowedMaxPwLength:I

    invoke-direct {v0, p0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$TruncateStrategy;-><init>(I)V

    return-object v0
.end method
