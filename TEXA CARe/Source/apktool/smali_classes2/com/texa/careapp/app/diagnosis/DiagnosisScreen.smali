.class public Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;
.super Lcom/texa/care/navigation/Screen;
.source "DiagnosisScreen.java"


# static fields
.field private static ANIMATION_GREEN_CAR_DELAY:I = 0x0

.field private static ANIMATION_GREEN_CAR_DURATION:I = 0x0

.field private static ANIMATION_ICON_DELAY:I = 0x0

.field private static ANIMATION_ICON_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DiagnosisScreen"


# instance fields
.field private binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

.field private carNameLay:Landroid/widget/LinearLayout;

.field private connectionDisposable:Lio/reactivex/disposables/Disposable;

.field private mAdvancedAnimator:Landroid/animation/ValueAnimator;

.field private mAdvancedCircle:Landroid/widget/ImageView;

.field private mAdvancedIcon:Landroid/widget/ImageView;

.field private mAdvancedStroke:Landroid/widget/ImageView;

.field private mBatteryCircle:Landroid/widget/ImageView;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryIconAnimator:Landroid/animation/ValueAnimator;

.field private mBatteryLevelValue:Landroid/widget/TextView;

.field private mBatteryStroke:Landroid/widget/ImageView;

.field private mBatteryValueLabel:Landroid/widget/TextView;

.field private mCarAnimationListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

.field private mCarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

.field private mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEngineCircle:Landroid/widget/ImageView;

.field private mEngineIcon:Landroid/widget/ImageView;

.field private mEngineIconAnimator:Landroid/animation/ValueAnimator;

.field private mEngineStroke:Landroid/widget/ImageView;

.field private mEngineTemperatureLabel:Landroid/widget/TextView;

.field private mEngineTemperatureValue:Landroid/widget/TextView;

.field protected mLampsManager:Lcom/texa/careapp/lamps/LampsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLayout:Landroid/widget/LinearLayout;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mParameterAnimator:Landroid/animation/ValueAnimator;

.field private mParametersCircle:Landroid/widget/ImageView;

.field private mParametersIcon:Landroid/widget/ImageView;

.field private mParametersStroke:Landroid/widget/ImageView;

.field protected mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mServiceCircle:Landroid/widget/ImageView;

.field private mServiceIcon:Landroid/widget/ImageView;

.field private mServiceIconAnimator:Landroid/animation/ValueAnimator;

.field private mServiceLabel:Landroid/widget/TextView;

.field private mServiceStroke:Landroid/widget/ImageView;

.field private mServiceValue:Landroid/widget/TextView;

.field private mStandardAnimator:Landroid/animation/ValueAnimator;

.field private mStandardCircle:Landroid/widget/ImageView;

.field private mStandardIcon:Landroid/widget/ImageView;

.field private mStandardStroke:Landroid/widget/ImageView;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private pathView:Lcom/eftimoff/androipathview/PathView;

.field private strokeAnimation:Landroid/view/animation/Animation;

