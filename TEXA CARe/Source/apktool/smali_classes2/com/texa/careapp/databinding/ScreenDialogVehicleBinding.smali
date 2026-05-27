.class public abstract Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenDialogVehicleBinding.java"


# instance fields
.field public final screenDialogVehicleCancel:Landroid/widget/TextView;

.field public final screenDialogVehicleDescription:Landroid/widget/TextView;

.field public final screenDialogVehicleLay:Landroid/widget/LinearLayout;

.field public final screenDialogVehicleProgress:Landroid/widget/ProgressBar;

.field public final screenDialogVehicleRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final screenDialogVehicleSearch:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EditText;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleCancel:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleDescription:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleLay:Landroid/widget/LinearLayout;

    .line 47
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleProgress:Landroid/widget/ProgressBar;

    .line 48
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->screenDialogVehicleSearch:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b9

    .line 104
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 1

    .line 74
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 1

    .line 55
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b9

    .line 69
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDialogVehicleBinding;

    return-object p0
.end method
