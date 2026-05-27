.class public Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SosPrerequisiteActivity.java"


# static fields
.field private static final SOS_ID:Ljava/lang/String; = "SOS_ID"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SOS_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p0, 0x10000000

    .line 34
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 41
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)V

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SOS_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ServiceDataModel uuid == null"

    .line 46
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "local_notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 60
    :cond_2
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a00d7

    .line 61
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Lcom/texa/careapp/utils/ServiceDataManager;->getServiceByUid(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
