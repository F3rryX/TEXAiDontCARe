.class public Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;
.super Ljava/lang/Object;
.source "ParametersLineChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 9

    .line 67
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMaxValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMinValue()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/texa/careapp/utils/ChartUtils;->getBaseConfiguration(Lcom/github/mikephil/charting/charts/LineChart;II)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v8

    const/16 p3, 0x8

    .line 68
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p5, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/4 v5, 0x1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p5

    move-object v7, p4

    .line 70
    invoke-static/range {v2 .. v8}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZLandroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;ZLcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 13

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v8, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f110a7d

    move-object v3, p0

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    if-nez p3, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v9

    sget-object v6, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v6}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "-"

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v4, v2

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    .line 37
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v6, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x21

    .line 41
    invoke-interface {v4, v6, v9, v0, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 45
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    move-object v3, p0

    .line 47
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_2
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMaxValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMinValue()I

    move-result v4

    move-object/from16 v6, p4

    invoke-static {v6, v0, v4}, Lcom/texa/careapp/utils/ChartUtils;->getBaseConfiguration(Lcom/github/mikephil/charting/charts/LineChart;II)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v6

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getValue()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 52
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, v4

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZLandroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    goto :goto_3

    .line 55
    :cond_3
    invoke-static {p1}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 56
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/4 v4, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, v4

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZLandroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 60
    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZLandroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    .line 61
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method static createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZLandroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 7

    .line 88
    new-instance v0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;

    .line 89
    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f0800ba

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;-><init>(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ILandroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_0

    .line 92
    invoke-static {p2}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMockHistory()Ljava/util/List;

    move-result-object p0

    .line 91
    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->generateChart(Landroid/content/Context;Ljava/util/List;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v1

    if-eq p0, v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, -0x1

    .line 96
    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisRealVal()Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v4

    move-object v1, p1

    move v6, p4

    .line 101
    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisRealData(Landroid/content/Context;Ljava/util/ArrayList;IJZ)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisMockVal()Ljava/util/ArrayList;

    move-result-object p2

    .line 104
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 103
    invoke-static {p1, p2, p3, p4}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisMockData(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/graphics/drawable/Drawable;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p6}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 107
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p1, p0}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    invoke-virtual {p6, p1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method static setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZLandroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f110b4e

    .line 76
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 76
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f110b4f

    .line 79
    invoke-virtual {p4, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 80
    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZLandroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    return-void
.end method
