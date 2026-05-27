.class public Lcom/texa/careapp/app/onboarding/OnBoardingActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "OnBoardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;
    }
.end annotation


# static fields
.field public static final BRAND:Ljava/lang/String; = "BRAND"

.field public static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final MODEL:Ljava/lang/String; = "MODEL"

.field public static final OOTB_FLAG:Ljava/lang/String; = "out_of_the_box_flag"

.field public static final PLATE:Ljava/lang/String; = "PLATE"

.field public static final TAG:Ljava/lang/String; = "OnBoardingActivity"


# instance fields
.field protected backButton:Landroid/widget/ImageView;

.field private brand:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private plate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->brand:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->model:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->plate:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->description:Ljava/lang/String;

    .line 95
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private deleteVehicleData()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->delete()V

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->delete()V

    .line 162
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->clearCache()V

    .line 164
    sget-object v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dongle in db is cleared -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v3, v1}, Lcom/texa/careapp/model/DongleDataManager;->isDongleInDb(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->resetVehicleObserver()V

    return-void
.end method

.method private factoryReset()V
    .locals 2

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    sget-object v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;->clearConfiguration(Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 184
    sget-object v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->TAG:Ljava/lang/String;

    const-string v1, "cant do clear configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$factoryReset$1(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "clearConfiguration fail"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    :cond_0
    sget-object p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->TAG:Ljava/lang/String;

    const-string v0, "configuration cleared"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$openDialogInfo$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private openDialogInfo()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "vehicleModel is null"

    .line 192
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 196
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110d50

    .line 197
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f110b2e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 198
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    const v2, 0x104000a

    .line 200
    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startWithFirstConfiguration()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->openDialogInfo()V

    .line 146
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->factoryReset()V

    .line 147
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->stopCareTasks()V

    .line 148
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->deleteVehicleData()V

    return-void
.end method

.method private stopCareTasks()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->stop()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-onboarding-OnBoardingActivity(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 99
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0031

    .line 100
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityOnBoardingBinding;

    .line 101
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityOnBoardingBinding;->activityOnBoardingBackBtn:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->backButton:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    .line 106
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_START:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings_add_vehicle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "out_of_the_box_flag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->startWithFirstConfiguration()V

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->disconnect()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 125
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a0051

    .line 126
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 127
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BRAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->brand:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->model:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PLATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->plate:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->description:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    invoke-direct {v1, p1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 227
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p2, v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    aget v1, p3, v0

    if-nez v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v2, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method public requestLocationPermission()V
    .locals 2

    .line 206
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->request([Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$2;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$1;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->brand:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->description:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->model:Ljava/lang/String;

    return-void
.end method

.method public setPlate(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->plate:Ljava/lang/String;

    return-void
.end method
