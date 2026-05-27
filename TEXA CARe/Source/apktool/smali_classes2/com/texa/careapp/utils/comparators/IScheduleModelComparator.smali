.class public Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;
.super Ljava/lang/Object;
.source "IScheduleModelComparator.java"


# instance fields
.field comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 20
    new-instance v1, Lcom/texa/careapp/utils/comparators/StatusComparator;

    invoke-direct {v1}, Lcom/texa/careapp/utils/comparators/StatusComparator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    new-instance v1, Lcom/texa/careapp/utils/comparators/DateAndKmComparator;

    invoke-direct {v1}, Lcom/texa/careapp/utils/comparators/DateAndKmComparator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    new-instance v1, Lcom/texa/careapp/utils/comparators/DateComparator;

    invoke-direct {v1}, Lcom/texa/careapp/utils/comparators/DateComparator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    new-instance v1, Lcom/texa/careapp/utils/comparators/KmComparator;

    invoke-direct {v1}, Lcom/texa/careapp/utils/comparators/KmComparator;-><init>()V

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
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
