.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;
.super Lcom/texa/care/navigation/Screen;
.source "EcoDrivingTripDetailScreen.java"


# instance fields
.field private adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

.field protected avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private hintButton:Landroid/widget/LinearLayout;

.field private hintButtonText:Landroid/widget/TextView;

.field public final isSmallScreen:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private locations:Landroid/widget/TextView;

.field private mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

.field private mTripDistance:Landroid/widget/TextView;

.field private mTripDuration:Landroid/widget/TextView;

.field private score:I

.field private scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private tipsType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

.field private tripEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    .line 83
    new-instance v1, Landroidx/databinding/ObservableField;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->isSmallScreen:Landroidx/databinding/ObservableField;

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 87
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    .line 88
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tipsType:Ljava/util/ArrayList;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    return-void
.end method

.method private addScoreUpdateEvents(J)V
    .locals 4

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-static {p1, p2}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTripEventsIncrementScoreByRideId(J)Ljava/util/List;

    move-result-object p1

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 325
    new-instance v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-direct {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;-><init>()V

    .line 326
    sget-object v2, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->INCREMENT_SCORE_TYPE:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setTypeId(Ljava/lang/Integer;)V

    .line 327
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setTimestamp(Ljava/lang/Long;)V

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initArray()V
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTripGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEventsWithoutStop(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEvents(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v1, 0x0

    .line 291
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEventsWithoutStartStop(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEventsWithoutStart(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->addScoreUpdateEvents(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->addScoreUpdateEvents(J)V

    .line 301
    new-instance v0, Lcom/texa/careapp/app/ecodriving/TripEventComparator;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/TripEventComparator;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/TripEventComparator;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_3

    .line 315
    :cond_4
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->removeMidTripStops()V

    return-void
.end method

.method private initScorllToBottomButton()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 392
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onResume$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainEcoDrivingBus onError"

    .line 373
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private loadScoreAndTrip()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getUpdatedTrip(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 167
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    .line 168
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    .line 171
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    const/16 v2, 0x64

    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/texa/careapp/utils/EcoDrivingUtils;->MAX_VALUE:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    invoke-static {v1, v3}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setTypeface(I)V

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    if-ltz v1, :cond_1

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1109a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    return-void
.end method

.method private loadTips()V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getBadEventTypeCount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tipsType:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 135
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tipsType:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tipsType:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTips(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f11099d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11099f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f1109a0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f1109a1

    :goto_1
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 148
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f11099e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    const/16 v7, 0x21

    .line 154
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 156
    new-instance v4, Lcom/texa/careapp/utils/CareTypefaceSpan;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-static {v5, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/texa/careapp/utils/CareTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 156
    invoke-virtual {v3, v4, v5, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private removeMidTripStops()V
    .locals 5

    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 378
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    add-int/lit8 v2, v0, 0x1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v4}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 381
    :cond_0
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v3}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v3

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setLayoutHeight(Landroid/view/View;F)V
    .locals 1

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    .line 421
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutWidth(Landroid/view/View;F)V
    .locals 1

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    .line 414
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTripDistance(F)V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDistance:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110985

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    float-to-int p1, p1

    .line 278
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 276
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTripDuration(J)V
    .locals 7

    .line 261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 262
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 263
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    .line 265
    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110986

    .line 266
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 267
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 265
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f110987

    .line 270
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 269
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setTripInfo()V
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v4, ""

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->locations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110992

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->locations:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->locations:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->isParent()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v2

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getParentTrip(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 206
    :goto_2
    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTripGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 208
    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "-"

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v4, :cond_9

    if-eqz v2, :cond_5

    .line 210
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 211
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_5

    .line 212
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDistance(F)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 213
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 214
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 215
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_6

    .line 217
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDistance(F)V

    goto :goto_3

    .line 219
    :cond_6
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_3
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 223
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDuration(J)V

    goto/16 :goto_5

    .line 226
    :cond_7
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_8

    .line 227
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDuration(J)V

    goto/16 :goto_5

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 233
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    if-eqz v1, :cond_e

    if-eqz v2, :cond_a

    .line 236
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_a

    .line 237
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_a

    .line 238
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDistance(F)V

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 239
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_b

    .line 240
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 241
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v9

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_b

    .line 242
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDistance(F)V

    goto :goto_4

    .line 244
    :cond_b
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDistance:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_4
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 248
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getLastTripEvent()Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDuration(J)V

    goto :goto_5

    .line 250
    :cond_c
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_d

    .line 251
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripDuration(J)V

    goto :goto_5

    .line 253
    :cond_d
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->isSmallScreen:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 97
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;

    .line 98
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailScore:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailLocations:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->locations:Landroid/widget/TextView;

    .line 100
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailDuration:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    .line 102
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailDistance:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDistance:Landroid/widget/TextView;

    .line 103
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailHint:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButton:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->screenEcoDrivingTripDetailHintText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->hintButtonText:Landroid/widget/TextView;

    .line 105
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripDetailBinding;->ecoDrivingTripDetailScrollToBottom:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->scrollToBottomButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 108
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->isSmallScreen:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v1, -0x1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/CircleDisplay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b9

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setTextDimension(F)V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->loadScoreAndTrip()V

    .line 117
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->loadTips()V

    .line 119
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->initArray()V

    .line 123
    new-instance p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v7

    iget v8, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;I)V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->initScorllToBottomButton()V

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripInfo()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "EcoDrivingTripDetailScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c4

    return v0
.end method

.method public synthetic lambda$initScorllToBottomButton$4$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen(Landroid/view/View;)V
    .locals 1

    .line 392
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public synthetic lambda$loadTips$0$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen(Landroid/view/View;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_SUGGESTION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tipsType:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->buildIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateOptionsMenu$1$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen(Landroid/view/MenuItem;)Z
    .locals 7

    .line 350
    new-instance p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->score:I

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->tripEvents:Ljava/util/List;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->locations:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDistance:Landroid/widget/TextView;

    .line 351
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mTripDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onResume$2$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->initArray()V

    .line 367
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->loadScoreAndTrip()V

    .line 368
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->setTripInfo()V

    .line 369
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->notifyDataSetChanged()V

    .line 370
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->initScorllToBottomButton()V

    .line 371
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->loadTips()V

    .line 372
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->adapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 347
    invoke-super {p0, p1, p2}, Lcom/texa/care/navigation/Screen;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0002

    .line 348
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a026d

    .line 349
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 401
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 402
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 359
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 361
    invoke-static {}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->getInstance()Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->getEcoBusObservable()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    .line 362
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 363
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 364
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    sget-object v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda4;

    .line 365
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
