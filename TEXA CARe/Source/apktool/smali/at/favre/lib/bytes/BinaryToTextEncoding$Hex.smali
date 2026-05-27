.class public Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;
.super Ljava/lang/Object;
.source "BinaryToTextEncoding.java"

# interfaces
.implements Lat/favre/lib/bytes/BinaryToTextEncoding$EncoderDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BinaryToTextEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hex"
.end annotation


# static fields
.field private static final LOOKUP_TABLE_LOWER:[C

.field private static final LOOKUP_TABLE_UPPER:[C


# instance fields
.field private final upperCase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 75
    fill-array-data v1, :array_0

    sput-object v1, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->LOOKUP_TABLE_LOWER:[C

    new-array v0, v0, [C

    .line 76
    fill-array-data v0, :array_1

    sput-object v0, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->LOOKUP_TABLE_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->upperCase:Z

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/CharSequence;)[B
    .locals 11

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 108
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x78

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 116
    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    sub-int v5, v4, v0

    .line 121
    div-int/2addr v5, v3

    new-array v5, v5, [B

    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_7

    const/16 v7, 0x10

    if-ne v6, v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    .line 128
    :cond_3
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    :goto_3
    add-int/lit8 v9, v6, 0x1

    .line 130
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    if-ne v7, v10, :cond_4

    goto :goto_4

    :cond_4
    sub-int v9, v6, v0

    .line 140
    div-int/2addr v9, v3

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, v5, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_5
    :goto_4
    const-string v2, " is not hex formatted"

    const-string v3, "\' at index "

    const-string v4, "\'"

    if-ne v6, v0, :cond_6

    if-eqz v1, :cond_6

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v5
.end method

.method public encode([BLjava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    .line 90
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 91
    iget-boolean v1, p0, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->upperCase:Z

    if-eqz v1, :cond_0

    sget-object v1, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->LOOKUP_TABLE_UPPER:[C

    goto :goto_0

    :cond_0
    sget-object v1, Lat/favre/lib/bytes/BinaryToTextEncoding$Hex;->LOOKUP_TABLE_LOWER:[C

    :goto_0
    const/4 v2, 0x0

    .line 94
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 95
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_1

    move v3, v2

    goto :goto_2

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_2
    shl-int/lit8 v4, v2, 0x1

    .line 97
    aget-byte v5, p1, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 98
    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
