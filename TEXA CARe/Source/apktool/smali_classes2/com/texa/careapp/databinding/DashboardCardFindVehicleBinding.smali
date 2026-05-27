.class public abstract Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DashboardCardFindVehicleBinding.java"


# instance fields
.field public final dashboardCardFindVehicleAddress:Landroid/widget/TextView;

.field public final dashboardCardFindVehicleCard:Landroidx/cardview/widget/CardView;

.field public final dashboardCardFindVehicleCity:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardFindVehicleDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardFindVehicleHeader:Landroid/widget/RelativeLayout;

.field public final dashboardCardFindVehicleIcon:Landroid/widget/ImageView;

.field public final dashboardCardFindVehicleMapContainer:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleAddress:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleCard:Landroidx/cardview/widget/CardView;

    .line 51
    iput-object p6, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleCity:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object p7, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object p8, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleHeader:Landroid/widget/RelativeLayout;

    .line 54
    iput-object p9, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleIcon:Landroid/widget/ImageView;

    .line 55
    iput-object p10, p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleMapContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 1

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0055

    .line 111
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 1

    .line 61
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0055

    .line 75
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0055

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;

    return-object p0
.end method
