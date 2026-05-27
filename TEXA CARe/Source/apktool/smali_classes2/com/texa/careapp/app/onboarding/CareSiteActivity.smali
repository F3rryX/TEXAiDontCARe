.class public Lcom/texa/careapp/app/onboarding/CareSiteActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "CareSiteActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CareSiteActivity"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-onboarding-CareSiteActivity(Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 23
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->setContentView(I)V

    const p1, 0x7f0a0044

    .line 24
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/CareSiteActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/CareSiteActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/CareSiteActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 27
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 29
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/onboarding/CareSiteScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareSiteActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/onboarding/CareSiteScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
