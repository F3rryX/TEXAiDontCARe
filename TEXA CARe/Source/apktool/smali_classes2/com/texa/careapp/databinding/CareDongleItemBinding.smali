.class public abstract Lcom/texa/careapp/databinding/CareDongleItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CareDongleItemBinding.java"


# instance fields
.field public final careDongleDetails:Landroid/widget/LinearLayout;

.field public final careDongleItemIcon:Landroid/widget/ImageView;

.field public final textViewCareDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textViewCareDongleSubtitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 36
    iput-object p4, p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;->careDongleDetails:Landroid/widget/LinearLayout;

    .line 37
    iput-object p5, p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;->careDongleItemIcon:Landroid/widget/ImageView;

    .line 38
    iput-object p6, p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;->textViewCareDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    iput-object p7, p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;->textViewCareDongleSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004d

    .line 94
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 1

    .line 45
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004d

    .line 59
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/CareDongleItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/CareDongleItemBinding;

    return-object p0
.end method
