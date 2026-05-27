.class public final Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;
.super Ljava/lang/Object;
.source "BytesTransformer.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReverseTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform([BZ)[B
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 189
    array-length v0, p1

    invoke-static {p1, p2, v0}, Lat/favre/lib/bytes/Util$Byte;->reverse([BII)V

    return-object p1
.end method
