.class public Lcom/texa/careapp/app/dashboard/DashboardScreenV2;
.super Lcom/texa/care/navigation/Screen;
.source "DashboardScreenV2.java"


# static fields
.field public static mCanMoveCard:Z = true


# instance fields
.field private dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private image:Landroid/widget/ImageView;

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private mCircleAnimated:Z

.field private mCircleDisplayLabels1:Landroid/widget/TextView;

.field private mCircleDisplayLabels2:Landroid/widget/TextView;

.field private mCircleDisplayLabels3:Landroid/widget/TextView;

.field private mCircleDisplays1:Lcom/texa/careapp/views/CircleDisplay;

.field private mCircleDisplays2:Lcom/texa/careapp/views/CircleDisplay;

.field private mCircleDisplays3:Lcom/texa/careapp/views/CircleDisplay;

.field private mCirclePageIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDashboardEmergencyButton:Lcom/texa/careapp/views/DashboardEmergencyButton;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLampsManager:Lcom/texa/careapp/lamps/LampsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleArrowViewPager:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleLampsDisposable:Lio/reactivex/disposables/Disposable;

.field private mVehicleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

.field private mVehicleParamDisposable:Lio/reactivex/disposables/Disposable;

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Lcom/texa/careapp/views/ViewPagerContainer;

.field private vehicleName:Landroidx/appcompat/widget/AppCompatTextView;

.field private vehicleNameLay:Landroid/widget/RelativeLayout;


