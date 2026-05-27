.class public Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "VehicleAlreadyConfiguredScreenDialog.java"


# static fields
.field private static final ACTION_NOTIFICATION:I = 0x0

.field private static final ACTION_OPEN_REPORT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VehicleAlreadyConfiguredScreenDialog"


# instance fields
.field private hwId:Ljava/lang/String;

.field private mAction:I

.field private mApplication:Lcom/texa/careapp/CareApplication;

.field private mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private vehicleId:Ljava/lang/String;

.field private vin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V

    .line 52
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 53
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->hwId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->vin:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->vehicleId:Ljava/lang/String;

    .line 56
    iput p6, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mAction:I

    return-void
.end method

.method private goToBaseVehicleData()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->goBack()V

    .line 81
    iget v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mAction:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setPlate(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->openReport()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$openReport$2(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Error opening report"

    .line 99
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private openReport()V
    .locals 5

    .line 92
    new-instance v0, Lcom/texa/careapp/model/VehicleOwnershipEntity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->hwId:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->vin:Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->vehicleId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/careapp/model/VehicleOwnershipEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->openSegnalation(Lcom/texa/careapp/model/VehicleOwnershipEntity;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V

    sget-object v2, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda2;

    .line 94
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 7

    .line 61
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogVehicleAlreadyConfiguredBinding;

    .line 62
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogVehicleAlreadyConfiguredBinding;->dialogVehicleAlreadyConfiguredDescription:Landroid/widget/TextView;

    .line 63
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogVehicleAlreadyConfiguredBinding;->dialogVehicleAlreadyConfiguredBtn:Landroid/widget/TextView;

    .line 64
    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    iget v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mAction:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f110962

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v6}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110963

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f110964

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v6}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110965

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0080

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 114
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-VehicleAlreadyConfiguredScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->goToBaseVehicleData()V

    return-void
.end method

.method public synthetic lambda$openReport$1$com-texa-careapp-app-onboarding-dialogs-VehicleAlreadyConfiguredScreenDialog(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->finish()V

    .line 96
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
