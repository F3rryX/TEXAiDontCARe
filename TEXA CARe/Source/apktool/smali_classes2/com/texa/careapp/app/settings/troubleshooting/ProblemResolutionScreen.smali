.class public Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ProblemResolutionScreen.java"


# static fields
.field private static final END_CURRENT_TRIP_TIMEOUT:I = 0x78

.field private static final SHOW_ERROR:I = 0x5dc

.field private static final START_ENGINE_TIMEOUT:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "ProblemResolutionScreen"

.field private static final TRY_AGAIN_TIMEOUT:I = 0x1f4

.field private static mBluetoothStepId:[I = null

.field private static mCareStepId:[I = null

.field private static mTripStepId:[I = null

.field private static mTurnOffStepId:[I = null

.field private static final state_error:I = 0x7f080124

.field private static final state_ok:I = 0x7f0800fe


# instance fields
.field protected communication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothImg:Landroid/widget/ImageView;

.field private mButtonStartProcedure:Landroid/widget/RelativeLayout;

.field private mCareImg:Landroid/widget/ImageView;

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCareProgress:Landroid/widget/ProgressBar;

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mCompletedDiagnostic:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mTempImageView:Landroid/widget/ImageView;

.field private mTempProgressBar:Landroid/widget/ProgressBar;

.field private mTripImg:Landroid/widget/ImageView;

.field private mTripProgress:Landroid/widget/ProgressBar;

.field private mTurnOffImg:Landroid/widget/ImageView;

.field private mTurnOffProgress:Landroid/widget/ProgressBar;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private problemResolutionActivity:Landroid/app/Activity;

.field private showRunnableError:Ljava/lang/Runnable;

.field protected texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private tripDataSub:Lio/reactivex/disposables/Disposable;

.field private tripTroubleSub:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$QRLR0F6bLsfqgDPMq6S_vtV7Pdw(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->onDiagnosticClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 66
    fill-array-data v1, :array_0

    sput-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothStepId:[I

    new-array v1, v0, [I

    .line 67
    fill-array-data v1, :array_1

    sput-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareStepId:[I

    new-array v1, v0, [I

    .line 68
    fill-array-data v1, :array_2

    sput-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffStepId:[I

    new-array v0, v0, [I

    .line 69
    fill-array-data v0, :array_3

    sput-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a0468
        0x7f0a0462
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0469
        0x7f0a0463
    .end array-data

    :array_2
    .array-data 4
        0x7f0a046b
        0x7f0a0465
    .end array-data

    :array_3
    .array-data 4
        0x7f0a046a
        0x7f0a0464
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 175
    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    .line 192
    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showRunnableError:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$2;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->problemResolutionActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ProgressBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic lambda$observeRpmAndSpeedUnderThreshold$7(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    .line 470
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeRpmUnderThreshold$5(FLcom/texa/careapp/model/VehicleParam;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    float-to-double p0, p0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeRpmUnderThreshold$6(Lcom/texa/careapp/model/VehicleParam;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    .line 465
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeSpeedUnderThreshold$3(FLcom/texa/careapp/model/VehicleParam;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    float-to-double p0, p0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeSpeedUnderThreshold$4(Lcom/texa/careapp/model/VehicleParam;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x1

    .line 458
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateTripStatus$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private observeTripStopInfoTroubleshooting()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 475
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->observeRpmAndSpeedUnderThreshold(FF)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda14;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    .line 477
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    invoke-static {v1}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v1

    .line 482
    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private onDiagnosticClicked(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 487
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->enableButton(Z)V

    .line 489
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->registerListeners()V

    .line 493
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->startStep()V

    .line 495
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 496
    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    .line 121
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;

    .line 122
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->imgBtDiagnostic:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->imgCareDiagnostic:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->progressCareDiagnostic:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    .line 125
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->imgTurnOffEngineDiagnostic:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->progressTurnOffEngineDiagnostic:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    .line 127
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->imgTripDiagnostic:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->progressTripDiagnostic:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    .line 129
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->containerCompletedDiagnostic:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->problemResolutionButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    .line 131
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenProblemResolutionBinding;->problemResolutionButton:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public checkEndTrip()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 429
    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s checkEndTrip()"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    const-string/jumbo v1, "turn_off_error"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempImageView:Landroid/widget/ImageView;

    .line 434
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempProgressBar:Landroid/widget/ProgressBar;

    .line 436
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 438
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_VISIBLE:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 439
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 441
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->observeTripStopInfoTroubleshooting()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    .line 442
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 443
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 444
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    new-instance v2, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    .line 445
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->tripTroubleSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public enableButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 231
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const-string v0, "enable"

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const v0, 0x7f08005b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const-string v0, "disable"

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    const v0, 0x7f08005c

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public getButton()Landroid/widget/RelativeLayout;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mButtonStartProcedure:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d4

    return v0
.end method

.method public initBluetooth(Z)Z
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempImageView:Landroid/widget/ImageView;

    .line 321
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_VISIBLE:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 323
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffStepId:[I

    sget v3, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v3}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 328
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    sget v3, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v3}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 336
    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s initBluetooth: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const-string v1, "bt_ok"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showError()V

    .line 345
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const-string v1, "bt_error"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return p1
.end method

.method public initCare(Z)Z
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const v3, 0x7f0800fe

    .line 384
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    const-string v3, "care_ok"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempProgressBar:Landroid/widget/ProgressBar;

    .line 391
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showError()V

    .line 393
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    const-string v3, "care_error"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    sget-object v3, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "%s initCare: %s"

    invoke-static {v3, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareStepId:[I

    sget v3, Lcom/texa/careapp/Constants;->ALPHA_VISIBLE:I

    invoke-virtual {p0, v0, v3}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 399
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffStepId:[I

    sget v3, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v3}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 400
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    sget v3, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v3}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 404
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return p1
.end method

.method public isBtReady()Z
    .locals 1

    .line 309
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCareReady()Z
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 373
    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$checkEndTrip$1$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->uploadCurrentTrip(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    return-void
.end method

.method public synthetic lambda$checkEndTrip$2$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 449
    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s on Error checkEndTrip()"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showError()V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 176
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 178
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    sget-object p1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$3;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->startProcedure()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeTripStopInfoTroubleshooting$10$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen()Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeTripStopInfo()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    .line 480
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$observeTripStopInfoTroubleshooting$8$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeTripStopInfoTroubleshooting$9$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Lcom/texa/carelib/care/trips/CurrentTrip;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$uploadCurrentTrip$11$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 534
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->updateTripStatus(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 536
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->updateTripStatus(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$uploadCurrentTrip$12$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 539
    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s on Error uploadCurrentTrip()"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->updateTripStatus(Z)V

    return-void
.end method

.method protected observeRpmAndSpeedUnderThreshold(FF)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 470
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->observeRpmUnderThreshold(F)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->observeSpeedUnderThreshold(F)Lio/reactivex/Observable;

    move-result-object p2

    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;

    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected observeRpmUnderThreshold(F)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeEngineRpm()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda2;-><init>(F)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;

    .line 465
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected observeSpeedUnderThreshold(F)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeVehicleSpeed()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda3;-><init>(F)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda1;

    .line 458
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showRunnableError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error"

    .line 163
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->unRegisterListeners()V

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->stopHighFreqUpdate()V

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->tripTroubleSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->tripDataSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->startStep()V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->enableButton(Z)V

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->startHighFreqUpdate()V

    return-void
.end method

.method public registerListeners()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setAlpha([II)V
    .locals 6

    .line 277
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 279
    :try_start_0
    iget-object v4, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->problemResolutionActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 281
    invoke-virtual {v3}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, " set Alpha exception "

    .line 283
    invoke-static {v3, v5, v4}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showError()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showRunnableError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Exception"

    .line 359
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showRunnableError:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startProcedure()V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->isBtReady()Z

    move-result v0

    .line 416
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->initBluetooth(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->isCareReady()Z

    move-result v0

    .line 419
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->initCare(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->checkEndTrip()V

    :cond_0
    return-void
.end method

.method public startStep()V
    .locals 2

    .line 252
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 253
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 254
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 255
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public unRegisterListeners()V
    .locals 2

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 297
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateTripStatus(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 545
    sget-object v2, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s updateTripStatus(boolean)"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->showError()V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 550
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    const v1, 0x7f0800fe

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 555
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCompletedDiagnostic:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda7;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->enableButton(Z)V

    .line 559
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->unRegisterListeners()V

    return-void
.end method

.method public uploadCurrentTrip(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 500
    sget-object v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s uploadCurrentTrip(CurrentTrip)"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffImg:Landroid/widget/ImageView;

    const-string/jumbo v1, "turn_off_ok"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempImageView:Landroid/widget/ImageView;

    .line 506
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTempProgressBar:Landroid/widget/ProgressBar;

    .line 508
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTurnOffProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 511
    sget-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mTripStepId:[I

    sget v1, Lcom/texa/careapp/Constants;->ALPHA_VISIBLE:I

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->setAlpha([II)V

    .line 514
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "VehicleModel NULL  <-- mVehicleObserver.getCurrentVehicle()"

    .line 516
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 520
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 524
    :try_start_0
    invoke-static {p1, v0}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/CurrentTrip;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TripModel.from() exception"

    .line 526
    invoke-static {p1, v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {p1, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateTripData(Lcom/texa/careapp/model/TripModel;)Lio/reactivex/Observable;

    move-result-object p1

    .line 530
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 531
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    new-instance v1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    .line 532
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->tripDataSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method
