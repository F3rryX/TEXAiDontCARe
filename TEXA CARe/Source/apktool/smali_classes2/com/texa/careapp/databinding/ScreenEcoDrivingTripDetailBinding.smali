.class public abstract Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenEcoDrivingTripDetailBinding.java"


# instance fields
.field public final ecoDrivingTripDetailScrollToBottom:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final screenEcoDrivingTripDetailDistance:Landroid/widget/TextView;

.field public final screenEcoDrivingTripDetailDuration:Landroid/widget/TextView;

.field public final screenEcoDrivingTripDetailHeader:Landroid/widget/RelativeLayout;

.field public final screenEcoDrivingTripDetailHint:Landroid/widget/LinearLayout;

.field public final screenEcoDrivingTripDetailHintText:Landroid/widget/TextView;

.field public final screenEcoDrivingTripDetailList:Landroidx/recyclerview/widget/RecyclerView;

.field public final screenEcoDrivingTripDetailLocations:Landroid/widget/TextView;

.field public final screenEcoDrivingTripDetailScore:Lcom/texa/careapp/views/CircleDisplay;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/texa/careapp/views/CircleDisplay;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->ecoDrivingTripDetailScrollToBottom:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 57
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailDistance:Landroid/widget/TextView;

    .line 58
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailDuration:Landroid/widget/TextView;

    .line 59
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailHeader:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailHint:Landroid/widget/LinearLayout;

    .line 61
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailHintText:Landroid/widget/TextView;

    .line 62
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailList:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailLocations:Landroid/widget/TextView;

    .line 64
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailScore:Lcom/texa/careapp/views/CircleDisplay;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 1

    .line 107
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c4

    .line 120
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 1

    .line 89
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 1

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c4

    .line 84
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    return-object p0
.end method
