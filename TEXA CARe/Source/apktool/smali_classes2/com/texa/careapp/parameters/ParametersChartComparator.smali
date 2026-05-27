.class public Lcom/texa/careapp/parameters/ParametersChartComparator;
.super Ljava/lang/Object;
.source "ParametersChartComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;
    }
.end annotation


# instance fields
.field comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/comparators/ComparatorChain<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/parameters/ParametersChartComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 23
    new-instance v1, Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;

    invoke-direct {v1, p0}, Lcom/texa/careapp/parameters/ParametersChartComparator$ParametersPriorityComparator;-><init>(Lcom/texa/careapp/parameters/ParametersChartComparator;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/parameters/ParametersChartComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
