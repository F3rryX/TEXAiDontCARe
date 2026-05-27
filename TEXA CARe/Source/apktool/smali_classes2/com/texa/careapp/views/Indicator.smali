.class public abstract Lcom/texa/careapp/views/Indicator;
.super Landroid/graphics/drawable/Drawable;
.source "Indicator.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field protected drawBounds:Landroid/graphics/Rect;

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAnimators:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mUpdateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/texa/careapp/views/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    const/16 v0, 0xff

    .line 27
    iput v0, p0, Lcom/texa/careapp/views/Indicator;->alpha:I

    .line 29
    sget-object v0, Lcom/texa/careapp/views/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private ensureAnimators()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/texa/careapp/views/Indicator;->mHasAnimators:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/texa/careapp/views/Indicator;->onCreateAnimators()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/texa/careapp/views/Indicator;->mHasAnimators:Z

    :cond_0
    return-void
.end method

.method private isStarted()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 134
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startAnimators()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 100
    iget-object v2, p0, Lcom/texa/careapp/views/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private stopAnimators()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 114
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public centerX()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public centerY()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/views/Indicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public exactCenterX()F
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    return v0
.end method

.method public exactCenterY()F
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/texa/careapp/views/Indicator;->alpha:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/Indicator;->setDrawBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract onCreateAnimators()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public postInvalidate()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/texa/careapp/views/Indicator;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/texa/careapp/views/Indicator;->alpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 1

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/texa/careapp/views/Indicator;->drawBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 164
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/texa/careapp/views/Indicator;->setDrawBounds(IIII)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/texa/careapp/views/Indicator;->ensureAnimators()V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/views/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/views/Indicator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/views/Indicator;->startAnimators()V

    .line 91
    invoke-virtual {p0}, Lcom/texa/careapp/views/Indicator;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/texa/careapp/views/Indicator;->stopAnimators()V

    return-void
.end method
