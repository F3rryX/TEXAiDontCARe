.class final enum Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$2;
.super Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
.source "SerialTripLogBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;-><init>(Ljava/lang/String;ILcom/texa/carelib/care/trips/internal/SerialTripLogBook$1;)V

    return-void
.end method

.method private handleGetEraseTripCrashStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 268
    invoke-virtual {p1, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateEraseTrips(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    move-result-object p2

    .line 271
    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->getStatus()Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    move-result-object p2

    sget-object p3, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->TripActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    if-eq p2, p3, :cond_1

    const/4 p2, 0x0

    .line 272
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateEraseTrips(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method canEraseTrips()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method canReadTrips()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handleCommandEraseTripDataArea(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 258
    invoke-virtual {p1, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateEraseTrips(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    .line 259
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->isCommandSupported(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 261
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateEraseTrips(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method isErasingTripInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isReadingTripInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onMessageReceived(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 242
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$2;->handleGetEraseTripCrashStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$2;->handleCommandEraseTripDataArea(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
