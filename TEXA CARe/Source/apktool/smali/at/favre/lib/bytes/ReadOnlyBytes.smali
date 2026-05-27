.class public final Lat/favre/lib/bytes/ReadOnlyBytes;
.super Lat/favre/lib/bytes/Bytes;
.source "ReadOnlyBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/ReadOnlyBytes$Factory;
    }
.end annotation


# direct methods
.method constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 2

    .line 43
    new-instance v0, Lat/favre/lib/bytes/ReadOnlyBytes$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/favre/lib/bytes/ReadOnlyBytes$Factory;-><init>(Lat/favre/lib/bytes/ReadOnlyBytes$1;)V

    invoke-direct {p0, p1, p2, v0}, Lat/favre/lib/bytes/Bytes;-><init>([BLjava/nio/ByteOrder;Lat/favre/lib/bytes/BytesFactory;)V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 53
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
