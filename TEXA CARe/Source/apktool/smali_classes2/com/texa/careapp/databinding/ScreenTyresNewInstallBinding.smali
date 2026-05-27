.class public abstract Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenTyresNewInstallBinding.java"


# instance fields
.field public final buttonTyresNewInstallConfirm:Landroid/widget/TextView;

.field public final containerNewInstallConfirm:Landroid/widget/RelativeLayout;

.field public final editTextExpTyresFittingNewInstall:Landroid/widget/EditText;

.field public final floatingEditTextExpTyresFittingNewInstall:Lcom/google/android/material/textfield/TextInputLayout;

.field public final layoutTyresType:Landroid/widget/LinearLayout;

.field public final tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->buttonTyresNewInstallConfirm:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->containerNewInstallConfirm:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->editTextExpTyresFittingNewInstall:Landroid/widget/EditText;

    .line 49
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->floatingEditTextExpTyresFittingNewInstall:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->layoutTyresType:Landroid/widget/LinearLayout;

    .line 51
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e9

    .line 106
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 1

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e9

    .line 71
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    return-object p0
.end method
