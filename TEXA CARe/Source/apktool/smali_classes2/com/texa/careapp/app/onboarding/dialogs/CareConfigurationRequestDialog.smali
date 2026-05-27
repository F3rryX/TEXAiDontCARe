.class public Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;
.super Lcom/texa/care/navigation/Screen;
.source "CareConfigurationRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_FIRST_CONFIGURATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CareConfigurationRequestDialog"


# instance fields
.field private layout:Landroid/view/View;

.field private final mAction:I

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLogInHelper:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mVehicles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mainActivity:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/app/MainActivity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/MainActivity;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    .line 60
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mVehicles:Ljava/util/List;

    .line 61
    iput p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mAction:I

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->layout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/MainActivity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mAction:I

    return p0
.end method

.method private clickConfirm()V
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    const-class v2, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x14000000

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "out_of_the_box_flag"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/app/service/CareService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 88
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/MainActivity;->finish()V

    .line 89
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->goBack()V

    return-void
.end method

.method private initBackPressureHandler()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$$ExternalSyntheticLambda0;

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic lambda$initBackPressureHandler$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)V

    .line 67
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;

    .line 68
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogBtnCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mainActivity:Lcom/texa/careapp/app/MainActivity;

    const v1, 0x7f1100a3

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->mVehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 72
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d007d

    iget-object v4, p1, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogVehicles:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->layout:Landroid/view/View;

    .line 73
    new-instance v2, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;Landroid/content/Context;Lcom/texa/careapp/model/VehicleModel;)V

    .line 75
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDialogNewConfigurationRequestBinding;->requestNewConfigurationDialogVehicles:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->initBackPressureHandler()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b8

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 105
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-CareConfigurationRequestDialog(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->clickConfirm()V

    return-void
.end method
