.class public Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ServicesSubscriptionManagerActivity.java"


# static fields
.field private static serviceDataModelId:Ljava/lang/String;


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static getServiceDataModelId()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->serviceDataModelId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    .line 30
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 33
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;)V

    .line 35
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "serviceDataModelId"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->serviceDataModelId:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 45
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 46
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;

    invoke-direct {v0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
