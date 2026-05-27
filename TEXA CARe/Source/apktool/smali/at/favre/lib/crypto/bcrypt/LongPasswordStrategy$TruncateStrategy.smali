.class public final Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$TruncateStrategy;
.super Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;
.source "LongPasswordStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TruncateStrategy"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;-><init>(ILat/favre/lib/crypto/bcrypt/LongPasswordStrategy$1;)V

    return-void
.end method


# virtual methods
.method public innerDerive([B)[B
    .locals 2

    .line 82
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    iget v0, p0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$TruncateStrategy;->maxLength:I

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;->RESIZE_KEEP_FROM_ZERO_INDEX:Lat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;

    invoke-virtual {p1, v0, v1}, Lat/favre/lib/bytes/Bytes;->resize(ILat/favre/lib/bytes/BytesTransformer$ResizeTransformer$Mode;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    return-object p1
.end method
