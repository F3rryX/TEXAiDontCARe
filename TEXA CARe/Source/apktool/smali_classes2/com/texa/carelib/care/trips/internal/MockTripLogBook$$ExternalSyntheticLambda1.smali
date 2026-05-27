.class public final synthetic Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/MockTripLogBook;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/Callback;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->lambda$eraseTripsInfo$0$com-texa-carelib-care-trips-internal-MockTripLogBook(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method
