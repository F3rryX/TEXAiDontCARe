.class public Lcom/texa/careapp/app/onboarding/StartEngineScreen;
.super Lcom/texa/care/navigation/Screen;
.source "StartEngineScreen.java"


# static fields
.field private static final ACTION_NOTIFICATION:I = 0x0

.field private static final ACTION_OPEN_SEGNALATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "StartEngineScreen"

.field private static final TIME_TO_WAIT:I = 0x3e


# instance fields
.field private dongle:Lcom/texa/careapp/model/DongleModel;

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mApplication:Lcom/texa/careapp/CareApplication;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEngineDisposable:Lio/reactivex/disposables/Disposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTimerDisposable:Lio/reactivex/disposables/Disposable;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private shouldCreateNewVehicle:Z

.field private shouldResetVin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldCreateNewVehicle:Z

    .line 109
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 112
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 113
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 114
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    return-object p0
.end method

.method private checkVehicleData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/model/VehicleDataModelEntity;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, p2}, Lcom/texa/careapp/model/VehicleDataModelEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->postVehicleData(Lcom/texa/careapp/model/VehicleDataModelEntity;)Lio/reactivex/Observable;

    move-result-object p1

    .line 198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda18;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda23;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 199
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 197
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createNewVehicle()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/model/VehicleModelEntity;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 300
    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/texa/careapp/model/VehicleModelEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->vehicleInsertion(Lcom/texa/careapp/model/VehicleModelEntity;)Lio/reactivex/Observable;

    move-result-object v1

    .line 301
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 302
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda21;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v3, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 303
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private getUserVehicleData(Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, p2}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda14;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    .line 320
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    new-instance p1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 334
    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 319
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private getVehiclesDetails(Ljava/lang/String;)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 369
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 370
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    new-instance p1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 371
    invoke-virtual {v1, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 368
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic lambda$observeEngine$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error in timer observable for engine"

    .line 162
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$resetConfiguration$7()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private observeEngine()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEngineDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 147
    new-instance v0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 148
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;-><init>(Lcom/texa/careapp/model/DongleModel;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V

    .line 150
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 151
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060072

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 155
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e

    invoke-static {v3, v4, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda22;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    sget-object v3, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda12;

    .line 156
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTimerDisposable:Lio/reactivex/disposables/Disposable;

    .line 164
    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->observeVehicleID()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->observeSerialNumber()Lio/reactivex/Observable;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->observeInterpreterVersion()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 164
    invoke-static {v1, v2, v0, v3}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda17;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEngineDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onErrorAPI(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 444
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PLUG ERROR -> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;

    check-cast p1, Lretrofit2/HttpException;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, p1, v1}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;-><init>(Lretrofit2/HttpException;Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private onProcedureCompleted(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldCreateNewVehicle:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getUserVehicleData(Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->createNewVehicle()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onVinPlateValidation(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 11

    .line 226
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onProcedureCompleted(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    goto/16 :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->validatePlate(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    goto/16 :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iput-boolean v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldCreateNewVehicle:Z

    .line 234
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onProcedureCompleted(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    goto/16 :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "error_vehicle_already_configured"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iput-boolean v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldResetVin:Z

    .line 242
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onProcedureCompleted(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    goto/16 :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v4

    if-nez v4, :cond_7

    .line 247
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v4

    if-nez v4, :cond_5

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;

    iget-object v5, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v6, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v5, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/utils/VehiclesUsersEntity;

    invoke-direct {v2, p1, p2}, Lcom/texa/careapp/utils/VehiclesUsersEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->vehiclesUsersAssociation(Lcom/texa/careapp/utils/VehiclesUsersEntity;)Lio/reactivex/Completable;

    move-result-object p1

    .line 344
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 345
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    new-instance p2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 346
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 343
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private resetConfiguration(Ljava/lang/String;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->resetConfiguration(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object p1

    .line 268
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 269
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda16;->INSTANCE:Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda16;

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 270
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 267
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private validatePlate(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 3

    .line 278
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v0, v1, v2, p1}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 119
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenStartEngineBinding;

    .line 120
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenStartEngineBinding;->screenStartEngineNext:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenStartEngineBinding;->screenStartEngineProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    .line 122
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenStartEngineBinding;->screenStartEngineImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldResetVin:Z

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v0, v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->backButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildFilterIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->observeEngine()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 461
    sget-object v0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e6

    return v0
.end method

.method public synthetic lambda$checkVehicleData$5$com-texa-careapp-app-onboarding-StartEngineScreen(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plate found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isPlateFound()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nvin found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVinFound()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nvehicle exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isVehicleExists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nvehicle id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nuser associated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isUserAssociated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\ndongle associated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleAssociated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\ndongle association type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getDongleAssociationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ndongle configured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->isDongleConfigured()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 200
    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onVinPlateValidation(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    return-void
.end method

.method public synthetic lambda$checkVehicleData$6$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error checking vehicle data"

    .line 211
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$createNewVehicle$10$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "vehicle insertion failed"

    .line 308
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$createNewVehicle$11$com-texa-careapp-app-onboarding-StartEngineScreen(Lcom/texa/careapp/model/VehicleModelResponseEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->insertVehicle(Lcom/texa/careapp/model/VehicleModelResponseEntity;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda19;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    .line 304
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$createNewVehicle$12$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception obtaining the vehicle"

    .line 312
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$createNewVehicle$9$com-texa-careapp-app-onboarding-StartEngineScreen(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 306
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getUserVehicleData$13$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    iget-object p3, p3, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    .line 323
    iget-object v2, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->plate:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v3}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 329
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 331
    :cond_2
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleDataModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getUserVehicleData$14$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object p2, p2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->pairUserVehicle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getUserVehicleData$15$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception getting user vehicle data"

    .line 336
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Ljava/lang/Throwable;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$18$com-texa-careapp-app-onboarding-StartEngineScreen(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 381
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$19$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error updating vehicle"

    .line 383
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$20$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;)V
    .locals 9

    .line 388
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060072

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 389
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060019

    invoke-static {v1, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-string v7, "colorFilter"

    invoke-static {v2, v7, v3, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    const-wide/16 v0, 0x7d0

    .line 392
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    new-instance v0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$21$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "update vehicle completed"

    .line 386
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda15;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$22$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldResetVin:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->resetConfiguration(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setDescription(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1, p2}, Lcom/texa/careapp/utils/VehicleDataManager;->updateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda20;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V

    new-instance v2, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$getVehiclesDetails$23$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error getting vehicle details"

    .line 420
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$observeEngine$0$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEngineDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 160
    new-instance p1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeEngine$2$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)Lcom/texa/careapp/model/DongleModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleModel;->setVinCode(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/DongleModel;->setHwId(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p3}, Lcom/texa/careapp/model/DongleModel;->setInterpreterVersion(Ljava/math/BigInteger;)V

    .line 170
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    return-object v0
.end method

.method public synthetic lambda$observeEngine$3$com-texa-careapp-app-onboarding-StartEngineScreen(Lcom/texa/careapp/model/DongleModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "observeInfosForConfigurationUpdate onNext, dongleModel= %s"

    .line 174
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 177
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    .line 179
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->checkVehicleData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$observeEngine$4$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "observeInfosForConfigurationUpdate onError"

    .line 181
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 183
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    new-instance p1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$pairUserVehicle$16$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 349
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleModel;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->dongle:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setHwid(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleModel;->setUid(Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getVehiclesDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save dongle model to database."

    .line 356
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a24

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$pairUserVehicle$17$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception pairing vehicle"

    .line 361
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$resetConfiguration$8$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception resetting the configuration"

    .line 272
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onErrorAPI(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$ErrorConfirmedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->clearBackStack()V

    .line 434
    new-instance p1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog$ErrorConfirmedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->clearBackStack()V

    .line 440
    new-instance p1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->shouldCreateNewVehicle:Z

    .line 428
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;->mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->onProcedureCompleted(Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEngineDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
