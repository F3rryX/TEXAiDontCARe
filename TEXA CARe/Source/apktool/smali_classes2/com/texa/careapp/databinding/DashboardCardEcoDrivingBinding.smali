.class public abstract Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DashboardCardEcoDrivingBinding.java"


# instance fields
.field public final dashboardCardEcoDriving:Landroidx/cardview/widget/CardView;

.field public final dashboardCardEcoDrivingButton:Landroid/widget/TextView;

.field public final dashboardCardEcoDrivingDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardEcoDrivingHeader:Landroid/widget/RelativeLayout;

.field public final dashboardCardEcoDrivingIcon:Landroid/widget/ImageView;

.field public final dashboardCardEcoDrivingScore:Lcom/texa/careapp/views/CircleDisplay;

.field public final dashboardCardEcoDrivingTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/texa/careapp/views/CircleDisplay;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDriving:Landroidx/cardview/widget/CardView;

    .line 50
    iput-object p5, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingButton:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object p7, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingHeader:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p8, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingIcon:Landroid/widget/ImageView;

    .line 54
    iput-object p9, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingScore:Lcom/texa/careapp/views/CircleDisplay;

    .line 55
    iput-object p10, p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 1

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0054

    .line 111
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 1

    .line 61
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0054

    .line 75
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0054

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    return-object p0
.end method
