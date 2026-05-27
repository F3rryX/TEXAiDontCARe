.class public Lcom/texa/carelib/core/CounterInfo;
.super Ljava/lang/Object;
.source "CounterInfo.java"


# instance fields
.field private final mRange:Lcom/texa/carelib/core/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:I


# direct methods
.method public constructor <init>(Lcom/texa/carelib/core/Range;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/core/CounterInfo;->mRange:Lcom/texa/carelib/core/Range;

    .line 23
    iput p2, p0, Lcom/texa/carelib/core/CounterInfo;->mValue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/texa/carelib/core/CounterInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 45
    :cond_1
    check-cast p1, Lcom/texa/carelib/core/CounterInfo;

    .line 47
    iget v0, p0, Lcom/texa/carelib/core/CounterInfo;->mValue:I

    iget v2, p1, Lcom/texa/carelib/core/CounterInfo;->mValue:I

    if-eq v0, v2, :cond_2

    return v1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/core/CounterInfo;->mRange:Lcom/texa/carelib/core/Range;

    iget-object p1, p1, Lcom/texa/carelib/core/CounterInfo;->mRange:Lcom/texa/carelib/core/Range;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRange()Lcom/texa/carelib/core/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/texa/carelib/core/CounterInfo;->mRange:Lcom/texa/carelib/core/Range;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/texa/carelib/core/CounterInfo;->mValue:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/texa/carelib/core/CounterInfo;->mRange:Lcom/texa/carelib/core/Range;

    invoke-virtual {v0}, Lcom/texa/carelib/core/Range;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget v1, p0, Lcom/texa/carelib/core/CounterInfo;->mValue:I

    add-int/2addr v0, v1

    return v0
.end method
