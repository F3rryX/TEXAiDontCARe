.class Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;
.super Ljava/lang/Object;
.source "TripEventComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/TripEventComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripEventTimestampComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/TripEventComparator;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/ecodriving/TripEventComparator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;->this$0:Lcom/texa/careapp/app/ecodriving/TripEventComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/TripEventComparator;Lcom/texa/careapp/app/ecodriving/TripEventComparator$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripEventComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)I
    .locals 5

    .line 34
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

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

    .line 30
    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/TripEventComparator$TripEventTimestampComparator;->compare(Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)I

    move-result p1

    return p1
.end method
