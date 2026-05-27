.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EcoDrivingScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final circleDisplay:Lcom/texa/careapp/views/CircleDisplay;

.field final content:Landroid/widget/RelativeLayout;

.field final date:Landroid/widget/TextView;

.field final fromTo:Landroidx/appcompat/widget/AppCompatTextView;

.field final header:Landroid/widget/TextView;

.field final line:Landroid/view/View;

.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    .line 81
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemDate:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 83
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemFromTo:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->fromTo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemCircle:Lcom/texa/careapp/views/CircleDisplay;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->circleDisplay:Lcom/texa/careapp/views/CircleDisplay;

    .line 85
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemLine:Landroid/view/View;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->line:Landroid/view/View;

    .line 86
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemLay:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->content:Landroid/widget/RelativeLayout;

    .line 87
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;->screenEcoDrivingTripItemCar:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->header:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 92
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->content:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getVehicle(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->header:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f1109a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$002(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-static {v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$000(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const v7, 0x7f11098f

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->content:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    .line 102
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    sub-long v10, v2, v10

    .line 104
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-static {v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$100(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v12, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    .line 105
    invoke-static {v4}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$200(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    .line 104
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v12, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->fromTo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->isTripInProgress(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Z

    move-result v13

    move-object/from16 v1, p1

    move-wide v6, v8

    move-wide v8, v10

    move v10, v13

    .line 107
    invoke-static/range {v1 .. v10}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getTripInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;JJZ)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 111
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->circleDisplay:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->line:Landroid/view/View;

    invoke-static {v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$300(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v6

    .line 111
    invoke-static/range {v2 .. v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$400(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Lcom/texa/careapp/views/CircleDisplay;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 114
    :cond_2
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-static {v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$000(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->content:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->header:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    .line 119
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    sub-long v10, v2, v10

    .line 122
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-static {v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$100(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v12, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    .line 123
    invoke-static {v4}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$200(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v12

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    .line 122
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v12, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->fromTo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->isTripInProgress(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Z

    move-result v13

    move-object/from16 v1, p1

    move-wide v6, v8

    move-wide v8, v10

    move v10, v13

    .line 124
    invoke-static/range {v1 .. v10}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getTripInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;JJZ)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    iget-object v3, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->circleDisplay:Lcom/texa/careapp/views/CircleDisplay;

    iget-object v4, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->line:Landroid/view/View;

    invoke-static {v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$300(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    move-result-object v1

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 127
    invoke-virtual {v1, v5}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v6

    .line 127
    invoke-static/range {v2 .. v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$400(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Lcom/texa/careapp/views/CircleDisplay;Landroid/view/View;IJ)V

    .line 131
    iget-object v1, v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->this$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->access$002(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
