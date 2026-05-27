.class Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;
.super Ljava/lang/Object;
.source "TripComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/TripComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripEventTimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/TripComparator;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/ecodriving/TripComparator;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;->this$0:Lcom/texa/careapp/app/ecodriving/TripComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/TripComparator;Lcom/texa/careapp/app/ecodriving/TripComparator$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)I
    .locals 5

    .line 35
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventTimestampComparator;->compare(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)I

    move-result p1

    return p1
.end method
