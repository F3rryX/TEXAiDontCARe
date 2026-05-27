.class public Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;
.super Ljava/lang/Object;
.source "WeekPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;
    }
.end annotation


# static fields
.field private static final millisDay:J = 0x5265c00L


# instance fields
.field protected avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dayFormat:Ljava/text/SimpleDateFormat;

.field private dayTrips:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private timeToday:J


# direct methods
.method public static synthetic $r8$lambda$gdDNhXv2iK9ojZzkTqgFuJh9Ee8(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->onClickItem(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Landroidx/collection/LongSparseArray;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;>;J)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayFormat:Ljava/text/SimpleDateFormat;

    .line 62
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    .line 63
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 64
    iput-wide p3, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->time:J

    .line 65
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->initTodayTime()V

    return-void
.end method

.method private canPerformClick(I)Z
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 228
    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->timeToday:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getDayBackground(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const p2, 0x7f0800b2

    goto :goto_0

    :cond_0
    const p2, 0x7f0800af

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4

    .line 173
    :cond_1
    sget p1, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-ge p2, p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_2

    const p2, 0x7f0800b1

    goto :goto_1

    :cond_2
    const p2, 0x7f0800ae

    :goto_1
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4

    .line 177
    :cond_3
    sget p1, Lcom/texa/careapp/utils/EcoDrivingUtils;->WARN_VALUE:I

    if-ge p2, p1, :cond_5

    sget p1, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-le p2, p1, :cond_5

    .line 178
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_4

    const p2, 0x7f0800b4

    goto :goto_2

    :cond_4
    const p2, 0x7f0800b5

    :goto_2
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4

    .line 182
    :cond_5
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_6

    const p2, 0x7f0800b3

    goto :goto_3

    :cond_6
    const p2, 0x7f0800b0

    :goto_3
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private getTripDuration(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)J
    .locals 6

    .line 233
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

    .line 234
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

.method private initData()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    :goto_0
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 120
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    iget-object v5, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTrips(JJ)Ljava/util/List;

    move-result-object v3

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 123
    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v6

    .line 125
    invoke-direct {v0, v5}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->getTripDuration(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->setDuration(Ljava/lang/Double;)V

    .line 126
    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v5, v9, v11

    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v9, v4

    move-wide v11, v9

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    .line 135
    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 136
    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    mul-double v13, v13, v15

    add-double/2addr v9, v13

    .line 137
    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getDuration()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-double/2addr v11, v13

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    cmpl-double v6, v9, v4

    if-eqz v6, :cond_4

    cmpl-double v6, v11, v4

    if-eqz v6, :cond_4

    div-double/2addr v9, v11

    double-to-int v4, v9

    goto :goto_3

    :cond_4
    const/4 v4, -0x1

    :goto_3
    const/4 v5, 0x1

    if-ltz v4, :cond_5

    const/16 v6, 0x64

    if-le v4, v6, :cond_6

    .line 145
    :cond_5
    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 146
    invoke-virtual {v6, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    add-long/2addr v11, v7

    .line 145
    invoke-static {v9, v10, v11, v12, v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getDailyScoreList(JJZ)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 149
    :cond_6
    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 150
    invoke-virtual {v8, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->time:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 149
    :goto_4
    invoke-direct {v0, v7, v4, v5}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->getDayBackground(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v5, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    iget-object v8, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v5, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    iget-object v8, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v5, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 155
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "#666E77"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 159
    :cond_8
    iget-object v5, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eq v4, v3, :cond_9

    if-eqz v4, :cond_9

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    :cond_9
    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f1109a6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private initTodayTime()V
    .locals 3

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->timeToday:J

    return-void
.end method

.method private onClickItem(Landroid/view/View;)V
    .locals 4

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e5

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    .line 206
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e6

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    .line 209
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e7

    if-ne v0, v1, :cond_3

    const/4 p1, 0x3

    .line 212
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e8

    if-ne v0, v1, :cond_4

    const/4 p1, 0x4

    .line 215
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02e9

    if-ne v0, v1, :cond_5

    const/4 p1, 0x5

    .line 218
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02ea

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    .line 221
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->canPerformClick(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, p1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    .line 70
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay6:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDates:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDateDay7:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    .line 79
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay6:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemScoreDay7:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    .line 88
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay1:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay2:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay4:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay5:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay6:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mDays:Ljava/util/List;

    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemDay7:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay5:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay6:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDayBinding;->screeEcoDrivingDayItemLayoutDay7:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->initData()V

    return-void
.end method

.method updateSelected(J)V
    .locals 9

    .line 189
    iput-wide p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->time:J

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 193
    invoke-virtual {v1, p2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, p2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    const/4 v5, 0x1

    .line 192
    invoke-static {v1, v2, v3, v4, v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getDailyScoreList(JJZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->mScores:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 195
    invoke-virtual {v2, p2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->dayTrips:Landroidx/collection/LongSparseArray;

    .line 196
    invoke-virtual {v3, p2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    iget-wide v6, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->time:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 195
    :goto_1
    invoke-direct {p0, v2, v0, v5}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;->getDayBackground(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
