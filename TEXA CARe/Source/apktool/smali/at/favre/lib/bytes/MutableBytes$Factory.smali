.class Lat/favre/lib/bytes/MutableBytes$Factory;
.super Ljava/lang/Object;
.source "MutableBytes.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/MutableBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/bytes/MutableBytes$1;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lat/favre/lib/bytes/MutableBytes$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap([BLjava/nio/ByteOrder;)Lat/favre/lib/bytes/Bytes;
    .locals 1

    .line 206
    new-instance v0, Lat/favre/lib/bytes/MutableBytes;

    invoke-direct {v0, p1, p2}, Lat/favre/lib/bytes/MutableBytes;-><init>([BLjava/nio/ByteOrder;)V

    return-object v0
.end method
