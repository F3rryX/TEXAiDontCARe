.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;
.super Ljava/lang/Object;
.source "TripScoreEntityComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;
    }
.end annotation


# instance fields
.field comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/comparators/ComparatorChain<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections4/comparators/ComparatorChain;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    .line 20
    new-instance v1, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;-><init>(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;)V

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
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;->comparatorChain:Lorg/apache/commons/collections4/comparators/ComparatorChain;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
