.class public final Lat/favre/lib/bytes/BytesValidator$Logical;
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
    name = "Logical"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/bytes/BytesValidator$Logical$Operator;
    }
.end annotation


# instance fields
.field private final operator:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

.field private final validatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/favre/lib/bytes/BytesValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lat/favre/lib/bytes/BytesValidator$Logical$Operator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lat/favre/lib/bytes/BytesValidator;",
            ">;",
            "Lat/favre/lib/bytes/BytesValidator$Logical$Operator;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    sget-object v0, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->NOT:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not operator can only be applied to single element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1
    :goto_0
    iput-object p1, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->validatorList:Ljava/util/List;

    .line 155
    iput-object p2, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->operator:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    return-void

    .line 151
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "must contain at least 1 element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public validate([B)Z
    .locals 6

    .line 160
    iget-object v0, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->operator:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->NOT:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->validatorList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/favre/lib/bytes/BytesValidator;

    invoke-interface {v0, p1}, Lat/favre/lib/bytes/BytesValidator;->validate([B)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->operator:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    sget-object v1, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->OR:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    .line 165
    :cond_1
    iget-object v0, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->validatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/favre/lib/bytes/BytesValidator;

    .line 166
    sget-object v4, Lat/favre/lib/bytes/BytesValidator$1;->$SwitchMap$at$favre$lib$bytes$BytesValidator$Logical$Operator:[I

    iget-object v5, p0, Lat/favre/lib/bytes/BytesValidator$Logical;->operator:Lat/favre/lib/bytes/BytesValidator$Logical$Operator;

    invoke-virtual {v5}, Lat/favre/lib/bytes/BytesValidator$Logical$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_2

    .line 172
    invoke-interface {v1, p1}, Lat/favre/lib/bytes/BytesValidator;->validate([B)Z

    move-result v1

    or-int/2addr v1, v2

    goto :goto_1

    .line 168
    :cond_2
    invoke-interface {v1, p1}, Lat/favre/lib/bytes/BytesValidator;->validate([B)Z

    move-result v1

    and-int/2addr v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    return v2
.end method
