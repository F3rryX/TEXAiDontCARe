.class public abstract Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenActivationTrialServiceBinding.java"


# instance fields
.field public final screenActivationTrialServiceBadge:Landroid/widget/TextView;

.field public final screenActivationTrialServiceBtn:Landroid/widget/TextView;

.field public final screenActivationTrialServiceDescription:Landroid/widget/TextView;

.field public final screenActivationTrialServiceHeader:Landroid/widget/RelativeLayout;

.field public final serviceDescriptionTitle:Landroid/widget/TextView;

.field public final tosFragmentContainer:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceBadge:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceBtn:Landroid/widget/TextView;

    .line 44
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceDescription:Landroid/widget/TextView;

    .line 45
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->screenActivationTrialServiceHeader:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->serviceDescriptionTitle:Landroid/widget/TextView;

    .line 47
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->tosFragmentContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00aa

    .line 103
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 1

    .line 72
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 1

    .line 53
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00aa

    .line 67
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00aa

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationTrialServiceBinding;

    return-object p0
.end method
