.class Lcom/texa/careapp/app/ecodriving/TripComparator;
.super Ljava/lang/Object;
.source "TripComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;,
        Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;
    }
.end annotation


# instance fields
.field private comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/comparators/ComparatorChain<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/TripComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 23
    new-instance v1, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripComparator;Lcom/texa/careapp/app/ecodriving/TripComparator$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/TripComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripComparator;Lcom/texa/careapp/app/ecodriving/TripComparator$1;)V

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
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/TripComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
