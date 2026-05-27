.class final enum Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$1;
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

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;-><init>(Ljava/lang/String;ILcom/texa/carelib/care/trips/internal/SerialTripLogBook$1;)V

    return-void
.end method


# virtual methods
.method canEraseTrips()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canReadTrips()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isErasingTripInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isReadingTripInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onMessageReceived(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    return-void
.end method
