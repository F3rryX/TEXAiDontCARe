.class public abstract Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenActivationPlusServiceBinding.java"


# instance fields
.field public final screenActivationPlusServiceBadge:Landroid/widget/TextView;

.field public final screenActivationPlusServiceDescription:Landroid/widget/TextView;

.field public final screenActivationPlusServiceHeader:Landroid/widget/RelativeLayout;

.field public final screenActivationPlusServicePurchase:Landroid/widget/TextView;

.field public final screenActivationPlusServicePurchaseLay:Landroid/widget/LinearLayout;

.field public final screenActivationPlusServicePurchaseLight:Landroid/widget/TextView;

.field public final screenActivationPlusServicePurchaseLightInfo:Landroid/widget/TextView;

.field public final serviceDescriptionTitle:Landroid/widget/TextView;

.field public final tosFragmentContainer:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServiceBadge:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServiceDescription:Landroid/widget/TextView;

    .line 58
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServiceHeader:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchase:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchaseLay:Landroid/widget/LinearLayout;

    .line 61
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchaseLight:Landroid/widget/TextView;

    .line 62
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->screenActivationPlusServicePurchaseLightInfo:Landroid/widget/TextView;

    .line 63
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->serviceDescriptionTitle:Landroid/widget/TextView;

    .line 64
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->tosFragmentContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 1

    .line 107
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a4

    .line 120
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 1

    .line 89
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 1

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a4

    .line 84
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationPlusServiceBinding;

    return-object p0
.end method
