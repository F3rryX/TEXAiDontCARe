.class public final Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;
.super Ljava/lang/Object;
.source "BCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashData"
.end annotation


# instance fields
.field public final cost:I

.field public final rawHash:[B

.field public final rawSalt:[B

.field public final version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;


# direct methods
.method public constructor <init>(ILat/favre/lib/crypto/bcrypt/BCrypt$Version;[B[B)V
    .locals 6

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {p3}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lat/favre/lib/bytes/BytesValidator;

    const/16 v3, 0x10

    invoke-static {v3}, Lat/favre/lib/bytes/BytesValidators;->exactLength(I)Lat/favre/lib/bytes/BytesValidator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lat/favre/lib/bytes/Bytes;->validate([Lat/favre/lib/bytes/BytesValidator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p4}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    new-array v2, v1, [Lat/favre/lib/bytes/BytesValidator;

    const/4 v3, 0x2

    new-array v3, v3, [Lat/favre/lib/bytes/BytesValidator;

    const/16 v5, 0x17

    invoke-static {v5}, Lat/favre/lib/bytes/BytesValidators;->exactLength(I)Lat/favre/lib/bytes/BytesValidator;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v5, 0x18

    invoke-static {v5}, Lat/favre/lib/bytes/BytesValidators;->exactLength(I)Lat/favre/lib/bytes/BytesValidator;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v3}, Lat/favre/lib/bytes/BytesValidators;->or([Lat/favre/lib/bytes/BytesValidator;)Lat/favre/lib/bytes/BytesValidator;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lat/favre/lib/bytes/Bytes;->validate([Lat/favre/lib/bytes/BytesValidator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iput p1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    .line 348
    iput-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 349
    iput-object p3, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    .line 350
    iput-object p4, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    return-void

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "salt must be exactly 16 bytes and hash 23 bytes long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    check-cast p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    .line 366
    iget v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    iget v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    .line 368
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    iget-object v3, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    invoke-virtual {v2, v3}, Lat/favre/lib/bytes/Bytes;->equalsConstantTime([B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    .line 369
    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    iget-object p1, p1, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-virtual {v2, p1}, Lat/favre/lib/bytes/Bytes;->equalsConstantTime([B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 374
    iget v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 376
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashData{cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawSalt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    .line 385
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    .line 386
    invoke-static {v1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wipe()V
    .locals 1

    .line 357
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 358
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-void
.end method
