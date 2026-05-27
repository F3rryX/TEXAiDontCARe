.class public Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DiagnosisDataPagerAdapter.java"


# static fields
.field public static final PAGE_LAMPS:I = 0x0

.field public static final PAGE_PARAMS:I = 0x1

.field public static final PAGE_PARAM_FLAG:Ljava/lang/String; = "PAGE_PARAM_FLAG"


# instance fields
.field private final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDiscardedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private titles:[I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mDiscardedViews:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->titles:[I

    .line 49
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f110924
        0x7f110927
    .end array-data
.end method

.method private displayLampsPage(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 99
    new-instance v0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-direct {v0, p1, v1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;-><init>(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/DiagnosisType;)V

    .line 100
    new-instance p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    invoke-direct {p1, v1, p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->setPresenter(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;)V

    return-object v0
.end method

.method private displayParamsPage(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 92
    new-instance v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance p1, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    invoke-direct {p1, v1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->setPresenter(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 110
    iget-object p3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_0

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 114
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 124
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->titles:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method goToPage(I)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->displayParamsPage(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->displayLampsPage(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
