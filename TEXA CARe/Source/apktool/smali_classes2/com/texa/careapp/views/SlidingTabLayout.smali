.class public Lcom/texa/careapp/views/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/SlidingTabLayout$TabClickListener;,
        Lcom/texa/careapp/views/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/texa/careapp/views/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0xe

.field private static final TAB_VIEW_TEXT_SIZE_DIPS:I = 0x10

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistributeEvenly:Z

.field private mFontLight:Landroid/graphics/Typeface;

.field private final mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/views/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/views/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 85
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/SlidingTabLayout;->setFillViewport(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTitleOffset:I

    .line 89
    new-instance p2, Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-direct {p2, p1}, Lcom/texa/careapp/views/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 90
    invoke-virtual {p0, p2, p1, p3}, Lcom/texa/careapp/views/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/careapp/views/SlidingTabLayout;)Lcom/texa/careapp/views/SlidingTabStrip;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/views/SlidingTabLayout;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/careapp/views/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/views/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private populateTabStrip()V
    .locals 9

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/texa/careapp/views/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/views/SlidingTabLayout$TabClickListener;-><init>(Lcom/texa/careapp/views/SlidingTabLayout;Lcom/texa/careapp/views/SlidingTabLayout$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 182
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 186
    iget v5, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 190
    iget v6, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/texa/careapp/views/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 197
    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 198
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 201
    :cond_2
    iget-boolean v7, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v7, :cond_3

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 204
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mFontLight:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v6, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 213
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    :cond_4
    iget-object v6, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v6, v5}, Lcom/texa/careapp/views/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 217
    iget-object v6, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v4, v6, :cond_5

    const/4 v6, 0x1

    .line 218
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private scrollToTab(II)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/texa/careapp/views/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 248
    :cond_1
    iget p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/views/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5

    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    sget-object v2, Lcom/texa/careapp/Constants;->TYPEFACE_DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101030e

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 171
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v1, 0x7f090001

    .line 173
    invoke-static {p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mFontLight:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 229
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 231
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/views/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/texa/careapp/views/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/SlidingTabStrip;->setCustomTabColorizer(Lcom/texa/careapp/views/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabViewLayoutId:I

    .line 135
    iput p2, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabViewTextViewId:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mDistributeEvenly:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mTabStrip:Lcom/texa/careapp/views/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/texa/careapp/views/SlidingTabStrip;->removeAllViews()V

    .line 145
    iput-object p1, p0, Lcom/texa/careapp/views/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Lcom/texa/careapp/views/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/views/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/texa/careapp/views/SlidingTabLayout;Lcom/texa/careapp/views/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 148
    invoke-direct {p0}, Lcom/texa/careapp/views/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
