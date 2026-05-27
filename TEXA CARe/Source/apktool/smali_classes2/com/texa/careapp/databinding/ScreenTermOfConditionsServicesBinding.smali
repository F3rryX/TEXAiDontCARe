.class public abstract Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenTermOfConditionsServicesBinding.java"


# instance fields
.field public final container:Landroid/widget/RelativeLayout;

.field public final progressBarFragmentTermOfConditions:Landroid/widget/ProgressBar;

.field public final tosButton:Landroid/widget/RelativeLayout;

.field public final tosButtonDescription:Landroid/widget/TextView;

.field public final tosButtonImage:Landroid/widget/ImageView;

.field public final tosScrollView:Lcom/texa/careapp/views/ObservableWebView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/texa/careapp/views/ObservableWebView;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->container:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->progressBarFragmentTermOfConditions:Landroid/widget/ProgressBar;

    .line 46
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButton:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButtonDescription:Landroid/widget/TextView;

    .line 48
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButtonImage:Landroid/widget/ImageView;

    .line 49
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosScrollView:Lcom/texa/careapp/views/ObservableWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e7

    .line 105
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 1

    .line 74
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 1

    .line 55
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e7

    .line 69
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    return-object p0
.end method
