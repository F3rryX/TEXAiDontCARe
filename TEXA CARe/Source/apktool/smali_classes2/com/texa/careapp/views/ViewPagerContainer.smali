.class public Lcom/texa/careapp/views/ViewPagerContainer;
.super Landroid/widget/FrameLayout;
.source "ViewPagerContainer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private mCenter:Landroid/graphics/Point;

.field private mInitialTouch:Landroid/graphics/Point;

.field mNeedsRedraw:Z

.field private mPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mNeedsRedraw:Z

    .line 55
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    .line 56
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 22
    invoke-direct {p0}, Lcom/texa/careapp/views/ViewPagerContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mNeedsRedraw:Z

    .line 55
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    .line 56
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 27
    invoke-direct {p0}, Lcom/texa/careapp/views/ViewPagerContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mNeedsRedraw:Z

    .line 55
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    .line 56
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    .line 32
    invoke-direct {p0}, Lcom/texa/careapp/views/ViewPagerContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ViewPagerContainer;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ViewPagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 45
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 47
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    :goto_0
    iput-boolean p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mNeedsRedraw:Z

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 84
    iget-boolean p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mNeedsRedraw:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/views/ViewPagerContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 60
    iget-object p3, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    div-int/lit8 p1, p1, 0x2

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 61
    iget-object p1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mInitialTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/views/ViewPagerContainer;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
