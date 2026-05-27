.class public abstract Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DashboardCardScheduleBinding.java"


# instance fields
.field public final dashboardCardSchedule:Landroidx/cardview/widget/CardView;

.field public final dashboardCardScheduleButton:Landroid/widget/TextView;

.field public final dashboardCardScheduleDescription:Landroid/widget/TextView;

.field public final dashboardCardScheduleHeader:Landroid/widget/RelativeLayout;

.field public final dashboardCardScheduleIcon:Landroid/widget/ImageView;

.field public final dashboardCardScheduleShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardScheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardSchedule:Landroidx/cardview/widget/CardView;

    .line 49
    iput-object p5, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleButton:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleDescription:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleHeader:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p8, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleIcon:Landroid/widget/ImageView;

    .line 53
    iput-object p9, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    iput-object p10, p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0057

    .line 109
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 1

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 1

    .line 60
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0057

    .line 74
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0057

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    return-object p0
.end method
