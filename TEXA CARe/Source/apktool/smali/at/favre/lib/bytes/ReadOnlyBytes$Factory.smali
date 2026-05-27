.class Lat/favre/lib/bytes/ReadOnlyBytes$Factory;
.super Ljava/lang/Object;
.source "ReadOnlyBytes.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/ReadOnlyBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/bytes/ReadOnlyBytes$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lat/favre/lib/bytes/ReadOnlyBytes$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 62
    new-instance v0, Lat/favre/lib/bytes/ReadOnlyBytes;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/ReadOnlyBytes;-><init>([BLjava/nio/ByteOrder;)V

    return-object v0
.end method
