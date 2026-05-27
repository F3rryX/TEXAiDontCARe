.class public abstract Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenCompanyInfoBinding.java"


# instance fields
.field public final textviewAdministrativeHeadquartersPlant:Landroid/widget/TextView;

.field public final textviewCompanyFax:Landroid/widget/TextView;

.field public final textviewCompanyInfo1:Landroid/widget/TextView;

.field public final textviewCompanyInfo2:Landroid/widget/TextView;

.field public final textviewCompanyInfo3:Landroid/widget/TextView;

.field public final textviewCompanyInfo4:Landroid/widget/TextView;

.field public final textviewCompanyInfo5:Landroid/widget/TextView;

.field public final textviewCompanyPhone:Landroid/widget/TextView;

.field public final textviewCompanySite:Landroid/widget/TextView;

.field public final textviewRegisteredOffice:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewAdministrativeHeadquartersPlant:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyFax:Landroid/widget/TextView;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo1:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo2:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo3:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo4:Landroid/widget/TextView;

    .line 59
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo5:Landroid/widget/TextView;

    .line 60
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyPhone:Landroid/widget/TextView;

    .line 61
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanySite:Landroid/widget/TextView;

    .line 62
    iput-object p13, p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewRegisteredOffice:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b1

    .line 117
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 1

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 1

    .line 68
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b1

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    return-object p0
.end method
