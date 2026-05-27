.class public abstract Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenEcoDrivingTripItemBinding.java"


# instance fields
.field public final screenEcoDrivingTripItemCar:Landroid/widget/TextView;

.field public final screenEcoDrivingTripItemCircle:Lcom/texa/careapp/views/CircleDisplay;

.field public final screenEcoDrivingTripItemDate:Landroid/widget/TextView;

.field public final screenEcoDrivingTripItemFromTo:Landroidx/appcompat/widget/AppCompatTextView;

.field public final screenEcoDrivingTripItemLay:Landroid/widget/RelativeLayout;

.field public final screenEcoDrivingTripItemLine:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemCar:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemCircle:Lcom/texa/careapp/views/CircleDisplay;

    .line 46
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemDate:Landroid/widget/TextView;

    .line 47
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemFromTo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemLay:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c6

    .line 105
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 1

    .line 74
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 1

    .line 55
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c6

    .line 69
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    return-object p0
.end method
