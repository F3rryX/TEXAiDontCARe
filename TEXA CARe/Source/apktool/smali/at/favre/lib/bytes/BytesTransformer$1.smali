.class synthetic Lat/favre/lib/bytes/BytesTransformer$1;
.super Ljava/lang/Object;
.source "BytesTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode:[I

.field static final synthetic $SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 144
    invoke-static {}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->values()[Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->RIGHT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-virtual {v2}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type:[I

    sget-object v3, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->LEFT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-virtual {v3}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :catch_1
    invoke-static {}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->values()[Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode:[I

    :try_start_2
    sget-object v3, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->AND:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-virtual {v3}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode:[I

    sget-object v2, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->XOR:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-virtual {v2}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lat/favre/lib/bytes/BytesTransformer$1;->$SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode:[I

    sget-object v1, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->OR:Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;

    invoke-virtual {v1}, Lat/favre/lib/bytes/BytesTransformer$BitWiseOperatorTransformer$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
