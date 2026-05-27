.class public Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SettingsServicesActivity.java"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 39
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    .line 21
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 24
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;)V

    .line 26
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 33
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 34
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    invoke-direct {v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 57
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
