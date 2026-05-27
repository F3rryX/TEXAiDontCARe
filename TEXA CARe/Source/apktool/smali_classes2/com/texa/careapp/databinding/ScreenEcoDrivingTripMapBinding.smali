.class public abstract Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenEcoDrivingTripMapBinding.java"


# instance fields
.field public final screenEcoDrivingTripMapBottomLay:Landroid/widget/LinearLayout;

.field public final screenEcoDrivingTripMapDistance:Landroid/widget/TextView;

.field public final screenEcoDrivingTripMapDistanceLabel:Landroid/widget/TextView;

.field public final screenEcoDrivingTripMapDuration:Landroid/widget/TextView;

.field public final screenEcoDrivingTripMapDurationLabel:Landroid/widget/TextView;

.field public final screenEcoDrivingTripMapLocations:Landroid/widget/TextView;

.field public final screenEcoDrivingTripMapScore:Lcom/texa/careapp/views/CircleDisplay;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/texa/careapp/views/CircleDisplay;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapBottomLay:Landroid/widget/LinearLayout;

    .line 47
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDistance:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDistanceLabel:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDuration:Landroid/widget/TextView;

    .line 50
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDurationLabel:Landroid/widget/TextView;

    .line 51
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapLocations:Landroid/widget/TextView;

    .line 52
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapScore:Lcom/texa/careapp/views/CircleDisplay;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 1

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c7

    .line 108
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 1

    .line 58
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c7

    .line 72
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    return-object p0
.end method
