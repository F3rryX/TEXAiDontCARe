.class Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;
.super Ljava/lang/Object;
.source "ParametersChartComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/parameters/ParametersChartComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParametersPriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/parameters/ParametersChartComparator;


# direct methods
.method constructor <init>(Lcom/texa/careapp/parameters/ParametersChartComparator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;->this$0:Lcom/texa/careapp/parameters/ParametersChartComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)I
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getPriority()I

    move-result p1

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;->getPriority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    check-cast p2, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;->compare(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)I

    move-result p1

    return p1
.end method
