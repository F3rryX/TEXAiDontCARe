.class Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;
.super Ljava/lang/Object;
.source "TripScoreEntityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoreEntityTimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;->this$0:Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;)I
    .locals 5

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    check-cast p2, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator$ScoreEntityTimestampComparator;->compare(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;)I

    move-result p1

    return p1
.end method
