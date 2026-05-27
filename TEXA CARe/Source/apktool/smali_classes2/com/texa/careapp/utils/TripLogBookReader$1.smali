.class Lcom/texa/careapp/utils/TripLogBookReader$1;
.super Ljava/lang/Object;
.source "TripLogBookReader.java"

# interfaces
.implements Lcom/texa/carelib/care/trips/TripDataDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/TripLogBookReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/TripLogBookReader;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/TripLogBookReader;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/utils/TripLogBookReader$1;->this$0:Lcom/texa/careapp/utils/TripLogBookReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTripDataDownloadCompleted$0(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;)V
    .locals 3

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onTripDataErased() Error: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "trip log book cancellato correttamente"

    .line 61
    invoke-static {p1, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "errore nella cancellazione del trip log book: %s"

    invoke-static {p0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTripDataDownloadCompleted(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onDownloadTripDataCompleted() Error: %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "download error: %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getTripsInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/utils/TripLogBookReader$1;->this$0:Lcom/texa/careapp/utils/TripLogBookReader;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getTripsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/TripLogBookReader;->access$000(Lcom/texa/careapp/utils/TripLogBookReader;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 56
    :try_start_1
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/TripLogBook;

    new-instance v1, Lcom/texa/careapp/utils/TripLogBookReader$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/texa/careapp/utils/TripLogBookReader$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/trips/TripLogBook;->eraseTripsInfo(Lcom/texa/carelib/core/Callback;)V
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "impossibile cancellare il trip log book"

    .line 67
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Impossibile cancellare il tripLogBook poich\u00e8 non tutti i viaggi sono stati salvati"

    .line 71
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "saveTripLogBook exception"

    .line 51
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTripDataDownloadProgressChanged(Lcom/texa/carelib/care/trips/events/TripDataDownloadProgressChangedEvent;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/events/TripDataDownloadProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onDownloadTripDataProgressChanged: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
