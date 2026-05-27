.class public final Lcom/texa/carelib/core/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lower must not be null"

    .line 40
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upper must not be null"

    .line 41
    invoke-static {p2, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    .line 44
    iput-object p2, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    .line 46
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lower must be less than or equal to upper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/texa/carelib/core/Range;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/core/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 167
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    return-object p1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    :cond_1
    return-object p1
.end method

.method public contains(Lcom/texa/carelib/core/Range;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 125
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object p1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 105
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Lcom/texa/carelib/core/Range;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 147
    check-cast p1, Lcom/texa/carelib/core/Range;

    .line 148
    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    iget-object p1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public extend(Lcom/texa/carelib/core/Range;)Lcom/texa/carelib/core/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Range must not be null"

    .line 269
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 272
    iget-object v1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p1

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p0

    :cond_1
    if-ltz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    :goto_0
    if-gtz v1, :cond_3

    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    :goto_1
    invoke-static {v0, p1}, Lcom/texa/carelib/core/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;

    move-result-object p1

    return-object p1
.end method

.method public extend(Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 330
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1, p1}, Lcom/texa/carelib/core/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;

    move-result-object p1

    return-object p1
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lower must not be null"

    .line 301
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upper must not be null"

    .line 302
    invoke-static {p2, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    .line 311
    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    :cond_1
    if-gtz v1, :cond_2

    iget-object p2, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    :cond_2
    invoke-static {p1, p2}, Lcom/texa/carelib/core/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;

    move-result-object p1

    return-object p1
.end method

.method public getLower()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 346
    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersect(Lcom/texa/carelib/core/Range;)Lcom/texa/carelib/core/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Range must not be null"

    .line 199
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 202
    iget-object v1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    if-gtz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    :goto_0
    if-ltz v1, :cond_3

    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    :goto_1
    invoke-static {v0, p1}, Lcom/texa/carelib/core/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/texa/carelib/core/Range<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lower must not be null"

    .line 232
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upper must not be null"

    .line 233
    invoke-static {p2, v0}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    :cond_1
    if-ltz v1, :cond_2

    iget-object p2, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    :cond_2
    invoke-static {p1, p2}, Lcom/texa/carelib/core/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/texa/carelib/core/Range;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/core/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
