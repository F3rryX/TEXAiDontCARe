.class public abstract Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityWalkthroughBinding.java"


# instance fields
.field public final activityWalkthroughBottomLay:Landroid/widget/LinearLayout;

.field public final activityWalkthroughBottomLayContent:Landroid/widget/RelativeLayout;

.field public final activityWalkthroughBtnNext:Landroid/widget/RelativeLayout;

.field public final activityWalkthroughBtnSkip:Landroid/widget/TextView;

.field public final activityWalkthroughClick:Landroid/view/View;

.field public final activityWalkthroughIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

.field public final activityWalkthroughPager:Landroidx/viewpager/widget/ViewPager;

.field public final activityWalkthroughVideoView:Landroid/widget/VideoView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Lcom/texa/careapp/views/CirclePageIndicator;Landroidx/viewpager/widget/ViewPager;Landroid/widget/VideoView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBottomLay:Landroid/widget/LinearLayout;

    .line 53
    iput-object p5, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBottomLayContent:Landroid/widget/RelativeLayout;

    .line 54
    iput-object p6, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBtnNext:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p7, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBtnSkip:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughClick:Landroid/view/View;

    .line 57
    iput-object p9, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    .line 58
    iput-object p10, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughPager:Landroidx/viewpager/widget/ViewPager;

    .line 59
    iput-object p11, p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughVideoView:Landroid/widget/VideoView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0043

    .line 114
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 1

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0043

    .line 79
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0043

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    return-object p0
.end method
