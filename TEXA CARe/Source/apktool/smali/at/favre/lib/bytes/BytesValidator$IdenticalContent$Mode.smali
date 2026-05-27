.class final enum Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;
.super Ljava/lang/Enum;
.source "BytesValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesValidator$IdenticalContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

.field public static final enum NONE_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

.field public static final enum NOT_ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

.field public static final enum ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 79
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    const-string v1, "ONLY_OF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    new-instance v1, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    const-string v3, "NONE_OF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NONE_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    new-instance v3, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    const-string v5, "NOT_ONLY_OF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NOT_ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    const/4 v5, 0x3

    new-array v5, v5, [Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 78
    sput-object v5, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->$VALUES:[Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;
    .locals 1

    .line 78
    const-class v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    return-object p0
.end method

.method public static values()[Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;
    .locals 1

    .line 78
    sget-object v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->$VALUES:[Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    invoke-virtual {v0}, [Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    return-object v0
.end method
