.class public Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;
.super Ljava/lang/Object;
.source "BytesTransformer.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitSwitchTransformer"
.end annotation


# instance fields
.field private final newBitValue:Ljava/lang/Boolean;

.field private final position:I


# direct methods
.method constructor <init>(ILjava/lang/Boolean;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->position:I

    .line 292
    iput-object p2, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->newBitValue:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform([BZ)[B
    .locals 3

    if-eqz p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    .line 299
    :goto_0
    iget v0, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->position:I

    if-ltz v0, :cond_3

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_3

    .line 303
    array-length p1, p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/lit8 v2, v0, 0x8

    sub-int/2addr p1, v2

    .line 304
    iget-object v2, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->newBitValue:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 305
    aget-byte v2, p2, p1

    rem-int/lit8 v0, v0, 0x8

    shl-int v0, v1, v0

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    goto :goto_1

    .line 306
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    aget-byte v0, p2, p1

    iget v2, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->position:I

    rem-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    goto :goto_1

    .line 309
    :cond_2
    aget-byte v0, p2, p1

    iget v2, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->position:I

    rem-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    :goto_1
    return-object p2

    .line 300
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bit index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;->position:I

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out of bounds"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
