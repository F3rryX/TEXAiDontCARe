.class public final Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;
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
    name = "ShiftTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;
    }
.end annotation


# instance fields
.field private final shiftCount:I

.field private final type:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;


# direct methods
.method constructor <init>(ILat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;->shiftCount:I

    const-string p1, "passed shift type must not be null"

    .line 137
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    iput-object p2, p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;->type:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform([BZ)[B
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    .line 144
    :goto_0
    sget-object p2, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type:[I

    iget-object v0, p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;->type:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-virtual {v0}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 149
    iget p2, p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;->shiftCount:I

    invoke-static {p1, p2}, Lat/favre/lib/bytes/Util$Byte;->shiftLeft([BI)[B

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    iget p2, p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;->shiftCount:I

    invoke-static {p1, p2}, Lat/favre/lib/bytes/Util$Byte;->shiftRight([BI)[B

    move-result-object p1

    return-object p1
.end method
