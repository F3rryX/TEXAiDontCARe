.class public abstract Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSetTyresOdometerThresholdBinding.java"


# instance fields
.field public final editTextViewNewExp:Landroid/widget/EditText;

.field public final floatabelLabelNewExpOdo:Lcom/google/android/material/textfield/TextInputLayout;

.field public final layoutAddConfirmed:Landroid/widget/LinearLayout;

.field public final layoutNewExpOdo:Landroid/widget/LinearLayout;

.field public final layoutTyresType:Landroid/widget/LinearLayout;

.field public final thresholdTitol:Landroid/widget/TextView;

.field public final tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;

.field public final vehicleLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->editTextViewNewExp:Landroid/widget/EditText;

    .line 51
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->floatabelLabelNewExpOdo:Lcom/google/android/material/textfield/TextInputLayout;

    .line 52
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    .line 53
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->layoutNewExpOdo:Landroid/widget/LinearLayout;

    .line 54
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->layoutTyresType:Landroid/widget/LinearLayout;

    .line 55
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    .line 56
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;

    .line 57
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->vehicleLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00df

    .line 113
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 1

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00df

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00df

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    return-object p0
.end method
