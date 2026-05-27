.class final Lat/favre/lib/bytes/Util$BytesIterator;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BytesIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[B

.field private cursor:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1068
    iput v0, p0, Lat/favre/lib/bytes/Util$BytesIterator;->cursor:I

    .line 1071
    iput-object p1, p0, Lat/favre/lib/bytes/Util$BytesIterator;->array:[B

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1076
    iget v0, p0, Lat/favre/lib/bytes/Util$BytesIterator;->cursor:I

    iget-object v1, p0, Lat/favre/lib/bytes/Util$BytesIterator;->array:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Byte;
    .locals 2

    .line 1082
    :try_start_0
    iget v0, p0, Lat/favre/lib/bytes/Util$BytesIterator;->cursor:I

    .line 1083
    iget-object v1, p0, Lat/favre/lib/bytes/Util$BytesIterator;->array:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 1084
    iput v0, p0, Lat/favre/lib/bytes/Util$BytesIterator;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1087
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Lat/favre/lib/bytes/Util$BytesIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The Bytes iterator does not support removing"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
