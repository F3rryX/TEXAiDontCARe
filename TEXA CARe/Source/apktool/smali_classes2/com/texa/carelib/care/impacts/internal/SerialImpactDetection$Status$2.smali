.class final enum Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$2;
.super Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;
.source "SerialImpactDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;-><init>(Ljava/lang/String;ILcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;)V

    return-void
.end method

.method private handleGetEraseTripCrashStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 523
    invoke-virtual {p1, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    move-result-object p2

    .line 526
    sget-object p3, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->TripActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->getStatus()Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 527
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onMessageReceivedEraseCrashDataArea(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 513
    invoke-virtual {p1, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    .line 514
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->isCommandSupported(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 516
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method onMessageReceived(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 499
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$2;->handleGetEraseTripCrashStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$2;->onMessageReceivedEraseCrashDataArea(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
