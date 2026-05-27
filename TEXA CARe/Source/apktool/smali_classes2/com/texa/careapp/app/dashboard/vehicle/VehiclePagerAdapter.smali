.class public Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "VehiclePagerAdapter.java"


# instance fields
.field private careCondition:I

.field private final mBindedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;",
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
            "Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/Observable;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private vehicleModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 33
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/DashboardCardObserver;

    invoke-direct {v0}, Lcom/texa/careapp/app/dashboard/card/DashboardCardObserver;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mObservers:Ljava/util/Observable;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mDiscardedViews:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    .line 45
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;)V

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 47
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->vehicleModels:Ljava/util/List;

    return-void
.end method

.method private displayVehicle(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;
    .locals 3

    .line 81
    new-instance v0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance p1, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->vehicleModels:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/VehicleModel;

    iget v2, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->careCondition:I

    invoke-direct {p1, v1, p2, v2}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/model/VehicleModel;I)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->setPresenter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 90
    iget-object p3, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;

    if-eqz p3, :cond_0

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mObservers:Ljava/util/Observable;

    invoke-virtual {v0, p3}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mDiscardedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCareCondition()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->careCondition:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->vehicleModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->vehicleModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->vehicleModels:Ljava/util/List;

    return-object v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 105
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mContext:Landroid/content/Context;

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

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->displayVehicle(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mObservers:Ljava/util/Observable;

    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 73
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mBindedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
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

.method public setCareCondition(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->careCondition:I

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public updateViews()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->mObservers:Ljava/util/Observable;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->careCondition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
