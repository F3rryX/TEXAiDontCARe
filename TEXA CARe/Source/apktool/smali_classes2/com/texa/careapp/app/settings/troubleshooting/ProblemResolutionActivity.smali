.class public Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ProblemResolutionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 28
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0033

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;)V

    .line 41
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    const v0, 0x7f0a02a7

    .line 48
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 49
    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
