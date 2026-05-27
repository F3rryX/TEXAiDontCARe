.class public Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "DashboardScreenAdapter.java"


# static fields
.field private static final CARD_DIAGNOSIS:I = 0x1

.field private static final CARD_ECO_DRIVING:I = 0x4

.field private static final CARD_FIND_VEHICLE:I = 0x3

.field private static final CARD_PARAMETERS:I = 0x2

.field private static final CARD_SCHEDULE:I


# instance fields
.field private diagnosisCardView:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;

.field private ecoDrivingCardView:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;

.field private findVehicleCardView:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;

.field private isSmallScreen:Z

.field private final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareApplication:Lcom/texa/careapp/CareApplication;

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

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mObservers:Ljava/util/Observable;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private parametersCardView:Lcom/texa/careapp/app/dashboard/card/ParametersCardView;

.field private scheduleCardView:Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/care/navigation/Navigator;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 49
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/DashboardCardObserver;

    invoke-direct {v0}, Lcom/texa/careapp/app/dashboard/card/DashboardCardObserver;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mObservers:Ljava/util/Observable;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mDiscardedViews:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 64
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;)V

    .line 65
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 66
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    return-void
.end method

.method private displayDiagnosisCard(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->diagnosisCardView:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->diagnosisCardView:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;

    .line 162
    new-instance p1, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    invoke-direct {p1, v1, v2}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->setPresenter(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->diagnosisCardView:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;

    return-object p1
.end method

.method private displayEcoDrivingCard(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->ecoDrivingCardView:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->ecoDrivingCardView:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;

    .line 182
    new-instance p1, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    invoke-direct {p1, v1, v2}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->setPresenter(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->ecoDrivingCardView:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;

    return-object p1
.end method

.method private displayFindVehicleCard(Landroid/view/ViewGroup;Lcom/texa/care/navigation/Navigator;)Landroid/view/View;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->findVehicleCardView:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->findVehicleCardView:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;

    .line 142
    new-instance p1, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    invoke-direct {p1, v1, p2, v2}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;Z)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;->setPresenter(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->findVehicleCardView:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardView;

    return-object p1
.end method

.method private displayParametersCard(Landroid/view/ViewGroup;Lcom/texa/care/navigation/Navigator;)Landroid/view/View;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->parametersCardView:Lcom/texa/careapp/app/dashboard/card/ParametersCardView;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->parametersCardView:Lcom/texa/careapp/app/dashboard/card/ParametersCardView;

    .line 152
    new-instance p1, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    invoke-direct {p1, v1, p2, v2}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/care/navigation/Navigator;Z)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->setPresenter(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->parametersCardView:Lcom/texa/careapp/app/dashboard/card/ParametersCardView;

    return-object p1
.end method

.method private displayScheduleCard(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->scheduleCardView:Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->scheduleCardView:Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;

    .line 172
    new-instance p1, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->isSmallScreen:Z

    invoke-direct {p1, v1, v2}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->setPresenter(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->scheduleCardView:Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;

    return-object p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 189
    iget-object p3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_1

    .line 191
    instance-of v0, p3, Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mObservers:Ljava/util/Observable;

    move-object v1, p3

    check-cast v1, Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 196
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 206
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_5

    .line 119
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->displayEcoDrivingCard(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->displayFindVehicleCard(Landroid/view/ViewGroup;Lcom/texa/care/navigation/Navigator;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->displayParametersCard(Landroid/view/ViewGroup;Lcom/texa/care/navigation/Navigator;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_5

    .line 103
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->displayDiagnosisCard(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_5

    .line 111
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->displayScheduleCard(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    .line 127
    instance-of v1, v0, Ljava/util/Observer;

    if-eqz v1, :cond_6

    .line 128
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mObservers:Ljava/util/Observable;

    move-object v2, v0

    check-cast v2, Ljava/util/Observer;

    invoke-virtual {v1, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_7
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

    .line 214
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method updateViews()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->mObservers:Ljava/util/Observable;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method
