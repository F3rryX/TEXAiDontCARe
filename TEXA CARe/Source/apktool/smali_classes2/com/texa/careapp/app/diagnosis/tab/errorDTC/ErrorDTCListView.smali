.class public Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;
.super Landroid/widget/LinearLayout;
.source "ErrorDTCListView.java"


# instance fields
.field private mPresenter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/DiagnosisType;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->init(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/DiagnosisType;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/DiagnosisType;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView$1;->$SwitchMap$com$texa$careapp$app$diagnosis$DiagnosisType:[I

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const p2, 0x7f0d008e

    .line 41
    invoke-static {p1, p2, p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->mView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0046

    .line 37
    invoke-static {p1, p2, p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->mView:Landroid/view/View;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->mPresenter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;

    invoke-interface {v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;->destroySub()V

    return-void
.end method

.method public setPresenter(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->mPresenter:Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCListView;->mView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;->afterViewInjection(Landroid/view/View;)V

    return-void
.end method
