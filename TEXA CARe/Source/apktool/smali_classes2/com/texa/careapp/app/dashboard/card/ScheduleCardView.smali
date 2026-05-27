.class public Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;
.super Landroid/widget/LinearLayout;
.source "ScheduleCardView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleCardView"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

.field private mPresenter:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0057

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    return-object v0
.end method

.method public setPresenter(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->mBinding:Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardView;->mPresenter:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->updateCard()V

    return-void
.end method
