.class public final synthetic Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

.field public final synthetic f$1:Lcom/texa/carelib/care/trips/TripLogBook;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/texa/carelib/core/CareError;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/TripLogBookBase;Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/care/trips/TripLogBook;

    iput-object p3, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$3:Lcom/texa/carelib/core/CareError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/trips/internal/TripLogBookBase;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/care/trips/TripLogBook;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;->f$3:Lcom/texa/carelib/core/CareError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->lambda$terminateTripDataDownload$1$com-texa-carelib-care-trips-internal-TripLogBookBase(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method
