.class public abstract Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenDialogNewConfigurationRequestBinding.java"


# instance fields
.field public final requestNewCareConfigDescriptionDialogTitleLay:Landroid/widget/RelativeLayout;

.field public final requestNewCareConfigScrollView:Landroid/widget/ScrollView;

.field public final requestNewConfigurationDialogBtnCreate:Landroid/widget/TextView;

.field public final requestNewConfigurationDialogBtnCreateLayout:Landroid/widget/RelativeLayout;

.field public final requestNewConfigurationDialogDescription:Landroid/widget/TextView;

.field public final requestNewConfigurationDialogTitle:Landroid/widget/TextView;

.field public final requestNewConfigurationDialogVehicles:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewCareConfigDescriptionDialogTitleLay:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewCareConfigScrollView:Landroid/widget/ScrollView;

    .line 51
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogBtnCreate:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogBtnCreateLayout:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogDescription:Landroid/widget/TextView;

    .line 54
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogTitle:Landroid/widget/TextView;

    .line 55
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogVehicles:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b8

    .line 112
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 1

    .line 61
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b8

    .line 75
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    return-object p0
.end method
