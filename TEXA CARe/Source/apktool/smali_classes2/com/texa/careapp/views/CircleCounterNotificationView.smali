.class public Lcom/texa/careapp/views/CircleCounterNotificationView;
.super Landroid/widget/RelativeLayout;
.source "CircleCounterNotificationView.java"


# instance fields
.field private circleBackgroundColor:I

.field private circleBorderColor:I

.field private image:I

.field private mImageView:Landroid/widget/ImageView;

.field private mNotificationCountLayout:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;

.field private notificationBackgroundColor:I

.field private textColor:I

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d004e

    .line 41
    invoke-static {p1, v0, p0}, Lcom/texa/careapp/views/CircleCounterNotificationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CircleCounterNotificationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CircleCounterNotificationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/CircleCounterNotificationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "layout_width"

    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d004e

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a027e

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f0a021e

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0a027d

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mNotificationCountLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/texa/careapp/R$styleable;->CircleCounterNotificationView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const v2, 0x7f08012f

    const/4 v4, 0x2

    .line 67
    :try_start_0
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->image:I

    const/4 v2, 0x3

    const v5, -0x333334

    .line 68
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->notificationBackgroundColor:I

    const/4 v2, 0x4

    .line 69
    iget-object v6, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->textColor:I

    .line 70
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->circleBackgroundColor:I

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->circleBorderColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->image:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->width:F

    .line 79
    :try_start_1
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleCounterNotificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/texa/careapp/utils/DimensionConverter;->stringToDimension(Ljava/lang/String;Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->width:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 p1, -0x1

    .line 82
    invoke-interface {p2, v1, v0, p1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/texa/careapp/views/CircleCounterNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->width:F

    .line 87
    :cond_0
    :goto_0
    iget p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->width:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-double v0, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double p1, p1, v2

    sub-double/2addr v0, p1

    double-to-int p1, v0

    add-int/2addr p1, v4

    .line 89
    iget-object p2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 90
    iget p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->notificationBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/CircleCounterNotificationView;->setNotificationBackgroundColor(I)V

    .line 91
    iget-object p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mTextView:Landroid/widget/TextView;

    iget p2, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->circleBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/CircleCounterNotificationView;->setCircleBackgroundColor(I)V

    .line 93
    iget p1, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->circleBorderColor:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/CircleCounterNotificationView;->setCircleBorderColor(I)V

    return-void

    :catchall_0
    move-exception p2

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    throw p2
.end method


# virtual methods
.method public setCircleBackgroundColor(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setCircleBorderColor(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x3

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNotificationBackgroundColor(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/views/CircleCounterNotificationView;->mNotificationCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 98
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method
