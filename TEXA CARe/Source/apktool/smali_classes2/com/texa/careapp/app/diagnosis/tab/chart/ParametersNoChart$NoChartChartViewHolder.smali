.class public Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ParametersNoChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoChartChartViewHolder"
.end annotation


# instance fields
.field final title:Landroid/widget/TextView;

.field final value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0147

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0148

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;->value:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Z)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getReadableValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "-"

    :goto_0
    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-interface {v0, v1, p2, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 41
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersNoChart$NoChartChartViewHolder;->value:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
