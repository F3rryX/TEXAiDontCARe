.class public final Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;
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
    name = "ShuffleTransformer"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "passed random must not be null"

    .line 174
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform([BZ)[B
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    .line 181
    :goto_0
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$ShuffleTransformer;->random:Ljava/util/Random;

    invoke-static {p1, p2}, Lat/favre/lib/bytes/Util$Byte;->shuffle([BLjava/util/Random;)V

    return-object p1
.end method
