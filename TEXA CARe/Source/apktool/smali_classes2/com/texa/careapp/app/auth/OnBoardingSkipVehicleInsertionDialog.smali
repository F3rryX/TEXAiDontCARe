.class public Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;
.super Lcom/texa/care/navigation/Screen;
.source "OnBoardingSkipVehicleInsertionDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnBoardingSkipVehicleInsertionDialog"


# instance fields
.field private final mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private final mApplication:Lcom/texa/careapp/CareApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, "activity is marked @NonNull but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "careApplication is marked @NonNull but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    return-void
.end method

.method private skipInsertion()V
    .locals 4

    .line 32
    new-instance v0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 33
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->goBack()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0186

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0184

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007e

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 49
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-OnBoardingSkipVehicleInsertionDialog(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->skipInsertion()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-OnBoardingSkipVehicleInsertionDialog(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;->goBack()V

    return-void
.end method
