.class public abstract Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogUpdateFirmwareBinding.java"


# instance fields
.field public final dialogUpdateFirmwareDescription:Landroid/widget/TextView;

.field public final dialogUpdateFirmwareLine:Landroid/view/View;

.field public final dialogUpdateFirmwareOk:Landroid/widget/TextView;

.field public final dialogUpdateFirmwareProgress:Landroid/widget/ProgressBar;

.field public final dialogUpdateFirmwareUndo:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareDescription:Landroid/widget/TextView;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareLine:Landroid/view/View;

    .line 40
    iput-object p6, p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareOk:Landroid/widget/TextView;

    .line 41
    iput-object p7, p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareProgress:Landroid/widget/ProgressBar;

    .line 42
    iput-object p8, p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareUndo:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d007f

    .line 97
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 1

    .line 67
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d007f

    .line 62
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d007f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    return-object p0
.end method
