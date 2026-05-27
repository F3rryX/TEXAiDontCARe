.class public final Lat/favre/lib/bytes/BytesValidators;
.super Ljava/lang/Object;
.source "BytesValidators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Lat/favre/lib/bytes/BytesValidator;)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 134
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Logical;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->AND:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Logical;-><init>(Ljava/util/List;Lat/favre/lib/bytes/BytesValidator$Logical$Operator;)V

    return-object v0
.end method

.method public static atLeast(I)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 43
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Length;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Length$Mode;->GREATER_OR_EQ_THAN:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Length;-><init>(ILat/favre/lib/bytes/BytesValidator$Length$Mode;)V

    return-object v0
.end method

.method public static atMost(I)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 53
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Length;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Length$Mode;->SMALLER_OR_EQ_THAN:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Length;-><init>(ILat/favre/lib/bytes/BytesValidator$Length$Mode;)V

    return-object v0
.end method

.method public static varargs endsWith([B)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 103
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lat/favre/lib/bytes/BytesValidator$PrePostFix;-><init>(Z[B)V

    return-object v0
.end method

.method public static exactLength(I)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 63
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Length;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Length$Mode;->EXACT:Lat/favre/lib/bytes/BytesValidator$Length$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Length;-><init>(ILat/favre/lib/bytes/BytesValidator$Length$Mode;)V

    return-object v0
.end method

.method public static noneOf(B)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 113
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NONE_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;-><init>(BLat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;)V

    return-object v0
.end method

.method public static not(Lat/favre/lib/bytes/BytesValidator;)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 144
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Logical;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->NOT:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Logical;-><init>(Ljava/util/List;Lat/favre/lib/bytes/BytesValidator$Logical$Operator;)V

    return-object v0
.end method

.method public static notOnlyOf(B)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 83
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->NOT_ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;-><init>(BLat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;)V

    return-object v0
.end method

.method public static onlyOf(B)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 73
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;->ONLY_OF:Lat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$IdenticalContent;-><init>(BLat/favre/lib/bytes/BytesValidator$IdenticalContent$Mode;)V

    return-object v0
.end method

.method public static varargs or([Lat/favre/lib/bytes/BytesValidator;)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 124
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$Logical;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->OR:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-direct {v0, p0, v1}, Lat/favre/lib/bytes/BytesValidator$Logical;-><init>(Ljava/util/List;Lat/favre/lib/bytes/BytesValidator$Logical$Operator;)V

    return-object v0
.end method

.method public static varargs startsWith([B)Lat/favre/lib/bytes/BytesValidator;
    .locals 2

    .line 93
    new-instance v0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lat/favre/lib/bytes/BytesValidator$PrePostFix;-><init>(Z[B)V

    return-object v0
.end method
