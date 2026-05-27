.class public Lcom/texa/careapp/views/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/CirclePageIndicator$Mode;,
        Lcom/texa/careapp/views/CirclePageIndicator$Gravity;
    }
.end annotation


# instance fields
.field private mCurItemPosition:I

.field private mCurItemPositionOffset:F

.field private mIndicatorBackground:I

.field private mIndicatorLayoutGravity:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

.field private mIndicatorMargin:F

.field private mIndicatorMode:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

.field private mIndicatorRadius:F

.field private mIndicatorSelectedBackground:I

.field private movingItem:Lcom/texa/careapp/utils/ShapeHolder;

.field private tabItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/utils/ShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/views/CirclePageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/views/CirclePageIndicator;)Lcom/texa/careapp/views/CirclePageIndicator$Mode;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMode:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/views/CirclePageIndicator;IF)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->trigger(IF)V

    return-void
.end method

.method private createMovingItem()V
    .locals 4

    .line 143
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 144
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    new-instance v0, Lcom/texa/careapp/utils/ShapeHolder;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    iput-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorSelectedBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    sget-object v2, Lcom/texa/careapp/views/CirclePageIndicator$2;->$SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode:[I

    iget-object v3, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMode:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v3}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 155
    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 152
    :cond_2
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method private createTabItems()V
    .locals 4

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 129
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 130
    new-instance v1, Lcom/texa/careapp/utils/ShapeHolder;

    invoke-direct {v1, v2}, Lcom/texa/careapp/utils/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 131
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 132
    iget v3, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorBackground:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 135
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget v3, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorSelectedBackground:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 138
    iget-object v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/texa/careapp/R$styleable;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/16 v0, 0xa

    .line 77
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    const/4 p2, 0x2

    const/16 v0, 0x28

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMargin:F

    const/4 p2, 0x0

    const v0, -0xffff01

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorBackground:I

    const/4 p2, 0x5

    const/high16 v0, -0x10000

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorSelectedBackground:I

    const/4 p2, 0x1

    .line 81
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->CENTER:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    invoke-virtual {v0}, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->ordinal()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 82
    invoke-static {}, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->values()[Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    move-result-object v0

    aget-object p2, v0, p2

    iput-object p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorLayoutGravity:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const/4 p2, 0x3

    .line 83
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v0}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 84
    invoke-static {}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->values()[Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    move-result-object v0

    aget-object p2, v0, p2

    iput-object p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMode:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private layoutMovingItem(IF)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/utils/ShapeHolder;

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/ShapeHolder;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/ShapeHolder;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ShapeHolder;->resizeShape(FF)V

    .line 209
    invoke-virtual {p1}, Lcom/texa/careapp/utils/ShapeHolder;->getX()F

    move-result v0

    iget v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMargin:F

    iget v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 210
    iget-object p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {p2, v0}, Lcom/texa/careapp/utils/ShapeHolder;->setX(F)V

    .line 211
    iget-object p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/ShapeHolder;->getY()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/utils/ShapeHolder;->setY(F)V

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "forget to create movingItem?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private layoutTabItems(II)V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    if-eqz v0, :cond_1

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    .line 179
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/CirclePageIndicator;->startDrawPosition(I)F

    move-result p1

    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/ShapeHolder;

    .line 182
    iget v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v4, v2}, Lcom/texa/careapp/utils/ShapeHolder;->resizeShape(FF)V

    .line 183
    iget v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/ShapeHolder;->setY(F)V

    .line 184
    iget v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMargin:F

    iget v4, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    int-to-float v3, v0

    mul-float v2, v2, v3

    add-float/2addr v2, p1

    .line 185
    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/ShapeHolder;->setX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "forget to create tabItems?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setUpListener()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/texa/careapp/views/CirclePageIndicator$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/views/CirclePageIndicator$1;-><init>(Lcom/texa/careapp/views/CirclePageIndicator;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private startDrawPosition(I)F
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorLayoutGravity:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    sget-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->LEFT:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    iget v4, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMargin:F

    add-float/2addr v1, v4

    mul-float v0, v0, v1

    sub-float/2addr v0, v4

    int-to-float p1, p1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    return v2

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorLayoutGravity:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    sget-object v2, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->CENTER:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    if-ne v1, v2, :cond_2

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    return p1

    :cond_2
    sub-float/2addr p1, v0

    return p1
.end method

.method private trigger(IF)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mCurItemPosition:I

    .line 121
    iput p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mCurItemPositionOffset:F

    .line 122
    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->requestLayout()V

    .line 123
    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->tabItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/utils/ShapeHolder;

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    invoke-virtual {v2}, Lcom/texa/careapp/utils/ShapeHolder;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ShapeHolder;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    invoke-virtual {v2}, Lcom/texa/careapp/utils/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/ShapeHolder;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    iget-object v1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->movingItem:Lcom/texa/careapp/utils/ShapeHolder;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 167
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 168
    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->getWidth()I

    move-result p1

    .line 169
    invoke-virtual {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->getHeight()I

    move-result p2

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->layoutTabItems(II)V

    .line 171
    iget p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mCurItemPosition:I

    iget p2, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mCurItemPositionOffset:F

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->layoutMovingItem(IF)V

    return-void
.end method

.method public setIndicatorBackground(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorBackground:I

    return-void
.end method

.method public setIndicatorLayoutGravity(Lcom/texa/careapp/views/CirclePageIndicator$Gravity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorLayoutGravity:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    return-void
.end method

.method public setIndicatorMargin(F)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMargin:F

    return-void
.end method

.method public setIndicatorMode(Lcom/texa/careapp/views/CirclePageIndicator$Mode;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorMode:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    return-void
.end method

.method public setIndicatorRadius(F)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorRadius:F

    return-void
.end method

.method public setIndicatorSelectedBackground(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->mIndicatorSelectedBackground:I

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/views/CirclePageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 90
    invoke-direct {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->createTabItems()V

    .line 91
    invoke-direct {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->createMovingItem()V

    .line 92
    invoke-direct {p0}, Lcom/texa/careapp/views/CirclePageIndicator;->setUpListener()V

    return-void
.end method
