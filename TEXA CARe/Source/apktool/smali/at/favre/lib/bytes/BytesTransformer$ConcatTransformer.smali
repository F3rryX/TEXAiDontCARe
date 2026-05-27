.class public final Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;
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
    name = "ConcatTransformer"
.end annotation


# instance fields
.field private final secondArray:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "the second byte array must not be null"

    .line 168
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;->secondArray:[B

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 1

    const/4 p2, 0x2

    new-array p2, p2, [[B

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 173
    iget-object p1, p0, Lat/favre/lib/bytes/BytesTransformer$ConcatTransformer;->secondArray:[B

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lat/favre/lib/bytes/Util$Byte;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
