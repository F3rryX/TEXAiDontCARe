.class public abstract Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DashboardCardDiagnosisBinding.java"


# instance fields
.field public final dashboardCardDiagnosis:Landroidx/cardview/widget/CardView;

.field public final dashboardCardDiagnosisButton:Landroid/widget/TextView;

.field public final dashboardCardDiagnosisDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final dashboardCardDiagnosisHeader:Landroid/widget/RelativeLayout;

.field public final dashboardCardDiagnosisIcon:Landroid/widget/ImageView;

.field public final dashboardCardDiagnosisTime:Lcom/texa/careapp/views/RelativeTimeTextView;

.field public final dashboardCardDiagnosisTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/texa/careapp/views/RelativeTimeTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosis:Landroidx/cardview/widget/CardView;

    .line 51
    iput-object p5, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisButton:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object p7, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisHeader:Landroid/widget/RelativeLayout;

    .line 54
    iput-object p8, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisIcon:Landroid/widget/ImageView;

    .line 55
    iput-object p9, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisTime:Lcom/texa/careapp/views/RelativeTimeTextView;

    .line 56
    iput-object p10, p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0053

    .line 111
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 1

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0053

    .line 76
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0053

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    return-object p0
.end method
