.class public Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;
.super Landroid/widget/LinearLayout;
.source "DiagnosisCardView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagnosisCardView"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

.field private mPresenter:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;


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
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0053

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->updateCard()V

    return-void
.end method
