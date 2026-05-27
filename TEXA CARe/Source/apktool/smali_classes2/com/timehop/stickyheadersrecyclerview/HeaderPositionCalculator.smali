.class public Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;
.super Ljava/lang/Object;
.source "HeaderPositionCalculator.java"


# instance fields
.field private final mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

.field private final mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

.field private final mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

.field private final mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    .line 33
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    .line 34
    iput-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    .line 35
    iput-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    .line 36
    iput-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    return-void
.end method

.method private getFirstViewUnobscuredByHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v0, p1}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ltz v0, :cond_3

    .line 200
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_3

    .line 201
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v4, p1}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v4

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->itemIsObscuredByHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getListLeft(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getListTop(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 248
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private indexOutOfBounds(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private initDefaultHeaderOffset(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p3}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 115
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v2

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 125
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    sub-int/2addr p5, v0

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    .line 126
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-direct {p0, p2}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getListTop(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p5, v2

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v1

    .line 131
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p4

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    invoke-direct {p0, p2}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getListLeft(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v3, p5

    move p5, p2

    move p2, v3

    .line 136
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p5, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private isStickyHeaderBeingPushedOffscreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 5

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v3, p1}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v3

    if-lez v1, :cond_2

    .line 148
    invoke-virtual {p0, v1, v3}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {v3, p1, v1}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 151
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p2}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 153
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v3, p1}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_2

    return v4

    .line 160
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 161
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_2

    return v4

    :cond_2
    return v2
.end method

.method private itemIsObscuredByHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 4

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 221
    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p3}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 223
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {v3, p1, v1}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p4, p1, :cond_1

    .line 231
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget p4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p2, p4

    .line 232
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p4

    if-le p2, p3, :cond_2

    return v2

    .line 237
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iget p4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p2, p4

    .line 238
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    if-le p2, p3, :cond_2

    return v2

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method private translateHeaderWithNextHeader(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p6}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p4}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getListTop(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    .line 177
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result p5

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    sub-int/2addr p2, p1

    if-ge p2, p1, :cond_1

    .line 179
    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getListLeft(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    .line 183
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result p5

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p5

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    sub-int/2addr p2, p1

    if-ge p2, p1, :cond_1

    .line 185
    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNewHeader(IZ)Z
    .locals 8

    .line 74
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    :goto_0
    add-int/2addr v6, p1

    .line 86
    invoke-direct {p0, v6}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 87
    iget-object v4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {v4, v6}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    :cond_3
    if-eqz p2, :cond_4

    .line 89
    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {p2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eq p1, p2, :cond_5

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public hasStickyHeader(Landroid/view/View;II)Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 55
    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 58
    iget-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    if-gt p1, p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mAdapter:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    invoke-interface {p1, p3}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public initHeaderBounds(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {v0, p2}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 100
    invoke-direct/range {v1 .. v6}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->initDefaultHeaderOffset(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V

    if-eqz p5, :cond_0

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->isStickyHeaderBeingPushedOffscreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 104
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 105
    iget-object p5, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mHeaderProvider:Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;

    invoke-interface {p5, p2, p4}, Lcom/timehop/stickyheadersrecyclerview/caching/HeaderProvider;->getHeader(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v6

    .line 106
    iget-object p4, p0, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {p4, p2}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v2

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/timehop/stickyheadersrecyclerview/HeaderPositionCalculator;->translateHeaderWithNextHeader(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method
