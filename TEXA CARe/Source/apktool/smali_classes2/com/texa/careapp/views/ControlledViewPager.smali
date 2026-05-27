.class public Lcom/texa/careapp/views/ControlledViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ControlledViewPager.java"


# instance fields
.field private canScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/texa/careapp/views/ControlledViewPager;->canScroll:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/texa/careapp/views/ControlledViewPager;->canScroll:Z

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/texa/careapp/views/ControlledViewPager;->canScroll:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/texa/careapp/views/ControlledViewPager;->canScroll:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public setCanScroll(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/texa/careapp/views/ControlledViewPager;->canScroll:Z

    return-void
.end method
