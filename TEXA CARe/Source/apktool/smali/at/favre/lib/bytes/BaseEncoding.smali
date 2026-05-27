.class final Lat/favre/lib/bytes/BaseEncoding;
.super Ljava/lang/Object;
.source "BaseEncoding.java"

# interfaces
.implements Lat/favre/lib/bytes/BinaryToTextEncoding$EncoderDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BaseEncoding$Alphabet;
    }
.end annotation


# static fields
.field private static final ASCII_MAX:C = '\u007f'

.field static final BASE32_RFC4848:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

.field static final BASE32_RFC4848_PADDING:C = '='


# instance fields
.field private final alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

.field private final paddingChar:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/BaseEncoding$Alphabet;-><init>([C)V

    sput-object v0, Lat/favre/lib/bytes/BaseEncoding;->BASE32_RFC4848:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    return-void
.end method

.method public constructor <init>(Lat/favre/lib/bytes/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iput-object p1, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    .line 48
    iput-object p2, p0, Lat/favre/lib/bytes/BaseEncoding;->paddingChar:Ljava/lang/Character;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 36
    invoke-static {p0}, Lat/favre/lib/bytes/BaseEncoding;->log2(I)I

    move-result p0

    return p0
.end method

.method private decodeTo([BLjava/lang/CharSequence;)I
    .locals 12

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-direct {p0, p2}, Lat/favre/lib/bytes/BaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 143
    :goto_1
    iget-object v7, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v7, v7, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->charsPerChunk:I

    if-ge v5, v7, :cond_1

    .line 144
    iget-object v7, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v7, v7, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    .line 145
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 146
    iget-object v7, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->decode(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    :cond_1
    iget-object v5, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v5, v5, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    mul-int/lit8 v5, v5, 0x8

    iget-object v7, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v7, v7, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    mul-int v6, v6, v7

    sub-int/2addr v5, v6

    .line 150
    iget-object v6, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v6, v6, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    :goto_2
    if-lt v6, v5, :cond_2

    add-int/lit8 v7, v2, 0x1

    ushr-long v8, v3, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 151
    aput-byte v8, p1, v2

    add-int/lit8 v6, v6, -0x8

    move v2, v7

    goto :goto_2

    .line 140
    :cond_2
    iget-object v3, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v3, v3, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->charsPerChunk:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static divide(II)I
    .locals 2

    .line 198
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_1

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private encode([BII)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lat/favre/lib/bytes/BaseEncoding;->maxEncodedSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lat/favre/lib/bytes/BaseEncoding;->encodeTo(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private encodeChunkTo(Ljava/lang/Appendable;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, p4, :cond_0

    add-int v5, p3, v3

    .line 81
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v1, v5

    shl-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p4, 0x1

    mul-int/lit8 p2, p2, 0x8

    .line 85
    iget-object p3, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget p3, p3, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int/2addr p2, p3

    :goto_1
    mul-int/lit8 p3, p4, 0x8

    if-ge v0, p3, :cond_1

    sub-int p3, p2, v0

    ushr-long v5, v1, p3

    long-to-int p3, v5

    .line 88
    iget-object v3, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v3, v3, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->mask:I

    and-int/2addr p3, v3

    .line 89
    iget-object v3, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    invoke-virtual {v3, p3}, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->encode(I)C

    move-result p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 90
    iget-object p3, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget p3, p3, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v0, p3

    goto :goto_1

    .line 92
    :cond_1
    iget-object p2, p0, Lat/favre/lib/bytes/BaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz p2, :cond_2

    .line 93
    :goto_2
    iget-object p2, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget p2, p2, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    mul-int/lit8 p2, p2, 0x8

    if-ge v0, p2, :cond_2

    .line 94
    iget-object p2, p0, Lat/favre/lib/bytes/BaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 95
    iget-object p2, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget p2, p2, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v0, p2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 73
    iget-object v2, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v2, v2, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    sub-int v3, p4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Lat/favre/lib/bytes/BaseEncoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    .line 72
    iget-object v1, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v1, v1, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static extract([BI)[B
    .locals 2

    .line 127
    array-length v0, p0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 130
    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 131
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static log2(I)I
    .locals 0

    .line 209
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private maxDecodedSize(I)I
    .locals 4

    .line 101
    iget-object v0, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v0, v0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private maxEncodedSize(I)I
    .locals 2

    .line 52
    iget-object v0, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v0, v0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->charsPerChunk:I

    iget-object v1, p0, Lat/favre/lib/bytes/BaseEncoding;->alphabet:Lat/favre/lib/bytes/BaseEncoding$Alphabet;

    iget v1, v1, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    invoke-static {p1, v1}, Lat/favre/lib/bytes/BaseEncoding;->divide(II)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method private trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lat/favre/lib/bytes/BaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 111
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lat/favre/lib/bytes/BaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decode(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 120
    invoke-direct {p0, p1}, Lat/favre/lib/bytes/BaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lat/favre/lib/bytes/BaseEncoding;->maxDecodedSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 122
    invoke-direct {p0, v0, p1}, Lat/favre/lib/bytes/BaseEncoding;->decodeTo([BLjava/lang/CharSequence;)I

    move-result p1

    .line 123
    invoke-static {v0, p1}, Lat/favre/lib/bytes/BaseEncoding;->extract([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([BLjava/nio/ByteOrder;)Ljava/lang/String;
    .locals 1

    .line 57
    array-length p2, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lat/favre/lib/bytes/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
