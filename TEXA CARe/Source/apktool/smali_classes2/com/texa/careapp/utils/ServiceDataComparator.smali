.class Lcom/texa/careapp/utils/ServiceDataComparator;
.super Ljava/lang/Object;
.source "ServiceDataComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;,
        Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;
    }
.end annotation


# instance fields
.field private comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/comparators/ComparatorChain<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/ServiceDataComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 21
    new-instance v1, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;-><init>(Lcom/texa/careapp/utils/ServiceDataComparator;Lcom/texa/careapp/utils/ServiceDataComparator$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/utils/ServiceDataComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    new-instance v1, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;-><init>(Lcom/texa/careapp/utils/ServiceDataComparator;Lcom/texa/careapp/utils/ServiceDataComparator$1;)V

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
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/utils/ServiceDataComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
