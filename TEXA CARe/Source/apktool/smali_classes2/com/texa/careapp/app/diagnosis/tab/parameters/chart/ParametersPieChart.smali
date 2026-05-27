.class public Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;
.super Ljava/lang/Object;
.source "ParametersPieChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    const-string v0, "0"

    .line 43
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p0, p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->serChartParameters(Landroid/content/Context;Lcom/github/mikephil/charting/charts/PieChart;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->setEmpty(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getReadableValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {p0, p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->serChartParameters(Landroid/content/Context;Lcom/github/mikephil/charting/charts/PieChart;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->setNoDataChartStyle(Landroid/content/Context;Lcom/github/mikephil/charting/charts/PieChart;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    :goto_0
    return-void
.end method

.method private static createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 6

    .line 100
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v0

    .line 102
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v2, Lcom/github/mikephil/charting/data/PieEntry;

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v3

    div-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v3

    div-int/2addr v0, v3

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawValues(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 108
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemValue()I

    move-result v5

    if-lt v2, v5, :cond_1

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemColor(Landroid/content/Context;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getNormalColor(Landroid/content/Context;)I

    move-result v2

    :goto_1
    aput v2, v1, v4

    const v2, 0x7f0600b7

    .line 109
    invoke-static {p0, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v3

    .line 108
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    .line 111
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 112
    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    .line 113
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 115
    :goto_2
    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 116
    new-instance p0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private static serChartParameters(Landroid/content/Context;Lcom/github/mikephil/charting/charts/PieChart;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V
    .locals 2

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 81
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getUnit()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    .line 82
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextColor(I)V

    const p2, 0x7f090001

    .line 83
    invoke-static {p0, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07013e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextSize(F)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    const/high16 p2, 0x42aa0000    # 85.0f

    .line 86
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    const/high16 p2, 0x43870000    # 270.0f

    .line 87
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setMaxAngle(F)V

    const/high16 p2, 0x43070000    # 135.0f

    .line 88
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    const p2, 0x106000d

    .line 89
    invoke-static {p0, p2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 90
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    const/4 p0, 0x0

    .line 91
    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    .line 93
    new-instance p0, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    const-string p2, ""

    .line 94
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    return-void
.end method

.method private static setEmpty(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 6

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-direct {v1, v5, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v4, ""

    invoke-direct {v1, v0, v4}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawValues(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 56
    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getNormalColor(Landroid/content/Context;)I

    move-result p1

    aput p1, v0, v2

    const p1, 0x7f0600b7

    .line 57
    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    aput p0, v0, v3

    .line 56
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    const/4 p0, -0x1

    .line 59
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 61
    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 62
    new-instance p0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    invoke-virtual {p2, p0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method private static setNoDataChartStyle(Landroid/content/Context;Lcom/github/mikephil/charting/charts/PieChart;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setNoDataText(Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 70
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->getPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070067

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, -0x1

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const p2, 0x7f090001

    .line 74
    invoke-static {p0, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
