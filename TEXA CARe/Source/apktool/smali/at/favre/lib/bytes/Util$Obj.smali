.class final Lat/favre/lib/bytes/Util$Obj;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Obj"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static equals([B[Ljava/lang/Byte;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 828
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 829
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 830
    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    aget-byte v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static hashCode([BLjava/nio/ByteOrder;)I
    .locals 0

    .line 854
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method static toString(Lat/favre/lib/bytes/Bytes;)Ljava/lang/String;
    .locals 4

    .line 876
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, ")"

    const-string v3, "(0x"

    if-le v0, v1, :cond_1

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lat/favre/lib/bytes/Bytes;->copy(II)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v3}, Lat/favre/lib/bytes/Bytes;->copy(II)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    const-string p0, "byte"

    goto :goto_1

    :cond_2
    const-string p0, "bytes"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
