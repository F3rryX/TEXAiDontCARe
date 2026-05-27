.class public Lcom/texa/careapp/utils/ChartUtils;
.super Ljava/lang/Object;
.source "ChartUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;
    }
.end annotation


# static fields
.field private static final SAMPLING_TIME:J = 0x2bf20L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;JLcom/texa/careapp/model/VehicleParamHistoryModel;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/texa/careapp/utils/ChartUtils;->getChartDataFormatter(Landroid/content/Context;JLcom/texa/careapp/model/VehicleParamHistoryModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static chartTimeFormat(Landroid/content/Context;JLjava/util/Date;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x36ee80

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    const p3, 0x7f1108b0

    .line 164
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    const-wide/32 v1, 0xea60

    div-long/2addr p1, v1

    long-to-int p2, p1

    .line 165
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    .line 164
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x5265c00

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    const p3, 0x7f1108af

    .line 167
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 168
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    .line 167
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 170
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const p2, 0x7f1108ae

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;
    .locals 1

    .line 270
    new-instance v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>()V

    .line 271
    invoke-virtual {v0, p0, p1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setValue(D)V

    .line 272
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setDate(Ljava/util/Date;)V

    return-object v0
.end method

.method public static getBaseConfiguration(Lcom/github/mikephil/charting/charts/LineChart;II)Lcom/github/mikephil/charting/charts/LineChart;
    .locals 3

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/4 v1, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    .line 59
    invoke-virtual {p0, v1, v2, v1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setViewPortOffsets(FFFF)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setAutoScaleMinMaxEnabled(Z)V

    .line 63
    new-instance v1, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    const-string v2, ""

    .line 64
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 67
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    int-to-float p1, p1

    .line 69
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    int-to-float p1, p2

    const/high16 p2, 0x40a00000    # 5.0f

    sub-float/2addr p1, p2

    .line 70
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    return-object p0
.end method

.method private static getBatteryStatusChartData(Ljava/util/List;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 230
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 231
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/ChartUtils;->setMidnightTime(Ljava/util/Calendar;Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v3

    :cond_0
    const-wide/16 v6, 0x0

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 236
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 237
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v10}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/texa/careapp/utils/ChartUtils;->setMidnightTime(Ljava/util/Calendar;Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    cmp-long v15, v10, v12

    if-nez v15, :cond_1

    .line 239
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v10}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v10

    add-double/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    .line 242
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v14

    if-ne v8, v10, :cond_3

    .line 243
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    int-to-double v12, v9

    div-double v12, v6, v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v12

    invoke-virtual {v2, v10, v11, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    int-to-double v12, v9

    div-double/2addr v6, v12

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v6

    invoke-virtual {v2, v10, v11, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 248
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v6}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v6

    .line 249
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v9}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/texa/careapp/utils/ChartUtils;->setMidnightTime(Ljava/util/Calendar;Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v3

    .line 251
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v14

    if-ne v8, v9, :cond_2

    .line 252
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    int-to-double v11, v14

    div-double v11, v6, v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 258
    :cond_4
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_5

    .line 259
    :goto_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 260
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 263
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v2, p1

    if-gt v2, v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v1

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getHistory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getLimitItem()I

    move-result p0

    invoke-static {v0, p0}, Lcom/texa/careapp/utils/ChartUtils;->getEngineTemperatureChartData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v1

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v1

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v1

    const-wide/32 v3, 0x499602d2

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getHistory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getLimitItem()I

    move-result p0

    invoke-static {v0, p0}, Lcom/texa/careapp/utils/ChartUtils;->getBatteryStatusChartData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getHistory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getLimitItem()I

    move-result p0

    invoke-static {v0, p0}, Lcom/texa/careapp/utils/ChartUtils;->getFuelLevelChartData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getChartDataFormatter(Landroid/content/Context;JLcom/texa/careapp/model/VehicleParamHistoryModel;)Ljava/lang/String;
    .locals 4

    .line 135
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    const-string v2, ""

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x499602d2

    cmp-long v3, p1, v0

    if-nez v3, :cond_4

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 149
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    const p1, 0x7f1108b1

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/texa/careapp/utils/ChartUtils;->chartTimeFormat(Landroid/content/Context;JLjava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v2, p0

    :cond_4
    :goto_1
    return-object v2
.end method

.method private static getEngineTemperatureChartData(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 287
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getFuelLevelChartData(Ljava/util/List;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 192
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 193
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 194
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v3

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 197
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 198
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v9}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/32 v13, 0x2bf20

    add-long/2addr v11, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v15, v9, v11

    if-gtz v15, :cond_1

    .line 199
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v9}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v9

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    .line 202
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v14

    if-ne v4, v9, :cond_3

    .line 203
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    int-to-double v11, v8

    div-double v11, v6, v11

    invoke-static {v11, v12, v13}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    int-to-double v11, v8

    div-double/2addr v6, v11

    invoke-static {v6, v7, v13}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v3

    invoke-virtual {v2, v9, v10, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 208
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getValue()D

    move-result-wide v6

    .line 209
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->getDate()Ljava/util/Date;

    move-result-object v3

    .line 211
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v14

    if-ne v4, v8, :cond_2

    .line 212
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    int-to-double v10, v14

    div-double v10, v6, v10

    invoke-static {v10, v11, v13}, Lcom/texa/careapp/utils/ChartUtils;->getAvgParam(DLjava/util/Date;)Lcom/texa/careapp/model/VehicleParamHistoryModel;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    const/4 v8, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 218
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 221
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v2, p1

    if-gt v2, v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 222
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getXAxisData(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getYAxisMockData(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/graphics/drawable/Drawable;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/github/mikephil/charting/data/LineDataSet;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v1, "YAxisMock"

    invoke-direct {v0, p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070066

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 90
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 91
    sget-object p0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 92
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x12

    if-lt p0, p1, :cond_0

    .line 93
    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    sget-object p0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const/4 p0, 0x1

    .line 97
    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 98
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineDataSet;->notifyDataSetChanged()V

    return-object v0
.end method

.method public static getYAxisRealData(Landroid/content/Context;Ljava/util/ArrayList;IJZ)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;IJZ)",
            "Lcom/github/mikephil/charting/data/LineDataSet;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v1, "YAxisReal"

    invoke-direct {v0, p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    const p5, 0x7f090001

    .line 106
    invoke-static {p0, p5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    const/high16 p5, 0x41200000    # 10.0f

    .line 107
    invoke-virtual {v0, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    .line 108
    new-instance p5, Lcom/texa/careapp/utils/ChartUtils$1;

    invoke-direct {p5, p0, p3, p4}, Lcom/texa/careapp/utils/ChartUtils$1;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 115
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 119
    :goto_0
    sget-object p3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070064

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 122
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 123
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleColor(I)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070066

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 127
    sget-object p0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 128
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineDataSet;->notifyDataSetChanged()V

    return-object v0
.end method

.method public static readBatteryValue(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 391
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleAlarm;

    .line 393
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/AlarmType;->BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;

    if-ne v2, v3, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static setMidnightTime(Ljava/util/Calendar;Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 279
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 280
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 281
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method
