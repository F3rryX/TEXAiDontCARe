.class public Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsVehicleScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsVehicleScreen"

.field public static blockGetExtraFromIntent:Z

.field public static blockSyncThresholds:Z

.field public static blockSyncVehicleData:Z


# instance fields
.field private addedThresholdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;"
        }
    .end annotation
.end field

.field private dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private exhaustExp:Lcom/texa/careapp/model/ThresholdModel;

.field private inspection:Lcom/texa/careapp/model/ThresholdModel;

.field private insurance2Exp:Lcom/texa/careapp/model/ThresholdModel;

.field private insuranceExp:Lcom/texa/careapp/model/ThresholdModel;

.field private layoutAutoClub:Landroid/widget/RelativeLayout;

.field private layoutCarPayment:Landroid/widget/RelativeLayout;

.field private layoutGarage:Landroid/widget/RelativeLayout;

.field private layoutInsurancePayment:Landroid/widget/RelativeLayout;

.field private layoutPark:Landroid/widget/RelativeLayout;

.field private layoutPassHighway:Landroid/widget/RelativeLayout;

.field private layoutPassZtl:Landroid/widget/RelativeLayout;

.field private layoutTheftFireInsurancePayment:Landroid/widget/RelativeLayout;

.field private final mActivity:Landroid/app/Activity;

.field private mAutoClubDate:Lcom/texa/careapp/views/EditableDateView;

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCarPaymentDate:Lcom/texa/careapp/views/EditableDateView;

.field private mColor:Landroid/widget/TextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mExpExhaustDate:Lcom/texa/careapp/views/EditableDateView;

.field private mExpInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

.field private mExpTaxDate:Lcom/texa/careapp/views/EditableDateView;

.field private mExpTheftFireInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

.field private mGarageDate:Lcom/texa/careapp/views/EditableDateView;

.field private mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

.field private mInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

.field private mOdometer:Landroid/widget/TextView;

.field private mOdometerValue:Ljava/lang/String;

.field private mParkDate:Lcom/texa/careapp/views/EditableDateView;

.field private mPassHighwayDate:Lcom/texa/careapp/views/EditableDateView;

.field private mPassZtlDate:Lcom/texa/careapp/views/EditableDateView;

.field private mPlate:Landroid/widget/TextView;

.field private mRegistrationDate:Landroid/widget/TextView;

.field private mRegistrationDateValue:Ljava/util/Date;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTheftFireInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

.field private mTyreTypeSpinner:Landroid/widget/Spinner;

.field private mTyresFittingKm:Landroid/widget/EditText;

.field private mTyresSwapKm:Landroid/widget/EditText;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWarrantyDate:Lcom/texa/careapp/views/EditableDateView;

.field private taxExp:Lcom/texa/careapp/model/ThresholdModel;

.field private tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