# direct methods
.method public static synthetic $r8$lambda$bzp2m_cfibQYU_cUfbzq-1cU1Kw(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->refreshDiagnosisCard(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTxf3dUvh08mf_SydDClgIqQ498(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->touchSosButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 741
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    .line 169
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 170
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayVehicleData(Lcom/texa/careapp/model/VehicleModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->updateBatteryCircleView()V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Ljava/util/HashMap;
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getLocationCar()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private displayBatteryIndicator(Lcom/texa/careapp/utils/BatteryLevel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    .line 464
    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getPercent()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p2, v1, v3, v2}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    const/4 v1, 0x0

    .line 465
    invoke-virtual {p2, v1}, Lcom/texa/careapp/views/CircleDisplay;->setDrawText(Z)V

    .line 466
    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getDrawableRes()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/texa/careapp/views/CircleDisplay;->setImageResId(I)V

    .line 467
    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 468
    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getStringRes()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private displayEmergencyButtonInformation()V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDashboardEmergencyButton:Lcom/texa/careapp/views/DashboardEmergencyButton;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/views/DashboardEmergencyButton;->bindTo(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method private displayEngineTempIndicator(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 611
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getParameter(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 613
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayEngineTempIndicator(Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->setEmptyCircle(Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    .line 619
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeEngineTemp()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    sget-object p2, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda11;

    .line 620
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleParamDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private displayEngineTempIndicator(Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 6

    .line 634
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "displayEngineTempIndicator: engine temperature is null"

    .line 637
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 643
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x405c000000000000L    # 112.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 644
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/PercentColorHelper;->getErrorColor()I

    move-result v1

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x4058800000000000L    # 98.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    .line 646
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/PercentColorHelper;->getWarningColor()I

    move-result v1

    goto :goto_0

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/PercentColorHelper;->getOkColor()I

    move-result v1

    .line 651
    :goto_0
    invoke-virtual {p2, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 652
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v2, 0x7f1109cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42e00000    # 112.0f

    iget-boolean v3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    invoke-virtual {p2, v1, v2, v3}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 654
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v2, 0x7f110a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v3, 0x7f110d07

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    new-instance p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    invoke-virtual {p2, p1}, Lcom/texa/careapp/views/CircleDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private displaySecondCircleIndicator(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    .line 475
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->isServiceScheduleAvailable(Lcom/texa/careapp/model/VehicleModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays2:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels2:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayServiceData(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays2:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels2:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayTyresIndicator(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private displayServiceData(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v1, 0x7f110c03

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 509
    :try_start_0
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    .line 510
    sget-object v2, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    .line 517
    sget-object v2, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v2

    .line 520
    :cond_1
    :goto_0
    new-instance v3, Lcom/texa/careapp/utils/ScheduleHelper;

    .line 521
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v3, v1, v2, p1}, Lcom/texa/careapp/utils/ScheduleHelper;-><init>(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)V

    .line 523
    invoke-virtual {v3}, Lcom/texa/careapp/utils/ScheduleHelper;->parse()Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 525
    iget v1, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    const/high16 v2, 0x42c80000    # 100.0f

    if-gtz v1, :cond_2

    .line 526
    iget-boolean p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    invoke-virtual {p2, v2, v2, p1}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 527
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/PercentColorHelper;->getErrorColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 528
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v1, 0x7f110a64

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 530
    :cond_2
    iget v1, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    invoke-virtual {p2, v1, v2, v3}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 531
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    iget v2, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->percent:I

    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/PercentColorHelper;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 532
    iget-object v1, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/MeasureUnit;->getStringRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 533
    :goto_1
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v3, 0x7f110a7d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->value:Ljava/lang/String;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_2
    new-instance p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    invoke-virtual {p2, p1}, Lcom/texa/careapp/views/CircleDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "display service circle indicator exception"

    .line 543
    invoke-static {p1, p3, p2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private displayThirdCircleIndicator(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    .line 487
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->isServiceScheduleAvailable(Lcom/texa/careapp/model/VehicleModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays3:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels3:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayTyresIndicator(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays3:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels3:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayEngineTempIndicator(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private displayTyresIndicator(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 7

    .line 553
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v1, 0x7f110d03

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "displayTyresIndicator, vehicle is null"

    .line 556
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 560
    :cond_0
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "displayTyresIndicator: not configured"

    .line 564
    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v4, 0x7f110d05

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setBlurred(Z)V

    .line 569
    invoke-virtual {p2, v3, v3, v0}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 570
    iget-object p3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {p3}, Lcom/texa/careapp/utils/PercentColorHelper;->getWarningColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 572
    invoke-virtual {p2, v2}, Lcom/texa/careapp/views/CircleDisplay;->setClickable(Z)V

    goto :goto_0

    :cond_1
    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "displayTyresIndicator: data available"

    .line 576
    invoke-static {v5, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpirePercent(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 579
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/texa/careapp/model/VehicleScheduleModel;->getKmToExpire(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 581
    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setBlurred(Z)V

    if-nez v4, :cond_2

    .line 585
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    invoke-virtual {p2, v3, v3, v0}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 586
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/PercentColorHelper;->getErrorColor()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 587
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v1, 0x7f110a64

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    int-to-float v5, v4

    .line 589
    iget-boolean v6, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    invoke-virtual {p2, v5, v3, v6}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 590
    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v3, v4}, Lcom/texa/careapp/utils/PercentColorHelper;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 591
    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v4, 0x7f110ab6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :goto_0
    new-instance p3, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p2, p3}, Lcom/texa/careapp/views/CircleDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    invoke-virtual {p2}, Lcom/texa/careapp/views/CircleDisplay;->invalidate()V

    return-void
.end method

.method private displayVehicleData(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "mVehicleModelObservable onNext, vehicle= %s"

    .line 410
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displaySecondCircleIndicator(Lcom/texa/careapp/model/VehicleModel;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayThirdCircleIndicator(Lcom/texa/careapp/model/VehicleModel;)V

    .line 418
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayEmergencyButtonInformation()V

    return-void
.end method

.method private getLocationCar()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get car location"

    .line 269
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getViewPagerHeight()I
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getViewPagerWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private getViewPagerWidth()I
    .locals 3

    .line 710
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 711
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private goToDiagosisPage()V
    .locals 2

    const/4 v0, 0x0

    .line 704
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 705
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goToParamsPage()V
    .locals 2

    const/4 v0, 0x0

    .line 698
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 699
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isServiceScheduleAvailable(Lcom/texa/careapp/model/VehicleModel;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->hasServiceSchedules()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$displayEngineTempIndicator$8(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "got exception in displayEngineTempIndicator"

    .line 621
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeActiveLamps$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LampStatusObserver onError"

    .line 282
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeCareStatus$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing care status"

    .line 318
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeActiveLamps()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    invoke-virtual {v0}, Lcom/texa/careapp/lamps/LampsManager;->observeActiveLamps()Lio/reactivex/Observable;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    sget-object v2, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda1;

    .line 282
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private observeCareStatus()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 292
    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 293
    invoke-virtual {v1}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    .line 291
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 307
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 308
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    sget-object v2, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda2;

    .line 310
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private refreshDiagnosisCard(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LAMP LIST SIZE --> %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    return-void
.end method

.method private scheduleLogSyncTask()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleLogSend()V

    return-void
.end method

.method private selectCurrentVehicle(Z)V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 324
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->isCurrentVehicle()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ControlledViewPager;->getCurrentItem()I

    move-result v0

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_3

    .line 331
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    goto :goto_1

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {p1, v1, v2}, Lcom/texa/careapp/views/ControlledViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 341
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setEmptyCircle(Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/PercentColorHelper;->getOkColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    const/4 v0, 0x0

    .line 662
    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    .line 663
    iget-boolean v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-virtual {p1, v2, v3, v1}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 664
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupCircleDisplays()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays1:Lcom/texa/careapp/views/CircleDisplay;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 402
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays2:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 403
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays3:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 405
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays1:Lcom/texa/careapp/views/CircleDisplay;

    new-instance v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private touchSosButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 671
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_DASHBOARD_EMERGENCY_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 672
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 679
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 680
    sput-boolean v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 681
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 682
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 675
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 676
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->vibrateOnTouch()V

    return v0
.end method

.method private updateBatteryCircleView()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 442
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 443
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleAlarm;

    .line 445
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/model/AlarmType;->BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;

    if-ne v3, v4, :cond_1

    .line 446
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 450
    sget-object v0, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 452
    sget-object v0, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    .line 455
    :cond_4
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    .line 458
    :goto_1
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays1:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayBatteryIndicator(Lcom/texa/careapp/utils/BatteryLevel;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    return-void
.end method

.method private updateVehicleList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Vehicle list is changed! Need to be update"

    .line 373
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->notifyDataSetChanged()V

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->updateViews()V

    .line 380
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {v1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->getCareCondition()I

    move-result v1

    invoke-static {v1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->getIconColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 381
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private vibrateOnTouch()V
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 690
    sget v1, Lcom/texa/careapp/Constants;->TIME_TO_VIBRATE_ON_TOUCH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 4

    .line 175
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;

    .line 176
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->btnDashboardSos:Lcom/texa/careapp/views/DashboardEmergencyButton;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDashboardEmergencyButton:Lcom/texa/careapp/views/DashboardEmergencyButton;

    .line 177
    new-instance v1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay1:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays1:Lcom/texa/careapp/views/CircleDisplay;

    .line 179
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay2:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays2:Lcom/texa/careapp/views/CircleDisplay;

    .line 180
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay3:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplays3:Lcom/texa/careapp/views/CircleDisplay;

    .line 181
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay1Label:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels1:Landroid/widget/TextView;

    .line 182
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay2Label:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels2:Landroid/widget/TextView;

    .line 183
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->circleDisplay3Label:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleDisplayLabels3:Landroid/widget/TextView;

    .line 184
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardViewPagerIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCirclePageIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    .line 185
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardViewPagerContainer:Lcom/texa/careapp/views/ViewPagerContainer;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPagerContainer:Lcom/texa/careapp/views/ViewPagerContainer;

    .line 186
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardVehiclePager:Lcom/texa/careapp/views/ControlledViewPager;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    .line 187
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardVehiclePagerArrow:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleArrowViewPager:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    .line 188
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardVehicleNameLay:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->vehicleNameLay:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardVehicleName:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->vehicleName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    iget-object p1, p1, Lcom/texa/careapp/databinding/FragmentDashboardV2Binding;->fragmentDashboardVehicleNameIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->image:Landroid/widget/ImageView;

    .line 192
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const v0, 0x7f0800ef

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->drawable:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleList:Ljava/util/List;

    .line 196
    new-instance p1, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/ControlledViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 198
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 199
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleArrowViewPager:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->bind(Lcom/texa/careapp/views/ControlledViewPager;)V

    .line 200
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    new-instance v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;-><init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/ControlledViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 227
    new-instance p1, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/care/navigation/Navigator;)V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    .line 229
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPagerContainer:Lcom/texa/careapp/views/ViewPagerContainer;

    invoke-virtual {p1}, Lcom/texa/careapp/views/ViewPagerContainer;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 230
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getViewPagerWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getViewPagerHeight()I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 233
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 235
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCirclePageIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 237
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 238
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 239
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setClipChildren(Z)V

    .line 241
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->setupCircleDisplays()V

    .line 242
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->selectCurrentVehicle(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 245
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    if-ge p1, v2, :cond_0

    .line 246
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleArrowViewPager:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->vehicleName:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCirclePageIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-virtual {p1}, Lcom/texa/careapp/views/CirclePageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 249
    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCirclePageIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/CirclePageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->vehicleNameLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getLocationCar()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 259
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_3
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "dashboard"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0088

    return v0
.end method

.method public synthetic lambda$displayEngineTempIndicator$7$com-texa-careapp-app-dashboard-DashboardScreenV2(Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;Lcom/texa/careapp/model/VehicleParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    invoke-direct {p0, p3, p1, p2}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayEngineTempIndicator(Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/views/CircleDisplay;Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic lambda$displayEngineTempIndicator$9$com-texa-careapp-app-dashboard-DashboardScreenV2(Landroid/view/View;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->goToParamsPage()V

    return-void
.end method

.method public synthetic lambda$displayServiceData$5$com-texa-careapp-app-dashboard-DashboardScreenV2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 537
    sput-boolean p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 538
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/app/schedule/ScheduleActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$displayTyresIndicator$6$com-texa-careapp-app-dashboard-DashboardScreenV2(Lcom/texa/careapp/model/VehicleModel;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    .line 596
    sput-boolean p2, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 597
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$observeCareStatus$1$com-texa-careapp-app-dashboard-DashboardScreenV2(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/texa/careapp/views/ControlledViewPager;->setCanScroll(Z)V

    .line 298
    sget-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleViewPager:Lcom/texa/careapp/views/ControlledViewPager;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/ControlledViewPager;->setCanScroll(Z)V

    .line 302
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->getLocationCar()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 305
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->careConditions(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeCareStatus$2$com-texa-careapp-app-dashboard-DashboardScreenV2(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 311
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 312
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleArrowViewPager:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    invoke-virtual {v1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->handleVisibility()V

    .line 313
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->selectCurrentVehicle(Z)V

    .line 314
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->setCareCondition(I)V

    .line 315
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehiclePagerAdapter:Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->updateViews()V

    .line 316
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->getIconColor(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic lambda$setupCircleDisplays$4$com-texa-careapp-app-dashboard-DashboardScreenV2(Landroid/view/View;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->goToDiagosisPage()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 735
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$ShouldUpdateChartParameterTypeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 730
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/BatteryChargeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 430
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->updateBatteryCircleView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 391
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 393
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleLampsDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 394
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleParamDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 347
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 349
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 350
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->observeCareStatus()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    .line 351
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->observeActiveLamps()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleLampsDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCircleAnimated:Z

    .line 354
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->updateVehicleList(Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displayVehicleData(Lcom/texa/careapp/model/VehicleModel;)V

    .line 356
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->dashboardScreenAdapter:Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    .line 358
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->updateBatteryCircleView()V

    .line 359
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->displaySecondCircleIndicator(Lcom/texa/careapp/model/VehicleModel;)V

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDashboardEmergencyButton:Lcom/texa/careapp/views/DashboardEmergencyButton;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/views/DashboardEmergencyButton;->bindTo(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;Lorg/greenrobot/eventbus/EventBus;)V

    .line 362
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->scheduleLogSyncTask()V

    return-void
.end method
