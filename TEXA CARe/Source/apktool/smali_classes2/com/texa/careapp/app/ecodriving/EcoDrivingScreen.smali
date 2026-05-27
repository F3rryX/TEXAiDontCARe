.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;
.super Lcom/texa/care/navigation/Screen;
.source "EcoDrivingScreen.java"

# interfaces
.implements Lcom/texa/care/eco_driving/EcoDrivingCallback;


# static fields
.field private static final ACCELERATION_CIRCLE_ID:I = 0x1

.field private static final COLD_ACCELERATION_CIRCLE_ID:I = 0x5

.field private static final DEACCELERATION_CIRCLE_ID:I = 0x2

.field private static final ENGINE_STOP_RUNNING_CIRCLE_ID:I = 0x3

.field private static final ENGINE_WARM_CIRCLE_ID:I = 0x4

.field private static final HIGH_SPEED_CIRCLE_ID:I = 0x6

.field private static final SCORE_CIRCLE_ID:I


# instance fields
.field private adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

.field protected avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected careObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final dailyTrips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation
.end field

.field private dayAdapter:Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;

.field private dayFormat:Ljava/text/SimpleDateFormat;

.field private header:Landroid/view/View;

.field private isFirmwareUpdate:Z

.field private isSmallScreen:Z

.field private list:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCarStopRunningEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mColdAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field private mDayTitle:Landroid/widget/TextView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mEcoDrivingActivity:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHighSpeedDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScoreDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mSuddenAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mSuddenDeAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private mTripListObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mWarmUpEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field private message:Landroid/widget/TextView;

.field private noTrip:Landroid/widget/LinearLayout;

.field private noTripImage:Landroid/widget/ImageView;

.field private timeMidnightMillis:J

.field private timeMillis:J

.field private weekAdapterPosition:I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dayFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x3

    .line 117
    iput v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->weekAdapterPosition:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isSmallScreen:Z

    .line 121
    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isFirmwareUpdate:Z

    .line 127
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 128
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    const-wide/16 v0, 0x0

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setIntervalTime(J)V

    .line 130
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEcoDrivingActivity:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    return-void
.end method

