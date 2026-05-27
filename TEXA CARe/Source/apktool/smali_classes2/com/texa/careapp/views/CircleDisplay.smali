.class public Lcom/texa/careapp/views/CircleDisplay;
.super Landroid/view/View;
.source "CircleDisplay.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/CircleDisplay$Utils;,
        Lcom/texa/careapp/views/CircleDisplay$SelectionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CircleDisplay"

.field public static final PAINT_ARC:I = 0x2

.field public static final PAINT_INNER:I = 0x3

.field public static final PAINT_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CircleDisplay"


# instance fields
.field private attributeSet:Landroid/util/AttributeSet;

.field private mAngle:F

.field private mArcPaint:Landroid/graphics/Paint;

.field private mBoxSetup:Z

.field private mCircleBox:Landroid/graphics/RectF;

.field private mCustomText:Ljava/lang/String;

.field private mDimAlpha:I

.field private mDrawAnimator:Landroid/animation/ObjectAnimator;

.field private mDrawText:Z

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mFormatValue:Ljava/text/DecimalFormat;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageResId:I

.field private mListener:Lcom/texa/careapp/views/CircleDisplay$SelectionListener;

.field private mMaxValue:F

.field private mPhase:F

.field private mStartAngle:F

.field private mStepSize:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTouchEnabled:Z

.field private mUnit:Ljava/lang/String;

.field private mValue:F

.field private mValueArcColor:I

.field private mValueWidthPercent:F

.field private mWholeCircleColor:I

