.class public final Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;
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
    name = "CopyTransformer"
.end annotation


# instance fields
.field final length:I

.field final offset:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;->offset:I

    .line 208
    iput p2, p0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;->length:I

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 3

    .line 213
    iget p2, p0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;->length:I

    new-array v0, p2, [B

    .line 214
    iget v1, p0, Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;->offset:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
