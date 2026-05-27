.class public abstract Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityAutomaticSosBinding.java"


# instance fields
.field public final activityAutomaticSosBackground:Landroid/widget/RelativeLayout;

.field public final activityAutomaticSosCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

.field public final activityAutomaticSosCountDownView:Lcom/texa/careapp/views/CircleDisplay;

.field public final activityAutomaticSosHeader:Landroid/widget/LinearLayout;

.field public final activityAutomaticSosIcon:Landroid/widget/ImageView;

.field public final activityAutomaticSosIconComplete:Landroid/widget/ImageView;

.field public final activityAutomaticSosMessage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final activityAutomaticSosRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

.field public final activityAutomaticSosTitle:Landroid/widget/TextView;

.field public final alertCentralMainTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 61
    iput-object p4, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosBackground:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p5, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosCancelRequest:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p6, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosCountDownView:Lcom/texa/careapp/views/CircleDisplay;

    .line 64
    iput-object p7, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosHeader:Landroid/widget/LinearLayout;

    .line 65
    iput-object p8, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosIcon:Landroid/widget/ImageView;

    .line 66
    iput-object p9, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosIconComplete:Landroid/widget/ImageView;

    .line 67
    iput-object p10, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p11, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosRequestNow:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p12, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosTitle:Landroid/widget/TextView;

    .line 70
    iput-object p13, p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->alertCentralMainTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 1

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    .line 125
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 1

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    .line 90
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    return-object p0
.end method