.method static synthetic access$002(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->weekAdapterPosition:I

    return p1
.end method

.method private checkData()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTrip:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isSmallScreen:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTripImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTripImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_0
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isFirmwareUpdate:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->message:Landroid/widget/TextView;

    const v1, 0x7f1109a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->message:Landroid/widget/TextView;

    const v1, 0x7f1109a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTrip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private checkTrip(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 8

    .line 466
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    add-long/2addr v0, v2

    .line 470
    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setTripDuration(J)V

    .line 471
    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->isTripInProgress(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const-wide/32 v6, 0xea60

    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 472
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripGroupScores()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 473
    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHidden(Z)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {p1, v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHidden(Z)V

    goto :goto_1

    .line 478
    :cond_4
    invoke-virtual {p1, v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHidden(Z)V

    .line 482
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :goto_2
    return-object p1
.end method

.method private createProgressDialogScreen()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEcoDrivingActivity:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    const v2, 0x7f110d40

    invoke-virtual {v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEcoDrivingActivity:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dismissProgressDialogScreen()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/texa/careapp/utils/EcoDrivingProgressDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private filterItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 503
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    new-instance v2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;-><init>()V

    .line 506
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setVehicleId(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHwId(Ljava/lang/String;)V

    .line 508
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    new-instance v2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;-><init>()V

    .line 512
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setVehicleId(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHwId(Ljava/lang/String;)V

    .line 514
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCircleDisplay(I)Lcom/texa/careapp/views/CircleDisplay;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 305
    :pswitch_0
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mHighSpeedDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_0
    return-object p1

    .line 303
    :pswitch_1
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mColdAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0351

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_1
    return-object p1

    .line 301
    :pswitch_2
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mWarmUpEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_2
    return-object p1

    .line 299
    :pswitch_3
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mCarStopRunningEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a034f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_3
    return-object p1

    .line 297
    :pswitch_4
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mSuddenDeAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_4
    return-object p1

    .line 295
    :pswitch_5
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mSuddenAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_5
    return-object p1

    .line 293
    :pswitch_6
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mScoreDisplay:Lcom/texa/careapp/views/CircleDisplay;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/CircleDisplay;

    :cond_6
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMidnightCalendar(J)J
    .locals 1

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    const/16 p2, 0x17

    .line 440
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/16 p2, 0x3b

    .line 441
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 442
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 443
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 445
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method private getTripDuration(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)J
    .locals 6

    .line 591
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 592
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    add-long/2addr v2, v0

    return-wide v2
.end method

.method private initArray()V
    .locals 9

    .line 419
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 423
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 424
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 425
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 426
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/16 v3, -0x15

    .line 427
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1c

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 431
    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getMidnightCalendar(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTrips(JJ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->loadTrips(Ljava/util/List;)V

    return-void
.end method

.method private initCircleDisplay(IIZZ)V
    .locals 3

    .line 373
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getCircleDisplay(I)Lcom/texa/careapp/views/CircleDisplay;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    int-to-float v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 374
    :goto_0
    sget v2, Lcom/texa/careapp/utils/EcoDrivingUtils;->MAX_VALUE:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, p4}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    const/16 p4, 0x3e8

    .line 375
    invoke-virtual {p1, p4}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 376
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    if-eqz p3, :cond_1

    if-eq p2, v0, :cond_1

    const/4 p3, 0x0

    .line 379
    invoke-virtual {p1, p3}, Lcom/texa/careapp/views/CircleDisplay;->setDrawText(Z)V

    .line 380
    invoke-static {p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceDrawable(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->setImageResId(I)V

    goto :goto_2

    :cond_1
    const/4 p3, 0x1

    .line 382
    invoke-virtual {p1, p3}, Lcom/texa/careapp/views/CircleDisplay;->setDrawText(Z)V

    .line 383
    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setImageResId(I)V

    const p3, 0x7f090002

    .line 384
    invoke-virtual {p1, p3}, Lcom/texa/careapp/views/CircleDisplay;->setTypeface(I)V

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1109a6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private loadTrips(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 451
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 452
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 453
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 454
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 455
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 456
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 457
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkTrip(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v1

    .line 458
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Lcom/texa/careapp/app/ecodriving/TripComparator;

    invoke-direct {v1}, Lcom/texa/careapp/app/ecodriving/TripComparator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/texa/careapp/app/ecodriving/TripComparator;->sort(Ljava/util/List;)V

    .line 460
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshAll()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEcoDrivingActivity:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->getMDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mTripListObservable:Lio/reactivex/Observable;

    .line 205
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 206
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    .line 207
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    new-instance v3, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    .line 208
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private refreshTripsList()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 547
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 548
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMidnightMillis:J

    invoke-static {v0, v1, v2, v3}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTrips(JJ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->loadTrips(Ljava/util/List;)V

    .line 549
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->filterItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private resetDisplay()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 363
    invoke-direct {p0, v0, v1, v0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v2, 0x1

    .line 364
    invoke-direct {p0, v2, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v3, 0x2

    .line 365
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v3, 0x5

    .line 366
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v3, 0x3

    .line 367
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v3, 0x4

    .line 368
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    const/4 v3, 0x6

    .line 369
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    return-void
.end method

.method private setDayTitle(J)V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mDayTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11098e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dayFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 392
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    .line 391
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIntervalTime(J)V
    .locals 6

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 245
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 246
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 247
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 248
    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 249
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    const/16 v4, 0x17

    .line 250
    invoke-virtual {v0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0x3b

    .line 251
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 253
    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMidnightMillis:J

    return-void
.end method

.method private setUpDays()V
    .locals 5

    .line 396
    new-instance v0, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Landroidx/collection/LongSparseArray;J)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dayAdapter:Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;

    .line 397
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 398
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->weekAdapterPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 399
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$1;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setUpDisplay(Z)V
    .locals 14

    .line 311
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    iget-wide v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMidnightMillis:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getDailyScoreList(JJZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getAverage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 314
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v4

    .line 316
    invoke-direct {p0, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getTripDuration(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->setDuration(Ljava/lang/Double;)V

    .line 317
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->resetDisplay()V

    .line 326
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v6, v2

    move-wide v8, v6

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    .line 327
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 328
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double v10, v10, v12

    add-double/2addr v6, v10

    .line 329
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    cmpl-double v4, v6, v2

    if-eqz v4, :cond_4

    cmpl-double v4, v8, v2

    if-eqz v4, :cond_4

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 338
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    .line 339
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_8

    if-ltz v1, :cond_7

    const/16 v3, 0x64

    if-le v1, v3, :cond_6

    goto :goto_3

    .line 343
    :cond_6
    invoke-direct {p0, v5, v1, v5, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto :goto_2

    .line 341
    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v5, v2, v5, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto :goto_2

    .line 345
    :cond_8
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->ACCELERATIONS:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v3, v4, :cond_9

    .line 346
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v6, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto :goto_2

    .line 347
    :cond_9
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->BRAKES:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_a

    const/4 v3, 0x2

    .line 348
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto :goto_2

    .line 349
    :cond_a
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_b

    const/4 v3, 0x5

    .line 350
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto/16 :goto_2

    .line 351
    :cond_b
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_c

    const/4 v3, 0x3

    .line 352
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto/16 :goto_2

    .line 353
    :cond_c
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_d

    const/4 v3, 0x4

    .line 354
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto/16 :goto_2

    .line 355
    :cond_d
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_SPEED:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x6

    .line 356
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initCircleDisplay(IIZZ)V

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method private setUpViews()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0363

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mScoreDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0364

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mSuddenAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mSuddenDeAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 282
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mCarStopRunningEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 283
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mWarmUpEngineDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mColdAccelerationsDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 285
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mHighSpeedDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 287
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mDayTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 6

    .line 135
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;

    .line 136
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;->screenEcoDrivingNoTrip:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTrip:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;->screenEcoDrivingNoTripMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->message:Landroid/widget/TextView;

    .line 138
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;->screenEcoDrivingNoTripImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->noTripImage:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;->screenEcoDrivingDaysPager:Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 140
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingBinding;->screenEcoDrivingRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->careObserver:Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 143
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->checkEcoDrivingMinFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isFirmwareUpdate:Z

    .line 145
    new-instance p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;-><init>(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isSmallScreen:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d00c2

    goto :goto_0

    :cond_0
    const v1, 0x7f0d00c1

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    .line 151
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpViews()V

    .line 153
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mTripListObservable:Lio/reactivex/Observable;

    .line 158
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->isSmallScreen:Z

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->filterItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 167
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 168
    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 165
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->refreshAll()V

    .line 177
    :goto_3
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    .line 179
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_DRIVING_STYLE_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setHeaderIncrementFixer(Landroid/view/View;)V

    .line 182
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {p1, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->setShouldClipView(Z)V

    .line 183
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->header:Landroid/view/View;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->setParallaxHeader(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 184
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_5

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->setData(Ljava/util/List;)V

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->setOnClickEvent(Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;)V

    .line 196
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->setOnLongClickEvent(Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;)V

    return-void
.end method

.method public drivingEventCall(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Z)V
    .locals 1

    .line 560
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p2

    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 561
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p2

    sget-object v0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 562
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p1

    sget-object p2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {p2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 563
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 564
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Landroid/os/Handler;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 570
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 497
    const-class v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00be

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initArray()V

    .line 155
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-ecodriving-EcoDrivingScreen()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDays()V

    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDisplay(Z)V

    .line 171
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setDayTitle(J)V

    .line 172
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkData()V

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/view/View;I)V
    .locals 2

    const/4 p1, -0x1

    if-le p2, p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_TRIP_DETAIL:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 192
    new-instance p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {p1, v0, p2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/view/View;I)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    new-instance p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {p1, p2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;-><init>(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$drivingEventCall$8$com-texa-careapp-app-ecodriving-EcoDrivingScreen()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->initArray()V

    .line 566
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDays()V

    .line 567
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkData()V

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDisplay(Z)V

    .line 569
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->refreshTripsList()V

    return-void
.end method

.method public synthetic lambda$drivingEventCall$9$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/os/Handler;)V
    .locals 1

    .line 564
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onCreateOptionsMenu$7$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/view/MenuItem;)Z
    .locals 2

    .line 528
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->buildIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public synthetic lambda$refreshAll$4$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->createProgressDialogScreen()V

    return-void
.end method

.method public synthetic lambda$refreshAll$5$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroidx/collection/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    .line 211
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->filterItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDays()V

    const/4 p1, 0x1

    .line 213
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDisplay(Z)V

    .line 214
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setDayTitle(J)V

    .line 215
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkData()V

    .line 216
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dismissProgressDialogScreen()V

    .line 217
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$refreshAll$6$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dismissProgressDialogScreen()V

    return-void
.end method

.method public synthetic lambda$scoreUpdateCall$10$com-texa-careapp-app-ecodriving-EcoDrivingScreen()V
    .locals 1

    .line 579
    :try_start_0
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDays()V

    .line 580
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkData()V

    const/4 v0, 0x0

    .line 581
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDisplay(Z)V

    .line 582
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->refreshTripsList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$scoreUpdateCall$11$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/os/Handler;)V
    .locals 1

    .line 577
    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->goBack()V

    .line 275
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 525
    invoke-super {p0, p1, p2}, Lcom/texa/care/navigation/Screen;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0001

    .line 526
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a026e

    .line 527
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$ShouldHideTrip;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->refreshTripsList()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;->getTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setIntervalTime(J)V

    .line 536
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dayAdapter:Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;

    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;->updateViews(J)V

    .line 537
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 538
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->dailyTrips:Ljava/util/List;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->list:Landroidx/collection/LongSparseArray;

    iget-wide v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->filterItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->notifyDataSetChanged()V

    .line 540
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->checkData()V

    const/4 p1, 0x0

    .line 541
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setUpDisplay(Z)V

    .line 542
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->timeMillis:J

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->setDayTitle(J)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 268
    invoke-static {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->unRegisterCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V

    .line 269
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 261
    invoke-static {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->registerCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public scoreUpdateCall(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V
    .locals 2

    .line 576
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
