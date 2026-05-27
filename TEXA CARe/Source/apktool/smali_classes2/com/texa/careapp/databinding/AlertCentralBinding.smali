.class public abstract Lcom/texa/careapp/databinding/AlertCentralBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "AlertCentralBinding.java"


# instance fields
.field public final alertCentralBackground:Landroid/widget/RelativeLayout;

.field public final alertCentralCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

.field public final alertCentralCountDownView:Lcom/texa/careapp/views/CircleDisplay;

.field public final alertCentralHeader:Landroid/widget/LinearLayout;

.field public final alertCentralIcon:Landroid/widget/ImageView;

.field public final alertCentralIconComplete:Landroid/widget/ImageView;

.field public final alertCentralMainTitle:Landroid/widget/TextView;

.field public final alertCentralTitle:Landroid/widget/TextView;

.field public final alertMessage:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 55
    iput-object p4, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralBackground:Landroid/widget/RelativeLayout;

    .line 56
    iput-object p5, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    iput-object p6, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralCountDownView:Lcom/texa/careapp/views/CircleDisplay;

    .line 58
    iput-object p7, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralHeader:Landroid/widget/LinearLayout;

    .line 59
    iput-object p8, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralIcon:Landroid/widget/ImageView;

    .line 60
    iput-object p9, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralIconComplete:Landroid/widget/ImageView;

    .line 61
    iput-object p10, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralMainTitle:Landroid/widget/TextView;

    .line 62
    iput-object p11, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertCentralTitle:Landroid/widget/TextView;

    .line 63
    iput-object p12, p0, Lcom/texa/careapp/databinding/AlertCentralBinding;->alertMessage:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 1

    .line 106
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/AlertCentralBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0047

    .line 118
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/AlertCentralBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/AlertCentralBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 1

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/AlertCentralBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 1

    .line 69
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/AlertCentralBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0047

    .line 83
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/AlertCentralBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/AlertCentralBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0047

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/AlertCentralBinding;

    return-object p0
.end method
