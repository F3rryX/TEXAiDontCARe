.class public Lcom/texa/careapp/app/onboarding/SellerMapActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SellerMapActivity.java"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-onboarding-SellerMapActivity(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0035

    .line 21
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->setContentView(I)V

    const p1, 0x7f0a0055

    .line 22
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/SellerMapActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/SellerMapActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/SellerMapActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 24
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 26
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
