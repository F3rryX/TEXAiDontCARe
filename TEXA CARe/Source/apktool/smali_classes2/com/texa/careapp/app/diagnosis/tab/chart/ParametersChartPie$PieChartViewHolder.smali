.class public Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ParametersChartPie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PieChartViewHolder"
.end annotation


# instance fields
.field final mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field final mLayout:Landroid/widget/RelativeLayout;

.field final mTitle:Landroid/widget/TextView;

.field final mValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    .line 45
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mTitle:Landroid/widget/TextView;

    .line 47
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    iget-object p1, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;I)V
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getReadableValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getLayoutPriority()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    rem-int/lit8 p3, p3, 0x2

    const v3, 0x7f070063

    const v4, 0x7f070068

    if-ne p3, v1, :cond_0

    const v5, 0x7f070068

    goto :goto_0

    :cond_0
    const v5, 0x7f070063

    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v5, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eq p3, v1, :cond_1

    const v3, 0x7f070068

    :cond_1
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 57
    invoke-virtual {v0, v2, v5, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 60
    iget-object p3, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->serChartParameters(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 65
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    .line 66
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->setNoDataChartStyle(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    :goto_1
    return-void
.end method

.method createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V
    .locals 6

    .line 107
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v0

    .line 109
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v2, Lcom/github/mikephil/charting/data/PieEntry;

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v3

    div-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getMaxValue()I

    move-result v3

    div-int/2addr v0, v3

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawValues(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 115
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemValue()I

    move-result v5

    if-lt v2, v5, :cond_1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemColor(Landroid/content/Context;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getNormalColor(Landroid/content/Context;)I

    move-result v2

    :goto_1
    aput v2, v1, v4

    const v2, 0x7f0600b7

    .line 116
    invoke-static {p1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v3

    .line 115
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    .line 118
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 119
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getProblemColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_2

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 122
    :goto_2
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    new-instance p2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {p2, v0}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method serChartParameters(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getUnit()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextColor(I)V

    .line 90
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v0, 0x7f090001

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07013e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterTextSize(F)V

    .line 92
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 93
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 94
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setMaxAngle(F)V

    .line 95
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v0, 0x43070000    # 135.0f

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 96
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v0, 0x106000d

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 97
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setTouchEnabled(Z)V

    .line 100
    new-instance p1, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {p1}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    const-string p2, ""

    .line 101
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/PieChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    return-void
.end method

.method setNoDataChartStyle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setNoDataText(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartPie$PieChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/PieChart;->getPaint(I)Landroid/graphics/Paint;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, -0x1

    .line 79
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v0, 0x7f090001

    .line 81
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
