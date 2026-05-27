.class final Lat/favre/lib/bytes/BaseEncoding$Alphabet;
.super Ljava/lang/Object;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I


# direct methods
.method constructor <init>([C)V
    .locals 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [C

    iput-object v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->chars:[C

    .line 168
    array-length v0, p1

    invoke-static {v0}, Lat/favre/lib/bytes/BaseEncoding;->access$000(I)I

    move-result v0

    iput v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    div-int/2addr v2, v1

    iput v2, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 176
    div-int/2addr v0, v1

    iput v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 177
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->mask:I

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 180
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    .line 181
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 182
    aget-char v2, p1, v1

    int-to-byte v3, v1

    .line 183
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iput-object v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->decodabet:[B

    return-void
.end method


# virtual methods
.method decode(C)I
    .locals 1

    .line 193
    iget-object v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method encode(I)C
    .locals 1

    .line 189
    iget-object v0, p0, Lat/favre/lib/bytes/BaseEncoding$Alphabet;->chars:[C

    aget-char p1, v0, p1

    return p1
.end method
