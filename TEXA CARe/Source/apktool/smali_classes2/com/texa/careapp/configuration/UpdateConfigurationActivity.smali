.class public Lcom/texa/careapp/configuration/UpdateConfigurationActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "UpdateConfigurationActivity.java"


# static fields
.field private static final PARAM_START_MAIN_ACTIVITY:Ljava/lang/String; = "start-main-activity-param"

.field public static final TAG:Ljava/lang/String; = "UpdateConfigurationActivity"

.field private static final TIME_TO_START_UPDATE_CONFIGURATION:I = 0x3e8


# instance fields
.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mConfirmButton:Landroid/widget/TextView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnCreate:Z

.field private mPrerequisiteDisposable:Lio/reactivex/disposables/Disposable;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRxAccessory:Lcom/texa/care/eco_driving/RxAccessory;

.field private mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

.field private mShouldStartMainActivity:Z

.field private mSkipButton:Landroid/widget/TextView;

.field private mUpdateMessage:Landroid/widget/TextView;

.field private mUpdateMessageSecondary:Landroid/widget/TextView;

.field private mUpdateMessageSuccess:Landroid/widget/TextView;

.field protected mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private message1:Landroidx/appcompat/widget/AppCompatTextView;

.field private message2:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public static synthetic $r8$lambda$Yrvcux2diLmEiyMzamT04F8CP9k(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onDeviceConnected()V

    return-void
.end method

.method public static synthetic $r8$lambda$w0PGb73x0A9L9hbXh9VxYsihcu8(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 469
    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public static buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 103
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private checkCAReBTConnected()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#checkCAReBTConnected() == true"

    .line 158
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const v0, 0x7f110d18

    .line 161
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->showSnackBar(I)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "#checkCAReBTConnected() == false"

    .line 162
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkCAReOBDConnected()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isOBDConnected(Lcom/texa/carelib/care/accessory/Accessory;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "#checkCAReOBDConnected() == true"

    .line 174
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const v0, 0x7f110d19

    .line 177
    invoke-direct {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->showSnackBar(I)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "#checkCAReOBDConnected() == false"

    .line 178
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkOnResume()V
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    iput-boolean v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mOnCreate:Z

    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->checkCAReBTConnected()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0, v2}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->checkCAReOBDConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-direct {p0, v2}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "checkOnResume"

    .line 238
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private closeActivity()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->finish()V

    .line 439
    iget-boolean v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mShouldStartMainActivity:Z

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private configurationStarter()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxCommunication;->observeCommunicationStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 261
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 262
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    .line 263
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    .line 264
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda10;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda10;

    .line 275
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    .line 276
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 284
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 285
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 286
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 287
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    new-instance v2, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    .line 288
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mPrerequisiteDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private deleteOldVehicleDTC()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DtcModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 421
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

    .line 423
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

    .line 428
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 430
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

    .line 432
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

    .line 410
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 412
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

    .line 414
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

    .line 450
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->deleteOldVehicleParams()V

    .line 451
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->deleteOldVehicleDTC()V

    .line 452
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->deleteOldVehicleLamps()V

    .line 453
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const v1, 0x7f1100af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 454
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private displayUpdateRetryButton()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 464
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private hideConfirmButton()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$configurationStarter$3(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onDeviceConnected()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareConnected()V

    .line 342
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mPrerequisiteDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const v0, 0x7f1100a7

    .line 343
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KO_CONTENTS-VEHICLE_VIN_MISMATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11009c

    .line 346
    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->displayUpdateRetryButton()V

    .line 354
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    return-void
.end method

.method private parseExtras(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "start-main-activity-param"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mShouldStartMainActivity:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private showSnackBar(I)V
    .locals 2

    const v0, 0x1020002

    .line 185
    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0413

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private unRegisterListeners()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$configurationStarter$1$com-texa-careapp-configuration-UpdateConfigurationActivity(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareDisconnected()V

    return-void
.end method

.method public synthetic lambda$configurationStarter$2$com-texa-careapp-configuration-UpdateConfigurationActivity(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/CommunicationStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 268
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mRxAccessory:Lcom/texa/care/eco_driving/RxAccessory;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/RxAccessory;->observeStatus()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "care is not connected"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$configurationStarter$4$com-texa-careapp-configuration-UpdateConfigurationActivity(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v0

    .line 279
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const-wide v2, 0x407f400000000000L    # 500.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 280
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 282
    :catch_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "parameters are not correct"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$configurationStarter$5$com-texa-careapp-configuration-UpdateConfigurationActivity(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->hideConfirmButton()V

    .line 291
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 292
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->startToUpdateWithDelay()V

    goto :goto_0

    .line 294
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "engine is off or vehicle is in motion"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$displayUpdateCompletedButton$7$com-texa-careapp-configuration-UpdateConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->closeActivity()V

    return-void
.end method

.method public synthetic lambda$displayUpdateRetryButton$8$com-texa-careapp-configuration-UpdateConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->configurationStarter()V

    return-void
.end method

.method public synthetic lambda$new$9$com-texa-careapp-configuration-UpdateConfigurationActivity(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 470
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 472
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 473
    sget-object p1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    new-instance p1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-configuration-UpdateConfigurationActivity(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->closeActivity()V

    return-void
.end method

.method public synthetic lambda$startToUpdateWithDelay$6$com-texa-careapp-configuration-UpdateConfigurationActivity()V
    .locals 3

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->parseExtras(Landroid/content/Intent;)V

    const p1, 0x7f0d0040

    .line 111
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    .line 112
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 113
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessagePrimary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    .line 114
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessageSecondary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    .line 115
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->confirm:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mConfirmButton:Landroid/widget/TextView;

    .line 116
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateSkip:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    .line 117
    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessageSuccess:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSuccess:Landroid/widget/TextView;

    .line 119
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessage1:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->message1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessage2:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->message2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    .line 123
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "remote_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_REMOTE_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    :cond_0
    new-instance p1, Lcom/texa/care/eco_driving/RxAccessory;

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-direct {p1, v0}, Lcom/texa/care/eco_driving/RxAccessory;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mRxAccessory:Lcom/texa/care/eco_driving/RxAccessory;

    .line 128
    new-instance p1, Lcom/texa/care/eco_driving/RxCommunication;

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {p1, v0}, Lcom/texa/care/eco_driving/RxCommunication;-><init>(Lcom/texa/carelib/communication/Communication;)V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    .line 129
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 130
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->message1:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 132
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->message2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mOnCreate:Z

    .line 137
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mPrerequisiteDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 334
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE_COMPLETED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateErrorEvent;->getException()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Update configuration error"

    .line 336
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->getProgress()I

    move-result v0

    .line 374
    invoke-virtual {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 376
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

    .line 377
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_2

    .line 380
    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 381
    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 383
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->hideConfirmButton()V

    .line 384
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateSuccessEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 318
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE_COMPLETED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 319
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mUpdateMessageSuccess:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->displayUpdateCompletedButton()V

    .line 325
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareConnected()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 253
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 255
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->unRegisterListeners()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 205
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->registerListeners()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    iget-boolean v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mShouldStartMainActivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#onResume() mShouldStartMainActivity: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-boolean v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mShouldStartMainActivity:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mSkipButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->configurationStarter()V

    .line 213
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->checkOnResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startToUpdateWithDelay()V
    .locals 4

    .line 305
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mPrerequisiteDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 307
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;

    const v2, 0x7f1108df

    invoke-virtual {p0, v2}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$ConfigurationUpdateEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