.field private textDimension:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "%"

    .line 53
    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 v0, 0x43870000    # 270.0f

    .line 57
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStartAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    .line 70
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 77
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    .line 81
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 85
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueWidthPercent:F

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    .line 93
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTouchEnabled:Z

    const/16 v0, 0x50

    .line 97
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDimAlpha:I

    .line 101
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###,##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    .line 142
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "%"

    .line 53
    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 v0, 0x43870000    # 270.0f

    .line 57
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStartAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    .line 70
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 77
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    .line 81
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 85
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueWidthPercent:F

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    .line 93
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTouchEnabled:Z

    const/16 v0, 0x50

    .line 97
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDimAlpha:I

    .line 101
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###,##0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    .line 147
    iput-object p2, p0, Lcom/texa/careapp/views/CircleDisplay;->attributeSet:Landroid/util/AttributeSet;

    .line 148
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "%"

    .line 53
    iput-object p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 p3, 0x43870000    # 270.0f

    .line 57
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mStartAngle:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 62
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    const/4 p3, 0x0

    .line 66
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    .line 70
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 77
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    .line 81
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    const/high16 p3, 0x42480000    # 50.0f

    .line 85
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueWidthPercent:F

    const/4 p3, 0x1

    .line 89
    iput-boolean p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    .line 93
    iput-boolean p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mTouchEnabled:Z

    const/16 p3, 0x50

    .line 97
    iput p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mDimAlpha:I

    .line 101
    new-instance p3, Ljava/text/DecimalFormat;

    const-string v0, "###,###,###,##0.0"

    invoke-direct {p3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 p3, 0x0

    .line 105
    iput-object p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    .line 110
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 p3, 0x0

    .line 123
    iput-boolean p3, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    .line 153
    iput-object p2, p0, Lcom/texa/careapp/views/CircleDisplay;->attributeSet:Landroid/util/AttributeSet;

    .line 154
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcAngle(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    return p1
.end method

.method private drawBitmap(Landroid/graphics/Canvas;)V
    .locals 7

    .line 250
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 251
    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mImageResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getWidth()I

    move-result v1

    .line 254
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getHeight()I

    move-result v2

    .line 255
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getRadius()F

    move-result v3

    .line 256
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 257
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 258
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v4, v1, v3

    .line 259
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v5, v2, v3

    add-float/2addr v1, v3

    add-float/2addr v2, v3

    .line 263
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    iget-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawablePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCustomText(Landroid/graphics/Canvas;)V
    .locals 11

    .line 290
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 291
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 293
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v5, v1

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    .line 294
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    invoke-virtual {v10, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 6

    .line 271
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 272
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    .line 275
    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 277
    iget v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    iget v4, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    iget v5, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 281
    iget-object v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    const-string v3, "-"

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    mul-float v5, v0, v1

    .line 338
    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    iget v4, p0, Lcom/texa/careapp/views/CircleDisplay;->mStartAngle:F

    iget-object v7, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWholeCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mWholeCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getRadius()F

    move-result v0

    .line 326
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    .line 171
    invoke-static {p1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mWholeCircleColor:I

    .line 173
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    .line 174
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    const/16 v5, 0xff

    const/16 v6, 0x8c

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x7f0600c4

    .line 177
    invoke-static {p1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x0

    .line 182
    :try_start_0
    iget-object v5, p0, Lcom/texa/careapp/views/CircleDisplay;->attributeSet:Landroid/util/AttributeSet;

    sget-object v6, Lcom/texa/careapp/R$styleable;->CircleDisplay:[I

    invoke-virtual {p1, v5, v6, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x2

    .line 184
    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v6, 0x3

    const v7, 0x7f07006a

    .line 185
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/texa/careapp/views/CircleDisplay;->textDimension:F

    .line 187
    iget-object v6, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const v7, 0x7f070053

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mWholeCircleColor:I

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mWholeCircleColor:I

    const/4 v1, 0x4

    const/4 v6, -0x1

    .line 191
    invoke-virtual {v4, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    .line 202
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 204
    iget-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 205
    iget-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/texa/careapp/views/CircleDisplay;->textDimension:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    const v1, 0x7f090001

    .line 207
    invoke-static {p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 208
    iget-object v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawablePaint:Landroid/graphics/Paint;

    new-array p1, v5, [F

    .line 212
    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    aput v1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, v3

    const-string v0, "phase"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawAnimator:Landroid/animation/ObjectAnimator;

    .line 213
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    :cond_1
    throw p1
.end method

.method private setupBox()V
    .locals 6

    .line 349
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getWidth()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getHeight()I

    move-result v1

    .line 352
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getDiameter()F

    move-result v2

    .line 354
    new-instance v3, Landroid/graphics/RectF;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v0, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v5, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/texa/careapp/views/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    return-void
.end method

.method private updateValue(FF)V
    .locals 2

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->getAngleForPoint(FF)F

    move-result p1

    .line 595
    iget p2, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    mul-float p2, p2, p1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p2, v0

    .line 598
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 599
    iput p2, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    .line 600
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    return-void

    :cond_0
    rem-float p1, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_1
    sub-float/2addr p2, p1

    add-float/2addr p2, v0

    .line 615
    :goto_0
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/CircleDisplay;->getAngleForValue(F)F

    move-result p1

    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    .line 616
    iput p2, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    return-void
.end method


# virtual methods
.method public distanceToCenter(FF)F
    .locals 4

    .line 686
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 690
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 691
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    goto :goto_0

    .line 693
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p1, v1, p1

    .line 696
    :goto_0
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 697
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    goto :goto_1

    .line 699
    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float p2, v0, p2

    :goto_1
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 704
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getAngleForPoint(FF)F
    .locals 7

    .line 646
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 648
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    float-to-double v1, v1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v3

    float-to-double v3, p2

    mul-double v1, v1, v1

    mul-double v5, v3, v3

    add-double/2addr v1, v5

    .line 649
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 650
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 652
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p2, v1

    .line 654
    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sub-float p2, v1, p2

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    add-float/2addr p2, p1

    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    return p2
.end method

.method public getAngleForValue(F)F
    .locals 1

    .line 670
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 557
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getDiameter()F
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 735
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .line 436
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getDiameter()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 539
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 389
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    return v0
.end method

.method public getValueForAngle(F)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    .line 677
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    mul-float p1, p1, v0

    return p1
.end method

.method public isDrawTextEnabled()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTouchEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    iget-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mBoxSetup:Z

    .line 224
    invoke-direct {p0}, Lcom/texa/careapp/views/CircleDisplay;->setupBox()V

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->drawWholeCircle(Landroid/graphics/Canvas;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->drawValue(Landroid/graphics/Canvas;)V

    .line 234
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mImageResId:I

    if-lez v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->drawBitmap(Landroid/graphics/Canvas;)V

    .line 238
    :cond_1
    iget-boolean v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 240
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->drawCustomText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->drawText(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->distanceToCenter(FF)F

    move-result v0

    .line 624
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getRadius()F

    move-result v1

    .line 628
    iget v2, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueWidthPercent:F

    mul-float v2, v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/views/CircleDisplay;->updateValue(FF)V

    .line 631
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->invalidate()V

    .line 633
    iget-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mListener:Lcom/texa/careapp/views/CircleDisplay$SelectionListener;

    if-eqz p1, :cond_0

    .line 634
    iget v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    iget v1, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    invoke-interface {p1, v0, v1}, Lcom/texa/careapp/views/CircleDisplay$SelectionListener;->onValueSelected(FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAnimDuration(I)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setArcPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setBlurred(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41000000    # 8.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    return-void
.end method

.method public setCirclePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 532
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/CircleDisplay;->setArcPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueArcColor:I

    return-void
.end method

.method public setCustomText(Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mCustomText:Ljava/lang/String;

    return-void
.end method

.method public setDimAlpha(I)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mDimAlpha:I

    return-void
.end method

.method public setDrawText(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawText:Z

    return-void
.end method

.method public setFormatDigits(I)V
    .locals 3

    .line 505
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    if-nez v1, :cond_0

    const-string v2, "."

    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "0"

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_1
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###,###,###,##0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setImageResId(I)V
    .locals 0

    .line 739
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mImageResId:I

    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 444
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->invalidate()V

    return-void
.end method

.method public setSelectionListener(Lcom/texa/careapp/views/CircleDisplay$SelectionListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mListener:Lcom/texa/careapp/views/CircleDisplay$SelectionListener;

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mStartAngle:F

    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mStepSize:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setTextDimension(F)V
    .locals 1

    .line 469
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->textDimension:F

    .line 470
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setTextPaint(Landroid/text/TextPaint;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/texa/careapp/views/CircleDisplay$Utils;->convertDpToPixel(Landroid/content/res/Resources;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 574
    iput-boolean p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mTouchEnabled:Z

    return-void
.end method

.method public setTypeface(I)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mUnit:Ljava/lang/String;

    return-void
.end method

.method public setValueWidthPercent(F)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mValueWidthPercent:F

    return-void
.end method

.method public setWholeCircleColor(I)V
    .locals 0

    .line 474
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mWholeCircleColor:I

    return-void
.end method

.method public showValue(FFZ)V
    .locals 2

    div-float v0, p1, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 363
    invoke-direct {p0, v0}, Lcom/texa/careapp/views/CircleDisplay;->calcAngle(F)F

    move-result v0

    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mAngle:F

    .line 364
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mValue:F

    .line 365
    iput p2, p0, Lcom/texa/careapp/views/CircleDisplay;->mMaxValue:F

    if-eqz p3, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->startAnim()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 370
    iput p1, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 371
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleDisplay;->invalidate()V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mPhase:F

    .line 394
    iget-object v0, p0, Lcom/texa/careapp/views/CircleDisplay;->mDrawAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
