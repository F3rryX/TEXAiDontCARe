.class public final synthetic Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

.field public final synthetic f$1:Lcom/texa/carelib/care/trips/TripDataDownloadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->lambda$readTripsInfo$2$com-texa-carelib-care-trips-internal-SerialTripLogBook(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    return-void
.end method
