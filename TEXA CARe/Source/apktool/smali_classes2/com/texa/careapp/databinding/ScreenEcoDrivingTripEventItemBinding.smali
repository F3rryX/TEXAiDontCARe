.class public abstract Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenEcoDrivingTripEventItemBinding.java"


# instance fields
.field protected mAdapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final screenEcoDrivingTripEventItemButton:Landroid/widget/RelativeLayout;

.field public final screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

.field public final screenEcoDrivingTripEventItemDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

.field public final screenEcoDrivingTripEventItemSeparator:Landroid/view/View;

.field public final screenEcoDrivingTripEventItemTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemButton:Landroid/widget/RelativeLayout;

    .line 51
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    .line 54
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemSeparator:Landroid/view/View;

    .line 55
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c5

    .line 118
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 1

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 1

    .line 68
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c5

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00c5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->mAdapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    return-object v0
.end method

.method public abstract setAdapter(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
.end method
