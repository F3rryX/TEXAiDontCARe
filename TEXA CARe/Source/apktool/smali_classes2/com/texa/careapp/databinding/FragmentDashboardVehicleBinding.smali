.class public abstract Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentDashboardVehicleBinding.java"


# instance fields
.field public final fragmentDashboardVehicleIcon:Landroid/widget/ImageView;

.field public final fragmentDashboardVehicleIconInvisible:Landroid/widget/ImageView;

.field public final fragmentDashboardVehicleLayout:Landroid/widget/RelativeLayout;

.field public final fragmentDashboardVehicleName:Landroidx/appcompat/widget/AppCompatTextView;

.field public final fragmentDashboardVehicleStatus:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 41
    iput-object p4, p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleIcon:Landroid/widget/ImageView;

    .line 42
    iput-object p5, p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleIconInvisible:Landroid/widget/ImageView;

    .line 43
    iput-object p6, p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleLayout:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p7, p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    iput-object p8, p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleStatus:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 1

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0089

    .line 101
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 1

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 1

    .line 51
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0089

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0089

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;

    return-object p0
.end method
