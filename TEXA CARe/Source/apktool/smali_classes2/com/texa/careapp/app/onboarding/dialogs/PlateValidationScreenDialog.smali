.class public Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "PlateValidationScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlateValidationScreenDialog"


# instance fields
.field private mApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 39
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 40
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    .line 41
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)V

    return-void
.end method

.method private plateIsCorrect()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->goBack()V

    return-void
.end method

.method private plateIsNotCorrect()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setPlate(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 66
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->goBack()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 6

    .line 46
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogPlateValidationBinding;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p1, Lcom/texa/careapp/databinding/DialogPlateValidationBinding;->dialogPlateValidationDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const v0, 0x7f110951

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogPlateValidationBinding;->dialogPlateValidationBtnConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogPlateValidationBinding;->dialogPlateValidationBtnNegative:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007b

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 81
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-PlateValidationScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->plateIsCorrect()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-PlateValidationScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;->plateIsNotCorrect()V

    return-void
.end method
