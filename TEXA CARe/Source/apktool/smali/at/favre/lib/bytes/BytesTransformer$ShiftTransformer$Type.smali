.class public final enum Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;
.super Ljava/lang/Enum;
.source "BytesTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

.field public static final enum LEFT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

.field public static final enum RIGHT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 129
    new-instance v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    const-string v1, "LEFT_SHIFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->LEFT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    new-instance v1, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    const-string v3, "RIGHT_SHIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->RIGHT_SHIFT:Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 128
    sput-object v3, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->$VALUES:[Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;
    .locals 1

    .line 128
    const-class v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    return-object p0
.end method

.method public static values()[Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;
    .locals 1

    .line 128
    sget-object v0, Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->$VALUES:[Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    invoke-virtual {v0}, [Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/favre/lib/bytes/BytesTransformer$ShiftTransformer$Type;

    return-object v0
.end method
