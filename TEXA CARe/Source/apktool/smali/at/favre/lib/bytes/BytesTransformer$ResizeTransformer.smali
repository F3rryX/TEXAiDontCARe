.class public final Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;
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
    name = "ResizeTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;
    }
.end annotation


# instance fields
.field private final mode:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

.field private final newSize:I


# direct methods
.method constructor <init>(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    .line 245
    iput-object p2, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->mode:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 4

    .line 250
    array-length p2, p1

    iget v0, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    if-ltz v0, :cond_4

    const/4 p2, 0x0

    if-nez v0, :cond_1

    new-array p1, p2, [B

    return-object p1

    .line 262
    :cond_1
    new-array v1, v0, [B

    .line 264
    iget-object v2, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->mode:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    sget-object v3, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;->RESIZE_KEEP_FROM_MAX_LENGTH:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    if-ne v2, v3, :cond_3

    .line 265
    iget v0, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    array-length v2, p1

    if-le v0, v2, :cond_2

    .line 266
    array-length v2, p1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 268
    :cond_2
    array-length v2, p1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v2, p0, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;->newSize:I

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 271
    :cond_3
    array-length v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    .line 255
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot resize to smaller than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
