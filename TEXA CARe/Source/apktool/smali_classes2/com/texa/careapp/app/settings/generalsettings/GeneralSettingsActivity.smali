.class public Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "GeneralSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 24
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 33
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;)V

    .line 37
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    const v0, 0x7f0a0205

    .line 44
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 45
    new-instance v0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;

    invoke-direct {v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
