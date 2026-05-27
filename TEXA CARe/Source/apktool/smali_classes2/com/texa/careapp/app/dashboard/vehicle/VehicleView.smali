.class public Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;
.super Landroid/widget/LinearLayout;
.source "VehicleView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

.field private mPresenter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0089

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->mBinding:Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->mPresenter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->mBinding:Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->afterViewInjection(Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->mPresenter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->displayVehicleTitle(I)V

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehicleView;->mPresenter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->displayVehicleIcon(I)V

    return-void
.end method
