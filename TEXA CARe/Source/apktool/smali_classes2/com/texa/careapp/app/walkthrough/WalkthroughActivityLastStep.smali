.class public Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;
.super Lcom/texa/careapp/base/BaseActivity;
.source "WalkthroughActivityLastStep.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WalkthroughActivityLastStep"


# instance fields
.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mShouldStartLogin:Z

.field private mShouldStartOutOfTheBox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 41
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private buyIt()V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/onboarding/SellerMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openCareWebSite()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/onboarding/CareSiteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private proceed()V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mShouldStartLogin:Z

    if-eqz v0, :cond_0

    .line 80
    const-class v0, Lcom/texa/careapp/app/auth/LoginActivity;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->shouldRequestPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-class v0, Lcom/texa/careapp/app/permission/PermissionActivity;

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mShouldStartOutOfTheBox:Z

    if-eqz v0, :cond_2

    .line 84
    const-class v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    goto :goto_0

    .line 86
    :cond_2
    const-class v0, Lcom/texa/careapp/app/MainActivity;

    .line 89
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f01001d

    const v2, 0x7f01001e

    .line 90
    invoke-virtual {p0, v0, v2}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->overridePendingTransition(II)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->openCareWebSite()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->buyIt()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->proceed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0044

    .line 55
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V

    const p1, 0x7f0a03c5

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a006d

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a006e

    .line 60
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mShouldStartLogin:Z

    .line 63
    iget-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mShouldStartOutOfTheBox:Z

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
