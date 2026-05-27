.class public Lcom/texa/carelib/care/trips/internal/parser/GetTripStatusPacketParser;
.super Ljava/lang/Object;
.source "GetTripStatusPacketParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/TripStatus;
    .locals 3

    .line 25
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    if-eqz p0, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    .line 30
    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 31
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Searching:Lcom/texa/carelib/care/trips/TripStatus;

    :cond_3
    :goto_0
    return-object v0
.end method
