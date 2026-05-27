.class public final synthetic Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

.field public final synthetic f$1:Ljava/util/EnumSet;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/EnumSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;->f$1:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;->f$1:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->lambda$loadTripInfo$0$com-texa-carelib-care-trips-internal-MockCurrentTrip(Ljava/util/EnumSet;)V

    return-void
.end method
