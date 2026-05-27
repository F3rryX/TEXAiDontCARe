.class public final Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;
.super Ljava/lang/Object;
.source "BCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/BCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verifyer"
.end annotation


# instance fields
.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

.field private final version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;


# direct methods
.method private constructor <init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)V
    .locals 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-static {}, Lat/favre/lib/crypto/bcrypt/BCrypt;->access$200()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->defaultCharset:Ljava/nio/charset/Charset;

    .line 400
    iput-object p1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    .line 401
    iput-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;Lat/favre/lib/crypto/bcrypt/BCrypt$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)V

    return-void
.end method

.method private determinePasswordStrategy(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
    .locals 1

    .line 569
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->longPasswordStrategy:Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    if-nez v0, :cond_0

    .line 570
    invoke-static {p1}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategies;->strict(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private innerVerifyBytes([B[BZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 6

    .line 537
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v0, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->parser:Lat/favre/lib/crypto/bcrypt/BCryptParser;

    invoke-interface {v0, p2}, Lat/favre/lib/crypto/bcrypt/BCryptParser;->parse([B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    move-result-object p2

    .line 545
    iget-object v0, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    goto :goto_0

    .line 548
    :cond_0
    iget-object v1, v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->parser:Lat/favre/lib/crypto/bcrypt/BCryptParser;

    invoke-interface {v1, p2}, Lat/favre/lib/crypto/bcrypt/BCryptParser;->parse([B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    move-result-object p2

    :goto_0
    if-eqz p3, :cond_2

    .line 552
    iget-object p3, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    if-eqz p3, :cond_1

    .line 556
    iget-object p3, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    if-eq p3, v1, :cond_2

    .line 557
    new-instance p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;Z)V

    return-object p1

    .line 553
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Using strict requires to define a Version. Try \'BCrypt.verifier(Version.VERSION_2A)\'."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :cond_2
    invoke-direct {p0, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->determinePasswordStrategy(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v1

    iget v3, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    iget-object v4, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    iget-object v5, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->verifyBCrypt(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;[BI[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1
    :try_end_0
    .catch Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 563
    new-instance p2, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    invoke-direct {p2, p1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;-><init>(Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;)V

    return-object p2
.end method

.method private innerVerifyChar([C[CZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 3

    const/4 v0, 0x0

    .line 524
    :try_start_0
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 525
    :try_start_1
    iget-object v1, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {p2, v1}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0

    .line 526
    invoke-direct {p0, p1, v0, p3}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyBytes([B[BZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 529
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    return-object p2

    :catchall_0
    move-exception p2

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 528
    :goto_0
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p3

    invoke-virtual {p3}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    .line 529
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrapNullSafe([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    throw p2
.end method

.method private static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 3

    .line 506
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 507
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    .line 509
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 510
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 511
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static verifyBCrypt(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;[BI[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 0

    .line 621
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    invoke-static {p0, p1}, Lat/favre/lib/crypto/bcrypt/BCrypt;->with(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;)Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;

    move-result-object p0

    .line 622
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, [B

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, [B

    invoke-virtual {p0, p3, p4, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Hasher;->hashRaw(I[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;

    move-result-object p0

    .line 623
    new-instance p1, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    iget-object p2, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-static {p2}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, [B

    invoke-virtual {p2, p5}, Lat/favre/lib/bytes/Bytes;->equalsConstantTime([B)Z

    move-result p2

    invoke-direct {p1, p0, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Result;-><init>(Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;Z)V

    return-object p1
.end method


# virtual methods
.method public verify([BI[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 7

    .line 612
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->version:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    if-nez v0, :cond_0

    sget-object v0, Lat/favre/lib/crypto/bcrypt/BCrypt$Version;->VERSION_2A:Lat/favre/lib/crypto/bcrypt/BCrypt$Version;

    :cond_0
    move-object v1, v0

    .line 613
    invoke-direct {p0, v1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->determinePasswordStrategy(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;)Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->verifyBCrypt(Lat/favre/lib/crypto/bcrypt/BCrypt$Version;Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;[BI[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verify([BLat/favre/lib/crypto/bcrypt/BCrypt$HashData;)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 2

    .line 592
    iget v0, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->cost:I

    iget-object v1, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawSalt:[B

    iget-object p2, p2, Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;->rawHash:[B

    invoke-virtual {p0, p1, v0, v1, p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->verify([BI[B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verify([B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyBytes([B[BZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verify([CLjava/lang/CharSequence;)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 1

    .line 479
    invoke-static {p2}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyChar([C[CZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verify([C[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 2

    .line 497
    iget-object v0, p0, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lat/favre/lib/bytes/Bytes;->from([CLjava/nio/charset/Charset;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p1

    .line 498
    :try_start_0
    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyBytes([B[BZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 497
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 499
    :try_start_2
    invoke-virtual {p1}, Lat/favre/lib/bytes/MutableBytes;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public verify([C[C)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyChar([C[CZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verifyStrict([B[B)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 1

    const/4 v0, 0x1

    .line 418
    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyBytes([B[BZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method

.method public verifyStrict([C[C)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;
    .locals 1

    const/4 v0, 0x1

    .line 449
    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/crypto/bcrypt/BCrypt$Verifyer;->innerVerifyChar([C[CZ)Lat/favre/lib/crypto/bcrypt/BCrypt$Result;

    move-result-object p1

    return-object p1
.end method
