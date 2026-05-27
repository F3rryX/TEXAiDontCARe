.class public Lcom/texa/careapp/views/EmergencyButton;
.super Landroid/widget/RelativeLayout;
.source "EmergencyButton.java"


# instance fields
.field final SUBTITLE_SAMPLE:Ljava/lang/String;

.field final TITLE_SAMPLE:Ljava/lang/String;

.field private container:Landroid/widget/LinearLayout;

.field private image:Landroid/widget/ImageView;

.field private isEnable:Z

.field private subTitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private txtContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->TITLE_SAMPLE:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->SUBTITLE_SAMPLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/texa/careapp/views/EmergencyButton;->isEnable:Z

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d004c

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->TITLE_SAMPLE:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->SUBTITLE_SAMPLE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/texa/careapp/views/EmergencyButton;->isEnable:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->initView(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/EmergencyButton;->setValues(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 26
    iput-object p3, p0, Lcom/texa/careapp/views/EmergencyButton;->TITLE_SAMPLE:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/texa/careapp/views/EmergencyButton;->SUBTITLE_SAMPLE:Ljava/lang/String;

    const/4 p3, 0x1

    .line 33
    iput-boolean p3, p0, Lcom/texa/careapp/views/EmergencyButton;->isEnable:Z

    .line 53
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->initView(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/EmergencyButton;->setValues(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d004c

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0454

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->title:Landroid/widget/TextView;

    const p1, 0x7f0a0453

    .line 65
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->subTitle:Landroid/widget/TextView;

    const p1, 0x7f0a021d

    .line 66
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->image:Landroid/widget/ImageView;

    const p1, 0x7f0a0243

    .line 68
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00d8

    .line 69
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->txtContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private setValues(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 86
    :try_start_0
    sget-object v1, Lcom/texa/careapp/R$styleable;->EmergencyButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 p1, 0x2

    const p2, 0x7f08012f

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 p2, 0x1

    .line 90
    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 92
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x5

    .line 94
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 96
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->setImage(I)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/EmergencyButton;->setBackgroundColor(I)V

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->subTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, ""

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {p0, v4}, Lcom/texa/careapp/views/EmergencyButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {p0, v5}, Lcom/texa/careapp/views/EmergencyButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EmergencyButton;->setSubTitle(Ljava/lang/String;)V

    .line 123
    :goto_1
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/EmergencyButton;->enableIcon(Z)V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/texa/careapp/views/EmergencyButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/careapp/views/EmergencyButton$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/EmergencyButton;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    throw p1
.end method


# virtual methods
.method public enableIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->image:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->image:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setValues$0$com-texa-careapp-views-EmergencyButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 126
    iget-boolean p1, p0, Lcom/texa/careapp/views/EmergencyButton;->isEnable:Z

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xe6

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return v0

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0xff

    if-ne p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    return v0

    .line 134
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 135
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setEnableView(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/texa/careapp/views/EmergencyButton;->isEnable:Z

    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->subTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->subTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->subTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/views/EmergencyButton;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/views/EmergencyButton;->title:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