.field protected vehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-AU7gk9NCGnWjwIjmkns7jXBU38(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/model/VehicleParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->refreshViewForEngineTempChange(Lcom/texa/careapp/model/VehicleParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQ7uAfT1R7VbLzP86oVXrylcCv8(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startAppearAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$oc4lkAheeDThVRXF_K5wtVMmhRs(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->refreshViewForCommunicationChange(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x9IRDCev0GAOEy0HDpA7fRiThwE(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->refreshViewForLampsChange(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 153
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCarAnimationListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Landroid/content/Context;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startGreenCarPathAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStrokeVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setCirclesVisibility(I)V

    return-void
.end method

.method private advancedDiagnosisDialog()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 711
    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->isHaveAdvancedDiagnosis()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;-><init>(Z)V

    .line 710
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private advancedElementAppearData()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 523
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private advancedIconClicked()V
    .locals 4

    .line 647
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_DIAGNOSIS_ADVANCED_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 649
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->isHaveAdvancedDiagnosis()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 650
    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v2, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 655
    invoke-virtual {v3}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->isHaveAdvancedDiagnosis()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {v2, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;-><init>(Z)V

    .line 654
    invoke-virtual {v0, v2}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method private appearData()V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->engineElementAppearData()V

    .line 503
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->batteryElementAppearData()V

    .line 504
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->serviceElementAppearData()V

    .line 505
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->standardElementAppearData()V

    .line 506
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->advancedElementAppearData()V

    .line 507
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->parametersElementAppearData()V

    return-void
.end method

.method private batteryElementAppearData()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryLevelValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryValueLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 551
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 552
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private batteryIconClicked()V
    .locals 3

    .line 674
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_DIAGNOSIS_BATTERY_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 676
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->launchParamsPage()V

    return-void
.end method

.method private bindDimensionsView(Landroid/view/View;)V
    .locals 2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private createStrokeAnimation()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 589
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 590
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private engineElementAppearData()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 561
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private getColorFromEngineTemperature(Ljava/lang/Double;)I
    .locals 5

    .line 413
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x405bc00000000000L    # 111.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 414
    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne v0, v1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/PercentColorHelper;->getErrorColor()I

    move-result p1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4058400000000000L    # 97.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 417
    invoke-virtual {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p1, v0, :cond_1

    .line 418
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/PercentColorHelper;->getWarningColor()I

    move-result p1

    goto :goto_0

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/PercentColorHelper;->getOkColor()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic lambda$onResume$6(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$onResume$7(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "diagnosis on Error"

    .line 268
    invoke-static {v0, p0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setAnimator$8([F[FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 578
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 579
    aget v2, p1, v1

    aget v3, p0, v1

    aget v4, p1, v1

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 580
    aget v2, p1, v1

    aget p0, p0, v1

    aget p1, p1, v1

    sub-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p0, p0, p1

    add-float/2addr v2, p0

    aput v2, v0, v1

    if-eqz p2, :cond_0

    .line 582
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private launchParamsPage()V
    .locals 2

    .line 680
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 681
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private parametersElementAppearData()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParameterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private parametersIconClicked()V
    .locals 3

    .line 660
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_DIAGNOSIS_PARAMETERS_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 662
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->launchParamsPage()V

    return-void
.end method

.method private refreshViewForCommunicationChange(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "CommunicationObservable doOnNext -> value: %s"

    .line 156
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStrokeVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setDiagnosisViewBeforeComplete(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimationDuration(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setDiagnosisLoadingView(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 161
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/16 v1, 0xff

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStrokeAlpha(I)V

    .line 163
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->createStrokeAnimation()V

    .line 164
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startAppearAnimation()V

    .line 165
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startGreenCarPathAnimation()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStrokeAlpha(I)V

    .line 168
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStrokeGrey()V

    .line 169
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->createStrokeAnimation()V

    .line 170
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startAppearAnimation()V

    .line 171
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->startGreenCarPathAnimation()V

    :goto_0
    return-void
.end method

.method private refreshViewForEngineTempChange(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VehicleParamEngineTemperature doOnNext"

    .line 192
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getColorFromEngineTemperature(Ljava/lang/Double;)I

    move-result v0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setViewFromEngineTemperature(Ljava/lang/Double;I)V

    .line 197
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method private refreshViewForLampsChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LampStatusListObservable doOnNext"

    .line 176
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 179
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStandardView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 185
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAdvancedView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 187
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->standardElementAppearData()V

    .line 188
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->advancedElementAppearData()V

    return-void
.end method

.method private serviceElementAppearData()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 542
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private serviceIconClicked()V
    .locals 3

    .line 666
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_DIAGNOSIS_MAINTENANCE_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 668
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 669
    invoke-static {v0}, Lcom/texa/careapp/app/schedule/ScheduleActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAdvancedView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ")V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const v1, 0x7f060058

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 351
    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->isHaveAdvancedDiagnosis()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0600a8

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedAnimator:Landroid/animation/ValueAnimator;

    .line 354
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v3, :cond_0

    const v1, 0x7f0600a8

    :cond_0
    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 355
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060074

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedAnimator:Landroid/animation/ValueAnimator;

    .line 358
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v3, :cond_2

    const v1, 0x7f060074

    :cond_2
    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 359
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedAnimator:Landroid/animation/ValueAnimator;

    .line 363
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 364
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private setAnimationDuration(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 4

    .line 72
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    const/16 v3, 0x3e8

    if-ne p1, v0, :cond_0

    .line 73
    sput v3, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DURATION:I

    .line 74
    sput v3, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DELAY:I

    .line 75
    sput v2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DURATION:I

    .line 76
    sput v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DELAY:I

    goto :goto_0

    .line 78
    :cond_0
    sput v3, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DURATION:I

    .line 79
    sput v3, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DELAY:I

    .line 80
    sput v2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DURATION:I

    .line 81
    sput v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DELAY:I

    :goto_0
    return-void
.end method

.method private setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [F

    new-array v0, v0, [F

    .line 570
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 571
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 573
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 574
    sget p2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DURATION:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 575
    sget p2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_ICON_DELAY:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 576
    new-instance p2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, v1, p3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;-><init>([F[FLandroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBatteryLevelView(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 3

    .line 458
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getBatteryLevel(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/utils/BatteryLevel;

    move-result-object p1

    const v0, 0x7f060058

    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryIconAnimator:Landroid/animation/ValueAnimator;

    .line 461
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryLevelValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getStringRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryLevelValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 464
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result p1

    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryValueLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryLevelValue:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 469
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private setCirclesVisibility(I)V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setDiagnosisCompletedView(Lcom/texa/careapp/model/DongleModel;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->appearData()V

    return-void
.end method

.method private setDiagnosisLoadingView(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 5

    .line 480
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v0, :cond_1

    .line 484
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {p1, v2}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getLastParametersUpdate()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 489
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    .line 490
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110abb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->setPrefix(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setDiagnosisViewBeforeComplete(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 2

    .line 324
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setBatteryLevelView(Lcom/texa/careapp/model/VehicleModel;)V

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setEngineTemperatureView(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setServiceView(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 330
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setStandardView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 331
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAdvancedView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 332
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setParametersView(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 333
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setEngineTemperatureView(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 2

    .line 375
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getParameter(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object p1

    const v0, 0x7f0600a8

    if-eqz p1, :cond_1

    .line 376
    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v1, :cond_1

    .line 377
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "displayEngineTempIndicator: engine temperature is null"

    .line 379
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 381
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 382
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getColorFromEngineTemperature(Ljava/lang/Double;)I

    move-result p2

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setViewFromEngineTemperature(Ljava/lang/Double;I)V

    .line 388
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIconAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f060058

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 391
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 392
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide/high16 p1, -0x3fa7000000000000L    # -100.0

    .line 393
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getColorFromEngineTemperature(Ljava/lang/Double;)I

    move-result v1

    .line 394
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setViewFromEngineTemperature(Ljava/lang/Double;I)V

    .line 395
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, p2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIconAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method public static setLayoutHeight(Landroid/view/View;FF)V
    .locals 0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p2, p2

    .line 697
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 698
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static setLayoutWidth(Landroid/view/View;FF)V
    .locals 0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p2, p2

    .line 688
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setParametersView(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 5

    .line 369
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060058

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600a8

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParameterAnimator:Landroid/animation/ValueAnimator;

    .line 370
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p1, v4, :cond_0

    const v1, 0x7f0600a8

    :cond_0
    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 371
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private setServiceView(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 6

    .line 426
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getServiceScheduleInfo(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    move-result-object p1

    const v0, 0x7f060058

    const v1, 0x7f0600a8

    if-eqz p1, :cond_2

    .line 427
    sget-object v2, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v2, :cond_2

    const/4 p2, 0x0

    .line 429
    :try_start_0
    iget v2, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    if-gtz v2, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060074

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIconAnimator:Landroid/animation/ValueAnimator;

    .line 431
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f110a64

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 434
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIconAnimator:Landroid/animation/ValueAnimator;

    .line 437
    iget-object v2, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 438
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    aput-object p1, v5, p2

    const/4 p1, 0x1

    aput-object v2, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 441
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 444
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 446
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "service exception"

    .line 447
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIconAnimator:Landroid/animation/ValueAnimator;

    .line 451
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v3, :cond_3

    const v0, 0x7f0600a8

    :cond_3
    invoke-static {v2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 453
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    return-void
.end method

.method private setStandardView(Ljava/util/List;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const v0, 0x7f060058

    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600a8

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardAnimator:Landroid/animation/ValueAnimator;

    .line 340
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v3, :cond_0

    const v0, 0x7f0600a8

    :cond_0
    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 341
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060074

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimator(IILandroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardAnimator:Landroid/animation/ValueAnimator;

    .line 344
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v3, :cond_2

    const v0, 0x7f060074

    :cond_2
    invoke-static {v1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 345
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private setStrokeAlpha(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 282
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 283
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private setStrokeGrey()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060058

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 289
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 290
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 291
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 292
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 293
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private setStrokeVisibility(I)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setViewFromEngineTemperature(Ljava/lang/Double;I)V
    .locals 9

    .line 400
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 402
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 403
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600c4

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const p2, 0x7f110d07

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "%s %s"

    const-wide/high16 v6, -0x3fa7000000000000L    # -100.0

    cmpl-double v8, v0, v6

    if-eqz v8, :cond_0

    .line 405
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureValue:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureValue:Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "-"

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private standardElementAppearData()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 532
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private standardIconClicked()V
    .locals 3

    .line 640
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_DIAGNOSIS_STANDARD_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 642
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 643
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startAppearAnimation()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setDiagnosisCompletedView(Lcom/texa/careapp/model/DongleModel;)V

    :cond_0
    return-void
.end method

.method private startGreenCarPathAnimation()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->pathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0}, Lcom/eftimoff/androipathview/PathView;->useNaturalColors()V

    .line 630
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->pathView:Lcom/eftimoff/androipathview/PathView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView;->setFillAfter(Z)V

    .line 631
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->pathView:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0}, Lcom/eftimoff/androipathview/PathView;->getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    sget v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DELAY:I

    .line 632
    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    sget v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->ANIMATION_GREEN_CAR_DURATION:I

    .line 633
    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCarAnimationListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    .line 634
    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->listenerStart(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 635
    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->start()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 204
    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 205
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    .line 206
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    .line 207
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisContainer:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mLayout:Landroid/widget/LinearLayout;

    .line 208
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisCarPathview:Lcom/eftimoff/androipathview/PathView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->pathView:Lcom/eftimoff/androipathview/PathView;

    .line 209
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisCarName:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisDiagnosisStatus:Lcom/texa/careapp/views/RelativeTimeTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextView:Lcom/texa/careapp/views/RelativeTimeTextView;

    .line 211
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisDiagnosisStatusPlaceholder:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDiagnosisStatusTextViewPlaceholder:Landroid/widget/TextView;

    .line 212
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisBatteryStateValue:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryLevelValue:Landroid/widget/TextView;

    .line 213
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisBatteryStateLabel:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryValueLabel:Landroid/widget/TextView;

    .line 214
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisBatteryStateElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryStroke:Landroid/widget/ImageView;

    .line 215
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisBatteryStateImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryIcon:Landroid/widget/ImageView;

    .line 216
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisBatteryStateCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mBatteryCircle:Landroid/widget/ImageView;

    .line 218
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisEngineTemperatureValue:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureValue:Landroid/widget/TextView;

    .line 219
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisEngineTemperatureLabel:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineTemperatureLabel:Landroid/widget/TextView;

    .line 220
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisEngineTemperatureElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineStroke:Landroid/widget/ImageView;

    .line 221
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisEngineTemperatureImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineIcon:Landroid/widget/ImageView;

    .line 222
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisEngineTemperatureCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mEngineCircle:Landroid/widget/ImageView;

    .line 223
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisServiceLabel:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceLabel:Landroid/widget/TextView;

    .line 224
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisServiceValue:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceValue:Landroid/widget/TextView;

    .line 225
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisMaintenanceScheduledElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceStroke:Landroid/widget/ImageView;

    .line 226
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisMaintenanceScheduledImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceIcon:Landroid/widget/ImageView;

    .line 227
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisMaintenanceScheduledCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mServiceCircle:Landroid/widget/ImageView;

    .line 229
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisStandardElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardStroke:Landroid/widget/ImageView;

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisStandardImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardIcon:Landroid/widget/ImageView;

    .line 231
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisStandardCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mStandardCircle:Landroid/widget/ImageView;

    .line 233
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisAdvancedElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedStroke:Landroid/widget/ImageView;

    .line 234
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisAdvancedImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedIcon:Landroid/widget/ImageView;

    .line 235
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisAdvancedCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mAdvancedCircle:Landroid/widget/ImageView;

    .line 237
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisParametersElement:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersStroke:Landroid/widget/ImageView;

    .line 238
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisParametersImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersIcon:Landroid/widget/ImageView;

    .line 239
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisParametersCircle:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mParametersCircle:Landroid/widget/ImageView;

    .line 241
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisCarLayout:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->carNameLay:Landroid/widget/LinearLayout;

    .line 242
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->binding:Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->diagnosisAdvancedText:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_OPENED_DIAGNOSIS_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 246
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->carNameLay:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01001d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    .line 250
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setAnimationDuration(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 251
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->createStrokeAnimation()V

    .line 252
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setDiagnosisViewBeforeComplete(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 253
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->bindDimensionsView(Landroid/view/View;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b2

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->batteryIconClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->serviceIconClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->standardIconClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->advancedIconClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$4$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->parametersIconClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$5$com-texa-careapp-app-diagnosis-DiagnosisScreen(Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->advancedDiagnosisDialog()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 273
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 274
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->strokeAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->connectionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 259
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 261
    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    .line 262
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    .line 263
    invoke-virtual {v1}, Lcom/texa/careapp/lamps/LampsManager;->observeActiveLamps()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->vehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    .line 265
    invoke-virtual {v2}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeEngineTemp()Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    .line 266
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    .line 260
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda3;

    sget-object v2, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda2;

    .line 267
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->connectionDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
