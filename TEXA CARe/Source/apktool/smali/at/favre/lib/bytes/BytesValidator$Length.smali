.class public final Lat/favre/lib/bytes/BytesValidator$Length;
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
    name = "Length"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesValidator$Length$Mode;
    }
.end annotation


# instance fields
.field private final mode:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

.field private final refLength:I


# direct methods
.method public constructor <init>(ILat/favre/lib/bytes/BytesValidator$Length$Mode;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lat/favre/lib/bytes/BytesValidator$Length;->refLength:I

    .line 55
    iput-object p2, p0, Lat/favre/lib/bytes/BytesValidator$Length;->mode:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

    return-void
.end method


# virtual methods
.method public validate([B)Z
    .locals 4

    .line 60
    sget-object v0, Lat/favre/lib/bytes/BytesValidator$1;->$SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode:[I

    iget-object v1, p0, Lat/favre/lib/bytes/BytesValidator$Length;->mode:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

    invoke-virtual {v1}, Lat/favre/lib/bytes/BytesValidator$Length$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 67
    array-length p1, p1

    iget v0, p0, Lat/favre/lib/bytes/BytesValidator$Length;->refLength:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 64
    :cond_1
    array-length p1, p1

    iget v0, p0, Lat/favre/lib/bytes/BytesValidator$Length;->refLength:I

    if-gt p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 62
    :cond_3
    array-length p1, p1

    iget v0, p0, Lat/favre/lib/bytes/BytesValidator$Length;->refLength:I

    if-lt p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method
