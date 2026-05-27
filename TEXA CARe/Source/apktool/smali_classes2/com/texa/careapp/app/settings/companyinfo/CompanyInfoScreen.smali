.class public Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;
.super Lcom/texa/care/navigation/Screen;
.source "CompanyInfoScreen.java"


# static fields
.field private static NEED_TO_SHOW_LEGAL_RAPPRESENTATIVE:Z = false

.field private static NEED_TO_SHOW_PEC:Z = true

.field private static final TAG:Ljava/lang/String; = "CompanyInfoScreen"


# instance fields
.field private binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$jrWcYNmKWtxJrh1zA-qmwKwChU0(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->clickGoToCompanySite(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method

.method private clickGoToCompanySite(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v0, 0x7f1108d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 120
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initTextViewValue()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f110b8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewRegisteredOffice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f110043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewAdministrativeHeadquartersPlant:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f1108cf

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f110d2a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f1108d0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f110c2a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f110b86

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f1108d1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1108cc

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_4
    sget-boolean v0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->NEED_TO_SHOW_LEGAL_RAPPRESENTATIVE:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f1108d2

    new-array v4, v2, [Ljava/lang/Object;

    const v6, 0x7f1108d4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 94
    iget-object v3, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v3, v3, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo4:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f1108d6

    new-array v4, v2, [Ljava/lang/Object;

    const v6, 0x7f1108d7

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 101
    iget-object v3, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v3, v3, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyPhone:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f1108cd

    new-array v4, v2, [Ljava/lang/Object;

    const v6, 0x7f1108ce

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 105
    iget-object v3, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v3, v3, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyFax:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_8
    sget-boolean v0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->NEED_TO_SHOW_PEC:Z

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f110b57

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f110b58

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 110
    iget-object v1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo5:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanyInfo5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)V

    .line 37
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->binding:Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;

    .line 38
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenCompanyInfoBinding;->textviewCompanySite:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b1

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;->initTextViewValue()V

    return-void
.end method
