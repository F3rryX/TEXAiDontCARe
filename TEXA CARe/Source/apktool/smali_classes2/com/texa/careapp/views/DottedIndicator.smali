.class Lcom/texa/careapp/views/DottedIndicator;
.super Lcom/texa/careapp/views/Indicator;
.source "DottedIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/DottedIndicator$Point;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0xff

.field private static final SCALE:F = 1.0f


# instance fields
.field private alphas:[I

.field private scaleFloats:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/texa/careapp/views/Indicator;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/texa/careapp/views/DottedIndicator;->scaleFloats:[F

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/texa/careapp/views/DottedIndicator;->alphas:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private circleAt(IIFD)Lcom/texa/careapp/views/DottedIndicator$Point;
    .locals 6

    .line 71
    div-int/lit8 p1, p1, 0x2

    int-to-double v0, p1

    float-to-double v2, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    double-to-float p1, v0

    .line 72
    div-int/lit8 p2, p2, 0x2

    int-to-double p2, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double v2, v2, p4

    add-double/2addr p2, v2

    double-to-float p2, p2

    .line 73
    new-instance p3, Lcom/texa/careapp/views/DottedIndicator$Point;

    invoke-direct {p3, p0, p1, p2}, Lcom/texa/careapp/views/DottedIndicator$Point;-><init>(Lcom/texa/careapp/views/DottedIndicator;FF)V

    return-object p3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v6, v2, v0

    int-to-double v2, v1

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double v7, v7, v2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/texa/careapp/views/DottedIndicator;->circleAt(IIFD)Lcom/texa/careapp/views/DottedIndicator$Point;

    move-result-object v2

    .line 32
    iget v3, v2, Lcom/texa/careapp/views/DottedIndicator$Point;->x:F

    iget v2, v2, Lcom/texa/careapp/views/DottedIndicator$Point;->y:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v2, p0, Lcom/texa/careapp/views/DottedIndicator;->scaleFloats:[F

    aget v3, v2, v1

    aget v2, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 34
    iget-object v2, p0, Lcom/texa/careapp/views/DottedIndicator;->alphas:[I

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateAnimators$0$com-texa-careapp-views-DottedIndicator(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/views/DottedIndicator;->scaleFloats:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 52
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->postInvalidate()V

    return-void
.end method

.method public synthetic lambda$onCreateAnimators$1$com-texa-careapp-views-DottedIndicator(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/views/DottedIndicator;->alphas:[I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, p1

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/views/DottedIndicator;->postInvalidate()V

    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 43
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    new-array v4, v3, [F

    .line 46
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    .line 47
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v7, -0x1

    .line 48
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    aget v8, v1, v2

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    new-instance v8, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v2}, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/DottedIndicator;I)V

    invoke-virtual {p0, v4, v8}, Lcom/texa/careapp/views/DottedIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v3, [I

    .line 55
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 58
    aget v5, v1, v2

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 59
    new-instance v5, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2}, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DottedIndicator;I)V

    invoke-virtual {p0, v3, v5}, Lcom/texa/careapp/views/DottedIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x78
        0xf0
        0x168
        0x1e0
        0x258
        0x2d0
        0x30c
        0x348
        0x3c0
        0x438
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x4d
        0xff
    .end array-data
.end method
