.class public Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "TripDataDownloadCompletedEvent.java"


# instance fields
.field private final mTripsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 31
    iput-object p2, p0, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->mTripsInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTripsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->mTripsInfo:Ljava/util/List;

    return-object v0
.end method
