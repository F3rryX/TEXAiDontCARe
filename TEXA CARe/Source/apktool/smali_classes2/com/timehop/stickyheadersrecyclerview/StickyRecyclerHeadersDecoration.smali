.class public Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StickyRecyclerHeadersDecoration.java"


# instance fields
.field private final mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

.field private final mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

.field private final mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

.field private final mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

.field private final mHeaderRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

.field private final mRenderer:Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/timehop/stickyheadersrecyclerview/util/LinearLayoutOrientationProvider;

    invoke-direct {v0}, Lcom/timehop/stickyheadersrecyclerview/util/LinearLayoutOrientationProvider;-><init>()V

    new-instance v1, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    invoke-direct {v1}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V

    return-void
.end method

.method private constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    .line 55
    iput-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    .line 56
    iput-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    .line 57
    iput-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mRenderer:Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;

    .line 58
    iput-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    .line 59
    iput-object p6, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    return-void
.end method

.method private constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V
    .locals 6

    .line 40
    new-instance v4, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;

    invoke-direct {v4, p2}, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;-><init>(Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;)V

    new-instance v5, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;

    invoke-direct {v5, p1, p2}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderViewCache;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;)V

    return-void
.end method

.method private constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;)V
    .locals 7

    .line 46
    new-instance v6, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    invoke-direct {v6, p1, p5, p2, p3}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;)V

    return-void
.end method

.method private setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method


# virtual methods
.method public findHeaderPositionUnder(II)I
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 132
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getHeaderView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {v0, p1, p2}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 65
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v0, p3}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    invoke-virtual {p4, p2, v0}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 70
    invoke-virtual {p0, p3, p2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->getHeaderView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object p2

    .line 71
    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {p4, p3}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public invalidateHeaders()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {v0}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->invalidate()V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 95
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    if-lez p3, :cond_5

    .line 96
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    .line 101
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 102
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v3, p2}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v1}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->hasStickyHeader(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v3, p2}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {v2, p2, v1}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v7

    .line 111
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 113
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 114
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    move-object v8, v2

    .line 116
    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;

    move-object v2, v8

    move-object v3, p2

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->initHeaderBounds(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)V

    .line 117
    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->mRenderer:Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;

    invoke-virtual {v1, p2, p1, v7, v8}, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->drawHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
