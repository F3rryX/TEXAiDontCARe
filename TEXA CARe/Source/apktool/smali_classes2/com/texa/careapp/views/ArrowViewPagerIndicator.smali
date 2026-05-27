.class public Lcom/texa/careapp/views/ArrowViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "ArrowViewPagerIndicator.java"


# instance fields
.field private mLeftArrow:Landroid/widget/ImageView;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mViewPager:Lcom/texa/careapp/views/ControlledViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private arrange()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->setParams()V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->removeViewAt(I)V

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 101
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->handleVisibility()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->setOrientation(I)V

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    const p1, 0x7f0800d4

    const v0, 0x7f0800d5

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->setArrowIndicatorRes(II)V

    return-void
.end method

.method private isFirstPage()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ControlledViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastPage()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ControlledViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v1}, Lcom/texa/careapp/views/ControlledViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private setParams()V
    .locals 1

    const/16 v0, 0x10

    .line 44
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/texa/careapp/views/ControlledViewPager;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    .line 50
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/texa/careapp/views/ArrowViewPagerIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/ArrowViewPagerIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    new-instance v0, Lcom/texa/careapp/views/ArrowViewPagerIndicator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/ArrowViewPagerIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    new-instance v0, Lcom/texa/careapp/views/ArrowViewPagerIndicator$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator$1;-><init>(Lcom/texa/careapp/views/ArrowViewPagerIndicator;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/ControlledViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 79
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->arrange()V

    return-void
.end method

.method public handleVisibility()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->isFirstPage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ControlledViewPager;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_1
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ControlledViewPager;->canScroll()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public synthetic lambda$bind$0$com-texa-careapp-views-ArrowViewPagerIndicator(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->isFirstPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {p1}, Lcom/texa/careapp/views/ControlledViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/views/ControlledViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$bind$1$com-texa-careapp-views-ArrowViewPagerIndicator(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->isLastPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {p1}, Lcom/texa/careapp/views/ControlledViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/views/ControlledViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setArrowIndicatorRes(II)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
