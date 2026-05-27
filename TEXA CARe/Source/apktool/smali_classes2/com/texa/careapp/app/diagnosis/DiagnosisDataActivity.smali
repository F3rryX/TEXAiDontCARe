.class public Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "DiagnosisDataActivity.java"


# instance fields
.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 29
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "PAGE_PARAM_FLAG"

    .line 30
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private startMechanicActivity()V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/sos/MechanicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-app-diagnosis-DiagnosisDataActivity(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->startMechanicActivity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 39
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)V

    .line 40
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "local_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const p1, 0x7f0a00ab

    .line 43
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "PAGE_PARAM_FLAG"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    :cond_2
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a00d7

    .line 58
    invoke-virtual {p1, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 59
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;-><init>(Lcom/texa/careapp/CareApplication;I)V

    invoke-virtual {p1, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
