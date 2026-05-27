.class Lcom/texa/careapp/app/walkthrough/WalkthroughView;
.super Landroid/widget/LinearLayout;
.source "WalkthroughView.java"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;

.field private mPresenter:Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00ec

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->mBinding:Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->mPresenter:Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughView;->mBinding:Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;)V

    return-void
.end method
