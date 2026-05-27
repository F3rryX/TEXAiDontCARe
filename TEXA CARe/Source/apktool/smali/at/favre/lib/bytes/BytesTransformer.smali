.class public interface abstract Lat/favre/lib/bytes/BytesTransformer;
.super Ljava/lang/Object;
.source "BytesTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$BitSwitchTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$CopyTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$ReverseTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$NegateTransformer;,
        Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer;
    }
.end annotation


# virtual methods
.method public abstract supportInPlaceTransformation()Z
.end method

.method public abstract transform([BZ)[B
.end method
