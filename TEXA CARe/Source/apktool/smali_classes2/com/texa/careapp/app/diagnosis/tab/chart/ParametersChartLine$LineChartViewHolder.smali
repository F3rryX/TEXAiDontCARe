.class public Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ParametersChartLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineChartViewHolder"
.end annotation


# instance fields
.field mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field final mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

.field final mLayout:Landroid/widget/RelativeLayout;

.field final mTitle:Landroid/widget/TextView;

.field final mValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    .line 62
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mTitle:Landroid/widget/TextView;

    .line 64
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartValue:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 66
    iget-object p1, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;IZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v7

    const-wide/32 v9, 0x499602d2

    cmp-long v0, v7, v9

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f110a7d

    .line 78
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    if-nez p5, :cond_2

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v10

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    const-string v10, "-"

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v10

    :goto_2
    aput-object v10, v4, v9

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 78
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v10, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v12, 0x21

    invoke-interface {v4, v10, v11, v0, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 83
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 85
    :cond_3
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getLayoutPriority()I

    move-result v0

    move/from16 v4, p4

    invoke-virtual {p0, v2, v4, v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->setChartParameters(Landroid/content/Context;II)V

    .line 89
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMaxValue()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMinValue()I

    move-result v10

    invoke-static {v0, v4, v10}, Lcom/texa/careapp/utils/ChartUtils;->getBaseConfiguration(Lcom/github/mikephil/charting/charts/LineChart;II)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v0

    iput-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 91
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getValue()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 92
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, v1, v2, v3, v9}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    goto :goto_4

    .line 94
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_5

    .line 95
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    goto :goto_4

    .line 98
    :cond_5
    iget-object v0, v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZ)V

    :goto_4
    return-void
.end method

.method createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZ)V
    .locals 7

    .line 143
    new-instance v0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;

    .line 144
    invoke-virtual {p3, p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f0800ba

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;-><init>(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ILandroid/graphics/drawable/Drawable;)V

    if-nez p5, :cond_0

    .line 145
    invoke-static {p3}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMockHistory()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p2, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->generateChart(Landroid/content/Context;Ljava/util/List;)V

    .line 147
    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p3, p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v1

    if-eq p1, v1, :cond_2

    if-nez p4, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 148
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mValue:Landroid/widget/TextView;

    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisRealVal()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v4

    move-object v1, p2

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisRealData(Landroid/content/Context;Ljava/util/ArrayList;IJZ)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisMockVal()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-static {p2, p3, p4, p5}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisMockData(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/graphics/drawable/Drawable;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance p3, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p3, p1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method

.method setChartParameters(Landroid/content/Context;II)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    const v2, 0x7f070068

    const/4 v3, 0x0

    if-le p3, v0, :cond_2

    .line 116
    iget-object p3, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    rem-int/lit8 p2, p2, 0x2

    const v5, 0x7f070063

    if-ne p2, v0, :cond_0

    const v6, 0x7f070068

    goto :goto_0

    :cond_0
    const v6, 0x7f070063

    :goto_0
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eq p2, v0, :cond_1

    const v5, 0x7f070068

    :cond_1
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 118
    invoke-virtual {p3, v4, v3, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 121
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070066

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 125
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 128
    :cond_2
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700ed

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p2, v3, v3, v3, p3}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object p3, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const p3, 0x7f08016c

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 133
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, v3, p1, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 135
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method setMockDataChartStyle(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_0

    .line 107
    iget-object p4, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f110b4e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p4, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f110b4f

    invoke-virtual {p4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;->createChart(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ZZ)V

    return-void
.end method
