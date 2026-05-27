.class public Lcom/texa/careapp/utils/UniqueList;
.super Ljava/util/ArrayList;
.source "UniqueList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/UniqueList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/UniqueList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/utils/UniqueList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nullSafeGet(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/texa/careapp/utils/UniqueList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/utils/UniqueList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/UniqueList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
