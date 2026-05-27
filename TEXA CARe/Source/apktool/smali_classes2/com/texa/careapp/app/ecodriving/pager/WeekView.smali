.class public Lcom/texa/careapp/app/ecodriving/pager/WeekView;
.super Landroid/widget/LinearLayout;
.source "WeekView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;

.field private mPresenter:Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00bf

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->mBinding:Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->mPresenter:Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->mBinding:Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->afterViewInjection(Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekView;->mPresenter:Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->updateSelected(J)V

    return-void
.end method
