.class final enum Lat/favre/lib/bytes/BytesValidator$Logical$Operator;
.super Ljava/lang/Enum;
.source "BytesValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesValidator$Logical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/favre/lib/bytes/BytesValidator$Logical$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

.field public static final enum AND:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

.field public static final enum NOT:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

.field public static final enum OR:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 142
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    const-string v1, "OR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->OR:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    new-instance v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    const-string v3, "AND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->AND:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    new-instance v3, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    const-string v5, "NOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->NOT:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    const/4 v5, 0x3

    new-array v5, v5, [Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 141
    sput-object v5, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->$VALUES:[Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/favre/lib/bytes/BytesValidator$Logical$Operator;
    .locals 1

    .line 141
    const-class v0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    return-object p0
.end method

.method public static values()[Lat/favre/lib/bytes/BytesValidator$Logical$Operator;
    .locals 1

    .line 141
    sget-object v0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->$VALUES:[Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-virtual {v0}, [Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    return-object v0
.end method
