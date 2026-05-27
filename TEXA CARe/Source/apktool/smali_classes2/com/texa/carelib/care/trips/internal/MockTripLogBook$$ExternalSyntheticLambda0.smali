.class public final synthetic Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/MockTripLogBook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/MockTripLogBook;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->lambda$readTripsInfo$1$com-texa-carelib-care-trips-internal-MockTripLogBook()V

    return-void
.end method
