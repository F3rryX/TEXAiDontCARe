.class public abstract Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSetInsuranceDataThresholdBinding.java"


# instance fields
.field public final editDateViewNewThreshold:Lcom/texa/careapp/views/EditableDateView;

.field public final insuranceDurationSpinner:Landroid/widget/Spinner;

.field public final layoutAddConfirmed:Landroid/widget/LinearLayout;

.field public final layoutNewExpDate:Landroid/widget/LinearLayout;

.field public final thresholdTitol:Landroid/widget/TextView;

.field public final vehicleLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/texa/careapp/views/EditableDateView;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 43
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->editDateViewNewThreshold:Lcom/texa/careapp/views/EditableDateView;

    .line 44
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->insuranceDurationSpinner:Landroid/widget/Spinner;

    .line 45
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    .line 46
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->layoutNewExpDate:Landroid/widget/LinearLayout;

    .line 47
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    .line 48
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->vehicleLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00de

    .line 104
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 1

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 1

    .line 54
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00de

    .line 68
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00de

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    return-object p0
.end method
