.class public abstract Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenActivationLightServiceBinding.java"


# instance fields
.field public final screenActivationLightPurchaseButton:Landroid/widget/RelativeLayout;

.field public final screenActivationLightPurchaseInfo:Landroid/widget/TextView;

.field public final screenActivationLightServiceBadge:Landroid/widget/TextView;

.field public final screenActivationLightServicePurchase:Landroid/widget/TextView;

.field public final screenActivationLightServicePurchaseLay:Landroid/widget/LinearLayout;

.field public final screenActivationLightServicePurchaseLight:Landroid/widget/TextView;

.field public final screenActivationLightServiceTitle:Landroid/widget/TextView;

.field public final tosFragmentContainer:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 51
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightPurchaseButton:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightPurchaseInfo:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServiceBadge:Landroid/widget/TextView;

    .line 54
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServicePurchase:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServicePurchaseLay:Landroid/widget/LinearLayout;

    .line 56
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServicePurchaseLight:Landroid/widget/TextView;

    .line 57
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->screenActivationLightServiceTitle:Landroid/widget/TextView;

    .line 58
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->tosFragmentContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a3

    .line 114
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 1

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a3

    .line 78
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationLightServiceBinding;

    return-object p0
.end method
