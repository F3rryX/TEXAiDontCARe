.class public Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;
.super Ljava/lang/Object;
.source "ChartUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/ChartUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartConfiguration"
.end annotation


# instance fields
.field private chartColor:I

.field private chartFill:Landroid/graphics/drawable/Drawable;

.field private item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

.field private vehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field private yAxisMockVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private yAxisRealVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisRealVal:Ljava/util/ArrayList;

    .line 302
    iput-object p2, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    .line 303
    iput p3, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartColor:I

    .line 304
    iput-object p4, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartFill:Landroid/graphics/drawable/Drawable;

    .line 305
    iput-object p1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private getBatteryStatusColor(Landroid/content/Context;)I
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-static {v0}, Lcom/texa/careapp/utils/ChartUtils;->readBatteryValue(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v1

    .line 362
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemColor(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 364
    :cond_0
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getWarningColor(Landroid/content/Context;)I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method private getBatteryStatusFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-static {v0}, Lcom/texa/careapp/utils/ChartUtils;->readBatteryValue(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800ba

    .line 375
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 376
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0800bb

    .line 377
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 378
    :cond_0
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800bc

    .line 379
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public generateChart(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisRealVal:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    int-to-float v4, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->isHigherThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v4, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v4}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemValue()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v4, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v4}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemValue()I

    move-result v4

    int-to-double v4, v4

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartColor:I

    const v0, 0x7f0800bb

    .line 322
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartFill:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->isHigherThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v4, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v4}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getWarningValue()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemValue()I

    move-result v2

    int-to-double v4, v2

    cmpg-double v2, v0, v4

    if-gez v2, :cond_3

    goto :goto_2

    .line 325
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v4, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v4}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getWarningValue()I

    move-result v4

    int-to-double v4, v4

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemValue()I

    move-result v2

    int-to-double v4, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_3

    .line 326
    :goto_2
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getWarningColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartColor:I

    const v0, 0x7f0800bc

    .line 327
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartFill:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_3
    move v2, v3

    goto/16 :goto_0

    .line 332
    :cond_4
    iget-object p1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    iget-object v1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v2

    double-to-float p2, v2

    invoke-direct {v0, v1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChartColor(Landroid/content/Context;)I
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v0

    const-wide/32 v2, 0x499602d2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 345
    iget p1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartColor:I

    return p1

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getBatteryStatusColor(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getChartFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->item:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v0

    const-wide/32 v2, 0x499602d2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 352
    iget-object p1, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->chartFill:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getBatteryStatusFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getYAxisMockVal()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisMockVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYAxisRealVal()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->yAxisRealVal:Ljava/util/ArrayList;

    return-object v0
.end method
