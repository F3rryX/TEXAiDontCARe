.class public final Lat/favre/lib/bytes/BytesTransformers$SortTransformer;
.super Ljava/lang/Object;
.source "BytesTransformers.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SortTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformers$SortTransformer$UnsignedByteComparator;
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public transform([BZ)[B
    .locals 1

    .line 208
    iget-object v0, p0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    .line 210
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([B)V

    return-object p1

    .line 214
    :cond_1
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->toBoxedArray()[Ljava/lang/Byte;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$SortTransformer;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 216
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([Ljava/lang/Byte;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    return-object p1
.end method