.field private tyresSwap:Lcom/texa/careapp/model/ThresholdModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->addedThresholdList:Ljava/util/List;

    .line 139
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 143
    new-instance v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$002(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometerValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Landroid/content/Context;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometer:Landroid/widget/TextView;

    return-object p0
.end method

.method private deleteVehicleFromServer()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->deleteVehiclesUsersAssociation(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v1

    .line 562
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    new-instance v3, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    .line 563
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private goToNewThresholdClicked()V
    .locals 3

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    .line 543
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initThreshold(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    .line 380
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->inspection:Lcom/texa/careapp/model/ThresholdModel;

    .line 381
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

    .line 382
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresSwap:Lcom/texa/careapp/model/ThresholdModel;

    .line 383
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insurance2Exp:Lcom/texa/careapp/model/ThresholdModel;

    .line 384
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->taxExp:Lcom/texa/careapp/model/ThresholdModel;

    .line 385
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insuranceExp:Lcom/texa/careapp/model/ThresholdModel;

    .line 386
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->exhaustExp:Lcom/texa/careapp/model/ThresholdModel;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometer:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPlate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method private isValidInspectionDate(Ljava/util/Date;)Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mRegistrationDateValue:Ljava/util/Date;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private odometerClicked()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 624
    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110b12

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private removeAllVehicleAssociation()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#removeAllVehicleAssociation()"

    .line 576
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->disconnect()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/service/CareService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 584
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 586
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->delete()V

    .line 588
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/DongleDataManager;->deleteDongleByHwid(Ljava/lang/String;)V

    .line 590
    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->clearCache()V

    .line 592
    sget-object v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    const-string v1, "delete vehicle -> deleted to DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->count()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getUnselectedDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->setDongleLikeSelected()V

    .line 602
    :try_start_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 604
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    .line 607
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 610
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 614
    :goto_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 616
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method private scheduleThresholdSyncTask()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleThreshold()V

    return-void
.end method

.method private scheduleVehicleSyncTask()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    return-void
.end method

.method private setAllThresholdEditText()V
    .locals 3

    .line 390
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setInspectionDate()V

    .line 392
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V

    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresSwap:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V

    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTheftFireInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insurance2Exp:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 404
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTaxDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->taxExp:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 406
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insuranceExp:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 408
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpExhaustDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->exhaustExp:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method private setAllThresholds()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->isValidInspectionDate(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->inspection:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isSetThresholdValuesFromEditText(Lcom/texa/careapp/model/ThresholdModel;Landroid/widget/EditText;)Z

    .line 475
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->tyresSwap:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isSetThresholdValuesFromEditText(Lcom/texa/careapp/model/ThresholdModel;Landroid/widget/EditText;)Z

    .line 477
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insurance2Exp:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTheftFireInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    .line 479
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->taxExp:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTaxDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    .line 481
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->insuranceExp:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    .line 483
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->exhaustExp:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpExhaustDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    .line 485
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->addedThresholdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ThresholdModel;

    .line 486
    sget-object v2, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$2;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 512
    sget-object v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    const-string v2, "ThresholdModel Type not recognized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassZtlDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassHighwayDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCarPaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 500
    :pswitch_3
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTheftFireInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 497
    :pswitch_4
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 494
    :pswitch_5
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mGarageDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 491
    :pswitch_6
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mParkDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    .line 488
    :pswitch_7
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mAutoClubDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInspectionDate()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->inspection:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 414
    new-instance v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    .line 418
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/views/EditableDateView;->setListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private setOtherThresholdEditText()V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->addedThresholdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ThresholdModel;

    .line 432
    sget-object v2, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$2;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassZtlDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 463
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassZtl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassHighwayDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 459
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassHighway:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCarPaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 455
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutCarPayment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTheftFireInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 451
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutTheftFireInsurancePayment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 446
    :pswitch_4
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 447
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutInsurancePayment:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 442
    :pswitch_5
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mGarageDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 443
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutGarage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 438
    :pswitch_6
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mParkDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 439
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPark:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 434
    :pswitch_7
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mAutoClubDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 435
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutAutoClub:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVehicleData()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 365
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 367
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    :cond_1
    return-void
.end method

.method private setVehicleDataView()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPlate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 263
    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mRegistrationDateValue:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 265
    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mRegistrationDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mColor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDeleteVehicleDialog()V
    .locals 4

    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110917

    .line 551
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110918

    .line 552
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040013

    .line 553
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040009

    .line 554
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    .line 160
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;

    .line 161
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextUserPlate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPlate:Landroid/widget/TextView;

    .line 162
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextUserOdometer:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometer:Landroid/widget/TextView;

    .line 163
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextRegistrationDate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mRegistrationDate:Landroid/widget/TextView;

    .line 164
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextColor:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mColor:Landroid/widget/TextView;

    .line 165
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->settingsVehicleParentLayout:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 167
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewExpInspection:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    .line 168
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextExpTyresFitting:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresFittingKm:Landroid/widget/EditText;

    .line 169
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editTextExpTyresSwap:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyresSwapKm:Landroid/widget/EditText;

    .line 170
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewExpTheftFireInsurance:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTheftFireInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    .line 171
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewExpTax:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTaxDate:Lcom/texa/careapp/views/EditableDateView;

    .line 172
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewExpInsurance:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    .line 173
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewExpExhaust:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpExhaustDate:Lcom/texa/careapp/views/EditableDateView;

    .line 175
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewAutoClub:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mAutoClubDate:Lcom/texa/careapp/views/EditableDateView;

    .line 176
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutAutoClub:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutAutoClub:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewPark:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mParkDate:Lcom/texa/careapp/views/EditableDateView;

    .line 178
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutPark:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPark:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewGarage:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mGarageDate:Lcom/texa/careapp/views/EditableDateView;

    .line 180
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutGarage:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutGarage:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewInsuranceRata:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    .line 182
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutInsuranceRata:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutInsurancePayment:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewTheftFireInsuranceRata:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTheftFireInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    .line 184
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutTheftFireInsuranceRata:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutTheftFireInsurancePayment:Landroid/widget/RelativeLayout;

    .line 185
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewCarRata:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCarPaymentDate:Lcom/texa/careapp/views/EditableDateView;

    .line 186
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutCarRata:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutCarPayment:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewPassAutostrade:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassHighwayDate:Lcom/texa/careapp/views/EditableDateView;

    .line 188
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutPassAutostrade:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassHighway:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewPassZtl:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassZtlDate:Lcom/texa/careapp/views/EditableDateView;

    .line 190
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutPassZtl:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassZtl:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->editDateViewWarranty:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mWarrantyDate:Lcom/texa/careapp/views/EditableDateView;

    .line 192
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->tyresTypeSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    .line 194
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutExpInspection:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda14;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutExpInsurance:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutExpTheftFireInsurance:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutExpTax:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutExpExhaust:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutAddThreshold:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->deleteVehicle:Landroid/widget/Button;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->layoutWarranty:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassZtl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPassHighway:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda15;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutCarPayment:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda16;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutTheftFireInsurancePayment:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda17;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutInsurancePayment:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda18;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutGarage:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda19;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutPark:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda20;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->layoutAutoClub:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda21;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenVehicleSettingsBinding;->odometerButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error #onCreate()"

    .line 216
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initView()V

    .line 221
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz p1, :cond_1

    .line 222
    new-instance p1, Lcom/texa/careapp/utils/TyresTypeAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/utils/TyresTypeAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 226
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initAllThresholds()V

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 241
    sget-object v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00eb

    return v0
.end method

.method public initAddedThresholds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ThresholdModel;

    .line 273
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 275
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 277
    :cond_2
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_3

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 279
    :cond_3
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_4

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 281
    :cond_4
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_5

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 283
    :cond_5
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v2, v3, :cond_6

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 285
    :cond_6
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v1, v2, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 288
    :cond_7
    sget-object v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addedThresholds size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public initAllThresholds()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initThreshold(Lcom/texa/careapp/model/VehicleModel;)V

    .line 247
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setAllThresholdEditText()V

    .line 250
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getThresholds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initAddedThresholds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->addedThresholdList:Ljava/util/List;

    .line 251
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setOtherThresholdEditText()V

    return-void
.end method

.method public isValidate()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mOdometerValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$10$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassHighwayDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$11$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCarPaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$12$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTheftFireInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$13$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInsurancePaymentDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$14$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mGarageDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$15$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mParkDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$16$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mAutoClubDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$17$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->odometerClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTheftFireInsuranceDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$4$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpTaxDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$5$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mExpExhaustDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$6$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->goToNewThresholdClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$7$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->showDeleteVehicleDialog()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$8$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mWarrantyDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$9$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mPassZtlDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$deleteVehicleFromServer$19$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    const-string v1, "delete vehicle -> deleted to server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareDisconnected()V

    .line 566
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->removeAllVehicleAssociation()V

    return-void
.end method

.method public synthetic lambda$deleteVehicleFromServer$20$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/view/View;)V
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->deleteVehicleFromServer()V

    return-void
.end method

.method public synthetic lambda$deleteVehicleFromServer$21$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->TAG:Ljava/lang/String;

    const-string v1, "delete vehicle ->"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f110a4f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 570
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->deleteVehicleFromServer()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setInspectionDate$18$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen(Landroid/content/DialogInterface;)V
    .locals 1

    .line 415
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->isValidInspectionDate(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mInspectionDate:Lcom/texa/careapp/views/EditableDateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 322
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 339
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 342
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setVehicleData()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not save updated vehicle data in database."

    .line 348
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->blockSyncVehicleData:Z

    if-nez v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->scheduleVehicleSyncTask()V

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setAllThresholds()V

    .line 358
    sget-boolean v0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->blockSyncThresholds:Z

    if-nez v0, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->scheduleThresholdSyncTask()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 328
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 330
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setVehicleDataView()V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getThresholds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initAddedThresholds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->addedThresholdList:Ljava/util/List;

    .line 333
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->setOtherThresholdEditText()V

    :cond_0
    return-void
.end method

.method protected resetTextValue(Landroid/widget/EditText;Lcom/texa/careapp/model/ThresholdModel;)V
    .locals 1

    .line 533
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 534
    invoke-virtual {p2}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p2}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setThresholdValuesFromDateView(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/views/EditableDateView;)V
    .locals 2

    .line 520
    invoke-virtual {p2}, Lcom/texa/careapp/views/EditableDateView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p2}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p2}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 524
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Could not save the threshold."

    .line 526
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVehicle(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method
