.class public Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;
.super Ljava/lang/Object;
.source "HeaderViewCache.java"

# interfaces
.implements Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;


# instance fields
.field private final mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

.field private final mHeaderViews:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;


# direct methods
.method public constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mHeaderViews:Landroidx/collection/LongSparseArray;

    .line 23
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    .line 24
    iput-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    return-void
.end method


# virtual methods
.method public getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0, p2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mHeaderViews:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v2, p1}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v3, v2, p2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 36
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    .line 38
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {p2, p1}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-ne p2, v3, :cond_1

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v4, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 57
    invoke-virtual {v2, p2, p1}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v2, v5, v5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 59
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mHeaderViews:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-object v2
.end method

.method public invalidate()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;->mHeaderViews:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method
