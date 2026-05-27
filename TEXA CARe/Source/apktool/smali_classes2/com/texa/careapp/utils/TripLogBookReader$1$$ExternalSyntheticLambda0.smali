.class public final synthetic Lcom/texa/careapp/utils/TripLogBookReader$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/TripLogBookReader$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/TripLogBookReader$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;

    check-cast p1, Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/TripLogBookReader$1;->lambda$onTripDataDownloadCompleted$0(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;)V

    return-void
.end method
