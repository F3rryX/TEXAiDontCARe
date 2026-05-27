.class public Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;
.super Landroid/widget/LinearLayout;
.source "ParametersView.java"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;

.field private mPresenter:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0067

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->mBinding:Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->mPresenter:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->destroySub()V

    return-void
.end method

.method public setPresenter(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->mPresenter:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersView;->mBinding:Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->afterViewInjection(Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;)V

    return-void
.end method
