.class public abstract Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenDiagnosisDataBinding.java"


# instance fields
.field public final screenDiagnosisDataSlidingTabs:Lcom/texa/careapp/views/SlidingTabLayout;

.field public final screenDiagnosisDataViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/texa/careapp/views/SlidingTabLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 27
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataSlidingTabs:Lcom/texa/careapp/views/SlidingTabLayout;

    .line 28
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b3

    .line 83
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 1

    .line 53
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 1

    .line 34
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b3

    .line 48
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    return-object p0
.end method
