.class public final Lat/favre/lib/bytes/BytesValidator$IdenticalContent;
.super Ljava/lang/Object;
.source "BytesValidator.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdenticalContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;
    }
.end annotation


# instance fields
.field private final mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

.field private final refByte:B


# direct methods
.method constructor <init>(BLat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-byte p1, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->refByte:B

    .line 86
    iput-object p2, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    return-void
.end method


# virtual methods
.method public validate([B)Z
    .locals 7

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-byte v4, p1, v2

    .line 92
    iget-object v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    sget-object v6, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NONE_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    if-ne v5, v6, :cond_0

    iget-byte v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->refByte:B

    if-ne v4, v5, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    sget-object v6, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    if-ne v5, v6, :cond_1

    iget-byte v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->refByte:B

    if-eq v4, v5, :cond_1

    return v1

    .line 98
    :cond_1
    iget-object v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    sget-object v6, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NOT_ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    if-ne v5, v6, :cond_2

    iget-byte v5, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->refByte:B

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_3
    iget-object p1, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    sget-object v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NONE_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;->mode:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    sget-object v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method
