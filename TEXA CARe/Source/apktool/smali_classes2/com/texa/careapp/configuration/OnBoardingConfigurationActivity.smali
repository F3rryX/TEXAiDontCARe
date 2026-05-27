.class public Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "OnBoardingConfigurationActivity.java"


# static fields
.field private static final PARAM_START_MAIN_ACTIVITY:Ljava/lang/String; = "start-main-activity-param"

.field public static final TAG:Ljava/lang/String; = "OnBoardingConfigurationActivity"

.field private static final TIME_TO_START_UPDATE_CONFIGURATION:I = 0x3e8

.field private static final UUID:Ljava/lang/String; = "uid"


# instance fields
.field private country:Ljava/lang/String;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private finishingType:I

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mCountry:Landroid/widget/EditText;

.field private mCountryInput:Lcom/google/android/material/textfield/TextInputLayout;

.field protected mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFormValidator:Lcom/texa/careapp/utils/FormValidator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInputRequiredFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mKilometersInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mOdometer:Landroid/widget/EditText;

.field private mOnCreate:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRegistrationDate:Landroid/widget/EditText;

.field private mRegistrationDateInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private mRequiredFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mShouldStartMainActivity:Z

.field private mSkipButton:Landroid/widget/TextView;

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUpdateMessage:Landroid/widget/TextView;

.field private mUpdateMessageSecondary:Landroid/widget/TextView;

