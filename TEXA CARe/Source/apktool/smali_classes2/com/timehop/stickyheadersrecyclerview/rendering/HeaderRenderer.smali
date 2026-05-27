.class public Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;
.super Ljava/lang/Object;
.source "HeaderRenderer.java"


# instance fields
.field private final mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

.field private final mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    invoke-direct {v0}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;-><init>(Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V

    return-void
.end method

.method private constructor <init>(Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    .line 32
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    .line 33
    iput-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    return-void
.end method

.method private initClipRectForHeader(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mDimensionCalculator:Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;

    invoke-virtual {v0, p1, p3}, Lcom/timehop/stickyheadersrecyclerview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 73
    iget-object p3, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mOrientationProvider:Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;

    invoke-interface {p3, p2}, Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;->getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 74
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v2, p2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v2, p2

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drawHeader(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p3}, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->initClipRectForHeader(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 54
    :cond_0
    iget p1, p4, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p2, p1, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    invoke-virtual {p3, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
