.class public Lcom/texa/careapp/app/sos/ContactsActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ContactsActivity.java"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/app/sos/ContactsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 42
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 24
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/ContactsActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/ContactsActivity;)V

    .line 27
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 34
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 35
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/sos/ContactsScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
