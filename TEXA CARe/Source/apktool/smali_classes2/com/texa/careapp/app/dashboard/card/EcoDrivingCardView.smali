.class public Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;
.super Landroid/widget/LinearLayout;
.source "EcoDrivingCardView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "EcoDrivingCardView"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

.field private mPresenter:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0054

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->updateCard()V

    return-void
.end method
