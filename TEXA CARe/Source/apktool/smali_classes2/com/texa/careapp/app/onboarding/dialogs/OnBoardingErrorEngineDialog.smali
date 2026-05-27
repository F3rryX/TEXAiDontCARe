.class public Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;
.super Lcom/texa/care/navigation/Screen;
.source "OnBoardingErrorEngineDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$ErrorConfirmedEvent;
    }
.end annotation


# static fields
.field private static final EMAIL:Ljava/lang/String; = "service.care@texa.com"

.field private static final SUBJECT:Ljava/lang/String; = "TEXA CARe"

.field public static final TAG:Ljava/lang/String; = "OnBoardingErrorEngineDialog"


# instance fields
.field private mApplication:Lcom/texa/careapp/CareApplication;

.field private mDongle:Lcom/texa/careapp/model/DongleModel;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserModel:Lcom/texa/careapp/model/UserModel;

.field private vehicleDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 52
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V

    .line 53
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 54
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    return-void
.end method

.method private assistance()V
    .locals 6

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Serial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mDongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    const-string v4, "\\(.+?\\)|\\[.+?\\]+"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    const-string v4, "\\|\\|"

    const-string v5, " "

    .line 78
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Vehicle: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->vehicleDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Email: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserModel:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserModel:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/UserModel;->hasPhoneNumberValidated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Phone: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserModel:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "mailto:"

    .line 87
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "service.care@texa.com"

    .line 88
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEXA CARe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mDongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 90
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private confirm()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 102
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 103
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$ErrorConfirmedEvent;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$ErrorConfirmedEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initBackPressureHandler()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda0;

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic lambda$initBackPressureHandler$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0177

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0178

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mDongle:Lcom/texa/careapp/model/DongleModel;

    .line 63
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserModel:Lcom/texa/careapp/model/UserModel;

    .line 65
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->initBackPressureHandler()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0078

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 130
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorEngineDialog(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->assistance()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorEngineDialog(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->confirm()V

    return-void
.end method