.field private mUpdateMessageSuccess:Landroid/widget/TextView;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field private updateResponse:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$PKELdIiwovjp2MnODZA65zg0x2k(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onDeviceConnected()V

    return-void
.end method

.method public static synthetic $r8$lambda$_QdOD1ww4dfgExJ_CV6P1e_R0R8(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->configurationStarter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->finishingType:I

    .line 627
    new-instance v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mKilometersInput:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public static buildFirstRunIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "start-main-activity-param"

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "uid"

    .line 142
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private checkCAReBTConnected()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#checkCAReBTConnected() == true"

    .line 226
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const v0, 0x7f110d18

    .line 229
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->showSnackBar(I)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "#checkCAReBTConnected() == false"

    .line 230
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkCAReOBDConnected()Z
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isOBDConnected(Lcom/texa/carelib/care/accessory/Accessory;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#checkCAReOBDConnected() == true"

    .line 242
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const v0, 0x7f110d19

    .line 245
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->showSnackBar(I)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "#checkCAReOBDConnected() == false"

    .line 246
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkInformation()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mInputRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mKilometersInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mInputRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountryInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mInputRequiredFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDateInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkOnResume()V
    .locals 3

    .line 277
    iget-boolean v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    iput-boolean v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOnCreate:Z

    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkCAReBTConnected()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 283
    invoke-direct {p0, v2}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkCAReOBDConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    invoke-direct {p0, v2}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "checkOnResume"

    .line 292
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private configurationStarter()V
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->hideConfirmButton()V

    .line 330
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkInformation()V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 333
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkCAReBTConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0, v1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkCAReOBDConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-direct {p0, v1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->startToUpdateWithDelay()V

    return-void
.end method

.method private deleteOldVehicleDTC()V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DtcModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 508
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Vehicle = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    goto :goto_0

    .line 510
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DtcModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    :goto_0
    return-void
.end method

.method private deleteOldVehicleLamps()V
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 517
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "vehicle = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    :goto_0
    return-void
.end method

.method private deleteOldVehicleParams()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 499
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "vehicle = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    :goto_0
    return-void
.end method

.method private displayUpdateCompletedButton()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const v1, 0x7f110b09

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 612
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private displayUpdateRetryButton()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 622
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getDefaultCountry()V
    .locals 4

    const-string v0, "phone"

    .line 253
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 255
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->country:Ljava/lang/String;

    return-void
.end method

.method private goOn()V
    .locals 3

    .line 651
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->validateInformation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->saveVehicleInformation()V

    .line 653
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/service/CareService;->buildTripStartedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 654
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ootb_completed_key"

    .line 655
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 657
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->checkCalibrationMinFirmwareVersion(Lcom/texa/carelib/care/accessory/Accessory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-boolean v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mShouldStartMainActivity:Z

    invoke-static {p0, v0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->buildIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 660
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 661
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    iget-boolean v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mShouldStartMainActivity:Z

    const-string v2, "start_main_activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    .line 665
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->finish()V

    goto :goto_1

    :cond_1
    const v0, 0x7f110034

    .line 667
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->showSnackBar(I)V

    :goto_1
    return-void
.end method

.method private hideConfirmButton()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private initFields()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getNation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getNation()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getNation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->country:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getDefaultCountry()V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 211
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getDefaultCountry()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic lambda$updateVehicleInformation$5()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Vehicle update completed"

    .line 595
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateVehicleInformation$6(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Vehicle update error: %s"

    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private moveDongleIfNeeded()V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 573
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 575
    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setHwid(Ljava/lang/String;)V

    .line 576
    :cond_0
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onDeviceConnected()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 4

    const v0, 0x7f1100a7

    .line 428
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KO_CONTENTS-VEHICLE_VIN_MISMATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11009c

    .line 431
    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->displayUpdateRetryButton()V

    .line 435
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060074

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private removeCurrentVehicle(Ljava/lang/String;)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 549
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 550
    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setCurrentVehicle(Z)V

    .line 551
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveVehicleInformation()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->removeCurrentVehicle(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->moveDongleIfNeeded()V

    .line 527
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->setOdometer()V

    .line 529
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setNation(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setRegistrationDate(Ljava/util/Date;)V

    .line 531
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setVin(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setCurrentVehicle(Z)V

    .line 533
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    .line 535
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->deleteOldVehicleParams()V

    .line 536
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->deleteOldVehicleDTC()V

    .line 537
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->deleteOldVehicleLamps()V

    .line 539
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/VehicleDataManager;->setVehicleLikeSelected(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    .line 540
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->updateVehicleInformation()V

    goto :goto_0

    .line 543
    :cond_0
    sget-object v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "vehicle model == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setOdometer()V
    .locals 2

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setStartingOdometer(F)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 561
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    .line 565
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 566
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setConfirmedByUser(Z)V

    .line 568
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    return-void
.end method

.method private showSnackBar(I)V
    .locals 2

    const v0, 0x1020002

    .line 264
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0413

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 268
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private updateVehicleInformation()V
    .locals 7

    .line 581
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT+1"

    .line 582
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 583
    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 586
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 591
    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/texa/careapp/model/VehicleModelUpdateEntity;

    iget-object v5, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 592
    invoke-virtual {v5}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->country:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    .line 591
    invoke-interface {v2, v3, v4}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateVehicle(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModelUpdateEntity;)Lio/reactivex/Completable;

    move-result-object v0

    .line 593
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 594
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda8;

    sget-object v2, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda9;->INSTANCE:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda9;

    .line 595
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->updateResponse:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private validateInformation()Z
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mInputRequiredFields:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRequiredFields:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredFields(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    sget-object v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Form not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public synthetic lambda$checkInformation$1$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/widget/DatePicker;III)V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 372
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$checkInformation$2$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/view/View;)V
    .locals 1

    .line 369
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-static {p0, p1, v0}, Lcom/texa/careapp/utils/DatePickerUtils;->showDatePicker(Landroid/content/Context;Ljava/util/Calendar;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    return-void
.end method

.method public synthetic lambda$checkInformation$3$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/view/View;)V
    .locals 2

    .line 375
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$displayUpdateCompletedButton$7$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->goOn()V

    return-void
.end method

.method public synthetic lambda$displayUpdateRetryButton$8$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 624
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->configurationStarter()V

    return-void
.end method

.method public synthetic lambda$new$9$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 628
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 630
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 631
    sget-object p1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    new-instance p1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-configuration-OnBoardingConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->goOn()V

    return-void
.end method

.method public synthetic lambda$startToUpdateWithDelay$4$com-texa-careapp-configuration-OnBoardingConfigurationActivity()V
    .locals 3

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 148
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 149
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;

    .line 150
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 151
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateMessagePrimary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    .line 152
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateMessageSecondary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    .line 153
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateConfirm:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    .line 154
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateSkip:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    .line 155
    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateMessageSuccess:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSuccess:Landroid/widget/TextView;

    .line 157
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateKilometersInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mKilometersInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 158
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateKilometersEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOdometer:Landroid/widget/EditText;

    .line 159
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateCountryInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountryInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 160
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateCountryEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    .line 161
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateRegistrationDateInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDateInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 162
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityCareOnboardingConfigurationBinding;->activityUpdateRegistrationDateEditText:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    .line 166
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "start-main-activity-param"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mShouldStartMainActivity:Z

    .line 167
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 169
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ootb_completed_key"

    .line 170
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRequiredFields:Ljava/util/ArrayList;

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mInputRequiredFields:Ljava/util/ArrayList;

    .line 176
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mOnCreate:Z

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCalendar:Ljava/util/Calendar;

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 183
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mRegistrationDate:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 185
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->initFields()V

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 673
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 674
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->updateResponse:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCountry:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;->getCountry()Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;->getCountry()Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->country:Ljava/lang/String;

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x2

    .line 420
    iput v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->finishingType:I

    .line 421
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Update configuration error"

    .line 422
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->getProgress()I

    move-result v0

    .line 461
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Info progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 464
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_2

    .line 467
    iget-object v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 468
    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 470
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->hideConfirmButton()V

    .line 471
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateSuccessEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 403
    iput p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->finishingType:I

    .line 404
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mUpdateMessageSuccess:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CARE_ENVIRONMENT"

    const-string v1, "CONFIGURED_ENVIRONMENT"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->displayUpdateCompletedButton()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 322
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 297
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 301
    iget-boolean v2, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mShouldStartMainActivity:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#onResume() mShouldStartMainActivity: %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget v1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->finishingType:I

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->displayUpdateRetryButton()V

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->displayUpdateCompletedButton()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 317
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkOnResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startToUpdateWithDelay()V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;

    const v2, 0x7f1108df

    invoke-virtual {p0, v2}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 392
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
