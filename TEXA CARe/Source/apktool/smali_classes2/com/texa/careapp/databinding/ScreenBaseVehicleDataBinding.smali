.class public abstract Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenBaseVehicleDataBinding.java"


# instance fields
.field public final screenBaseVehicleDataNextLayout:Landroid/widget/RelativeLayout;

.field public final screenBaseVehicleDataPlateEditText:Landroid/widget/AutoCompleteTextView;

.field public final screenBaseVehicleDataPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenBaseVehicleDataScrollView:Landroid/widget/ScrollView;

.field public final screenBaseVehicleDataVehicleModelEditText:Landroid/widget/EditText;

.field public final screenBaseVehicleDataVehicleModelInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenBaseVehicleSkipVehicleInsertionLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ScrollView;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 51
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataNextLayout:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataPlateEditText:Landroid/widget/AutoCompleteTextView;

    .line 53
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataScrollView:Landroid/widget/ScrollView;

    .line 55
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataVehicleModelEditText:Landroid/widget/EditText;

    .line 56
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataVehicleModelInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleSkipVehicleInsertionLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ad

    .line 112
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 1

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ad

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ad

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    return-object p0
.end method
