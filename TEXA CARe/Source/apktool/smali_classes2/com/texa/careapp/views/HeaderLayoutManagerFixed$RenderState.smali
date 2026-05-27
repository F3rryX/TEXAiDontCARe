.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#RenderState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mItemDirection:I

.field mLayoutDirection:I

.field mOffset:I

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1389
    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    const/4 v0, 0x0

    .line 1395
    iput-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;)V
    .locals 0

    .line 1334
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;-><init>()V

    return-void
.end method

.method private nextFromLimitedList()Landroid/view/View;
    .locals 8

    .line 1427
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1431
    iget-object v5, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1432
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    mul-int v6, v6, v7

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    if-ge v6, v2, :cond_2

    move-object v4, v5

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    move v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1446
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 1447
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_4
    return-object v1
.end method


# virtual methods
.method hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 1

    .line 1401
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->nextFromLimitedList()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1414
    :cond_0
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1415
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    iget v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    return-object p1
.end method
