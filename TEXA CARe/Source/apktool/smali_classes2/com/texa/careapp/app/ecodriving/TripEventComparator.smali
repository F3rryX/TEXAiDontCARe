.class Lcom/texa/careapp/app/ecodriving/TripEventComparator;
.super Ljava/lang/Object;
.source "TripEventComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;
    }
.end annotation


# instance fields
.field private comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/comparators/ComparatorChain<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
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

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/TripEventComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 23
    new-instance v1, Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripEventComparator;Lcom/texa/careapp/app/ecodriving/TripEventComparator$1;)V

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
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/TripEventComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
