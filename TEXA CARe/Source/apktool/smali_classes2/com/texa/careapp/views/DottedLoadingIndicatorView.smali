.class public Lcom/texa/careapp/views/DottedLoadingIndicatorView;
.super Landroid/view/View;
.source "DottedLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/texa/careapp/views/DottedIndicator;

.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/texa/careapp/views/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/texa/careapp/views/DottedIndicator;

    invoke-direct {v0}, Lcom/texa/careapp/views/DottedIndicator;-><init>()V

    sput-object v0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/texa/careapp/views/DottedIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    .line 43
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    .line 45
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 47
    new-instance v1, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 53
    new-instance v1, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    .line 43
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    .line 45
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 47
    new-instance v1, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 53
    new-instance v1, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const v1, 0x7f120102

    .line 78
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    .line 43
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    .line 45
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 47
    new-instance v0, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const v0, 0x7f120102

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/4 p4, 0x0

    .line 41
    iput-boolean p4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    .line 43
    iput-boolean p4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    .line 45
    iput-boolean p4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 47
    new-instance p4, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object p4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 53
    new-instance p4, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DottedLoadingIndicatorView;)V

    iput-object p4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const p4, 0x7f120102

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/16 v0, 0x18

    .line 93
    iput v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinWidth:I

    const/16 v1, 0x30

    .line 94
    iput v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxWidth:I

    .line 95
    iput v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinHeight:I

    .line 96
    iput v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxHeight:I

    .line 98
    sget-object v0, Lcom/texa/careapp/R$styleable;->DottedLoadingIndicatorView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    iget p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinWidth:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinWidth:I

    .line 102
    iget p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxWidth:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxWidth:I

    .line 103
    iget p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinHeight:I

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinHeight:I

    .line 104
    iget p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxHeight:I

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxHeight:I

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, -0x1

    .line 106
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicatorColor:I

    .line 107
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-nez p2, :cond_0

    .line 109
    sget-object p2, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/texa/careapp/views/DottedIndicator;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setIndicator(Lcom/texa/careapp/views/Indicator;)V

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 386
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 7

    .line 267
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 268
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 275
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {v0}, Lcom/texa/careapp/views/Indicator;->getIntrinsicWidth()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    invoke-virtual {v1}, Lcom/texa/careapp/views/Indicator;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    mul-float v2, v2, v0

    float-to-int v0, v2

    sub-int/2addr p1, v0

    .line 286
    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    move v4, p1

    move p1, v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    float-to-int v0, v1

    sub-int/2addr p2, v0

    .line 291
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v6, v0

    move v0, p2

    move p2, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 295
    :goto_1
    iget-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    invoke-virtual {v1, v4, v0, p1, p2}, Lcom/texa/careapp/views/Indicator;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/texa/careapp/views/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/views/Indicator;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 312
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 317
    iget-boolean p1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz p1, :cond_0

    .line 318
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 361
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 363
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/views/Indicator;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 347
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 348
    invoke-direct {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->updateDrawableState()V

    return-void
.end method

.method public getIndicator()Lcom/texa/careapp/views/Indicator;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    return-object v0
.end method

.method public hide()V
    .locals 10

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 176
    iget-object v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-boolean v3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v5, v1

    invoke-virtual {p0, v3, v5, v6}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 179
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 247
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 252
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->invalidate(IIII)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-views-DottedLoadingIndicatorView()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedHide:Z

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/16 v0, 0x8

    .line 50
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-views-DottedLoadingIndicatorView()V
    .locals 3

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    .line 55
    iget-boolean v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    .line 57
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 370
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 371
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->startAnimation()V

    .line 372
    invoke-direct {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->stopAnimation()V

    .line 380
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 381
    invoke-direct {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 301
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    iget v2, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinWidth:I

    iget v3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 332
    iget v3, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMinHeight:I

    iget v4, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 335
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->updateDrawableState()V

    .line 337
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 338
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 340
    invoke-static {v2, p1, v1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p1

    .line 341
    invoke-static {v0, p2, v1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 239
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->stopAnimation()V

    :goto_1
    return-void
.end method

.method public setIndicator(Lcom/texa/careapp/views/Indicator;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    .line 126
    iget v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setIndicatorColor(I)V

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, p0}, Lcom/texa/careapp/views/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 3

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".indicators"

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/Indicator;

    .line 154
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setIndicator(Lcom/texa/careapp/views/Indicator;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR"

    .line 158
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p1, "AVLoadingIndicatorView"

    const-string v0, "Didn\'t find your class , check the name again !"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 135
    iput p1, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicatorColor:I

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/Indicator;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 226
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 190
    iput-wide v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mStartTime:J

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDismissed:Z

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 193
    iget-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mPostedShow:Z

    :cond_0
    return-void
.end method

.method public smoothToHide()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 171
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public smoothToShow()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->setVisibility(I)V

    return-void
.end method

.method startAnimation()V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method stopAnimation()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/texa/careapp/views/Indicator;->stop()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/views/DottedLoadingIndicatorView;->mIndicator:Lcom/texa/careapp/views/Indicator;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
