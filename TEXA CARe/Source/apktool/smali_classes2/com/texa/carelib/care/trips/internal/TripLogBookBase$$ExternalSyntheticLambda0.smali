.class public final synthetic Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

.field public final synthetic f$1:Lcom/texa/carelib/care/trips/TripLogBook;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/TripLogBookBase;Lcom/texa/carelib/care/trips/TripLogBook;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/trips/TripLogBook;

    iput p3, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/trips/TripLogBook;

    iget v2, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;->f$2:F

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->lambda$fireDownloadTripDataProgressChanged$2$com-texa-carelib-care-trips-internal-TripLogBookBase(Lcom/texa/carelib/care/trips/TripLogBook;F)V

    return-void
.end method
