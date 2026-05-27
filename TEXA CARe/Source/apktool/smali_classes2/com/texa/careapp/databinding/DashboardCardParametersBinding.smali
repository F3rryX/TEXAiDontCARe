.class public abstract Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DashboardCardParametersBinding.java"


# instance fields
.field public final appCompatTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public final constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final constraintLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final dashboardCardParametersCard:Landroidx/cardview/widget/CardView;

.field public final dashboardCardParametersChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final dashboardCardParametersHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final dashboardCardParametersIcon:Landroid/widget/ImageView;

.field public final dashboardCardParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardParametersSelector:Landroid/widget/ImageView;

.field public final dashboardCardParametersTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardParametersValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Lcom/github/mikephil/charting/charts/LineChart;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 62
    iput-object p4, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->appCompatTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p5, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    iput-object p6, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->constraintLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p7, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersCard:Landroidx/cardview/widget/CardView;

    .line 66
    iput-object p8, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 67
    iput-object p9, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p10, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersIcon:Landroid/widget/ImageView;

    .line 69
    iput-object p11, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    iput-object p12, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersSelector:Landroid/widget/ImageView;

    .line 71
    iput-object p13, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object p14, p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersValue:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 1

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0056

    .line 128
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 1

    .line 78
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0056

    .line 92
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardParametersBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0056

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    return-object p0
.end method
