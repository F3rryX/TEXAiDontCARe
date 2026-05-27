.class public Lcom/texa/careapp/app/dashboard/card/ParametersCardView;
.super Landroid/widget/LinearLayout;
.source "ParametersCardView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ParametersCardView"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

.field private mPresenter:Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0056

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardParametersBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardParametersBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->updateCard()V

    return-void
.end method
