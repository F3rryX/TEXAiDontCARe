.class public Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;
.super Lcom/texa/carelib/care/vehicle/internal/VehicleBase;
.source "SerialVehicle.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final ONE_SHOT_READ_TIMEOUT:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "SerialVehicle"

.field private static _SingletonInstance:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;


# instance fields
.field private mActionObjectType:Ljava/lang/Integer;

.field private final mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

.field private mObjectPayloadCount:I

.field private final mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

.field private mReadCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mReadMessageID:Ljava/util/UUID;

.field private mSessionID:Ljava/lang/String;

.field private mSubscribeCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeMessageID:Ljava/util/UUID;

.field private mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

.field private mUnsubscribeCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsubscribeMessageID:Ljava/util/UUID;

.field private mUpdateAvailableParameterCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateECUCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSubscriptionCountersMessageID:Ljava/util/UUID;

.field private mUpdateSupportedParameterCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleValueParserExt:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

.field private final mVehicleValueParserLegacy:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V
    .locals 0

    .line 90
    invoke-direct {p0, p3, p4, p5}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;-><init>(Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    .line 92
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    .line 94
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    .line 96
    invoke-interface {p3}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p2

    invoke-super {p0, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setAccessoryStatus(I)V

    .line 97
    invoke-interface {p3}, Lcom/texa/carelib/care/accessory/Accessory;->getDiagnosisMode()I

    move-result p2

    invoke-super {p0, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setDiagnosisMode(I)V

    const/4 p2, 0x1

    const/16 p3, 0x2e

    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    const/16 p3, 0x2f

    .line 100
    invoke-virtual {p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    .line 101
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-direct {p1, p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;-><init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    .line 103
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;

    invoke-direct {p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mVehicleValueParserLegacy:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    .line 104
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;

    invoke-direct {p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mVehicleValueParserExt:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)Lcom/texa/carelib/core/Callback;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadCallback:Lcom/texa/carelib/core/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateRead(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private canSubscribe(Ljava/lang/Integer;Ljava/lang/Integer;I)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_1

    return v0

    .line 509
    :cond_1
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Too much subscription! Actual: %1$d/%2$d Required: %3$d"

    invoke-static {v1, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method private handleGetNumSubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 590
    :try_start_0
    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;

    move-result-object v3

    .line 591
    sget-object v4, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const-string v5, "CMD_GetNumSubscribedObjects received. Active:%1$d Max:%2$d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->getMaximumSubscriptionCount()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v4, v5, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->getMaximumSubscriptionCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setMaximumSubscriptionCount(Ljava/lang/Integer;)V

    .line 594
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 596
    :cond_0
    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const-string v4, "CMD_GetNumSubscribedObjects error. Current status:%d Diagnosis Mode:%d Error:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryDiagnosisMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object p2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setMaximumSubscriptionCountLegacy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersMessageID:Ljava/util/UUID;

    if-ne p1, v0, :cond_1

    .line 602
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateUpdateSubscriptionCounters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 600
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v1, :cond_2

    .line 601
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersMessageID:Ljava/util/UUID;

    if-ne p1, v1, :cond_2

    .line 602
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateUpdateSubscriptionCounters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    throw v0
.end method

.method private handleGetSessionID(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 186
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetSessionIDPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSessionID:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private handleGetSupportedECU(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateECUCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateGetSupportedECUs(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 575
    invoke-static {p1}, Lcom/texa/carelib/care/vehicletroubles/internal/parser/GetSupportedECUPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/util/Set;

    move-result-object p1

    .line 576
    sget-object p2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Supported ECUs[%1$d]: %s"

    invoke-static {p2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setSupportedECUs(Ljava/util/Set;)V

    .line 579
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 p2, 0x24

    invoke-interface {p1, p2}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setMaximumSubscriptionCountLegacy()V

    goto :goto_0

    .line 583
    :cond_1
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryDiagnosisMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    aput-object p2, v3, v0

    const-string p2, "CMD_GetSupportedECU error. Current status:%d Diagnosis Mode:%d Error:%s"

    invoke-static {p1, p2, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleMessageGetAvailableParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateAvailableParameterCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateGetAvailableParameters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 734
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessageGetAvailableParameters error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 738
    :cond_1
    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetAvailableParametersPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/util/Set;

    move-result-object p1

    .line 739
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->onAvailableParametersChanged(Ljava/util/Set;)V

    return-void
.end method

.method private handleMessageGetDiagnosisMode(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 610
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetDiagnosisModePacketParser;->parse(Lcom/texa/carelib/communication/Message;)I

    move-result p1

    .line 611
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setDiagnosisMode(I)V

    :cond_0
    return-void
.end method

.method private handleMessageGetObjectValue(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    if-nez p2, :cond_1

    .line 641
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_1

    .line 642
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mVehicleValueParserLegacy:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getReceivedTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->parse(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[BLjava/util/Date;)V

    .line 643
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 644
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 645
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->onParametersRead(Ljava/util/List;)V

    .line 646
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->updateParameters(Ljava/util/List;Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 649
    :cond_0
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getDTCs()Ljava/util/Map;

    move-result-object p1

    .line 650
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 651
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->onDTCsRead(Ljava/util/Map;)V

    .line 653
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 654
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ECU %d contains %d DTCs."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, v0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->didReceiveDTCsForECU(Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleMessageGetObjectValueExt(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    if-nez p2, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_1

    .line 664
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mVehicleValueParserExt:Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getReceivedTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->parse(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[BLjava/util/Date;)V

    .line 666
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 667
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 668
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->onParametersRead(Ljava/util/List;)V

    .line 669
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->updateParameters(Ljava/util/List;Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 672
    :cond_0
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getDTCs()Ljava/util/Map;

    move-result-object p1

    .line 673
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 674
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->onDTCsRead(Ljava/util/Map;)V

    .line 676
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 677
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ECU %d contains %d DTCs."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, v0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->didReceiveDTCsForECU(Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleMessageGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 617
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->getStatus()I

    move-result p1

    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->setAccessoryStatus(I)V

    :cond_0
    return-void
.end method

.method private handleMessageGetSupportedParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSupportedParameterCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateGetSupportedParameters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 748
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessageGetSupportedParameters error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 752
    :cond_1
    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetSupportedParametersPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/util/Set;

    move-result-object p1

    .line 754
    sget-object p2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "handleMessageGetSupportedParameters parameters: %1$d"

    invoke-static {p2, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->onSupportedParametersChanged(Ljava/util/Set;)V

    return-void
.end method

.method private handleMessageGetTripStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_1

    .line 627
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetTripStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    :cond_1
    return-void
.end method

.method private handleMessageSubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 516
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "%1$s received."

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 518
    :cond_0
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryDiagnosisMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const-string v0, "%1$s error. Current status:%2$d Diagnosis Mode:%3$d Error:%4$s"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 522
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mActionObjectType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 523
    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeMessageID:Ljava/util/UUID;

    if-ne v0, v1, :cond_3

    .line 527
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_2

    .line 528
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateSubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    if-nez p2, :cond_3

    .line 532
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mObjectPayloadCount:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    .line 536
    :cond_3
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadMessageID:Ljava/util/UUID;

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getMaximumSubscriptionCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mObjectPayloadCount:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    .line 539
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->getCurrentAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 541
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v2

    const-wide/16 v3, 0x2710

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v5}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->waitFor(ILjava/util/Set;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 545
    :cond_4
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadCallback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_5

    .line 546
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateRead(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleMessageUnsubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 554
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "CMD_UnsubscribedObjects received."

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :cond_0
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessoryDiagnosisMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "CMD_UnsubscribedObjects error. Current status:%d Diagnosis Mode:%d Error:%s"

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeMessageID:Ljava/util/UUID;

    if-ne p1, v1, :cond_1

    .line 560
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateUnsubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    :cond_1
    if-nez p2, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mObjectPayloadCount:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method static removeNotSupportedParameters(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 140
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method private setMaximumSubscriptionCountLegacy()V
    .locals 2

    .line 768
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getECUCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setMaximumSubscriptionCount(Ljava/lang/Integer;)V

    return-void
.end method

.method public static singletonInstance(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;
    .locals 7

    .line 76
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->_SingletonInstance:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->_SingletonInstance:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    .line 80
    :cond_0
    sget-object p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->_SingletonInstance:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    return-object p0
.end method

.method private terminateGetAvailableParameters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateAvailableParameterCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 702
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateAvailableParameterCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateGetSupportedECUs(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateECUCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 687
    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 690
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateECUCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateGetSupportedParameters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSupportedParameterCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 696
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSupportedParameterCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateRead(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 719
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadMessageID:Ljava/util/UUID;

    .line 720
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateSubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 707
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeMessageID:Ljava/util/UUID;

    .line 708
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateUnsubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeMessageID:Ljava/util/UUID;

    .line 714
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private terminateUpdateSubscriptionCounters(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;

    invoke-direct {v1, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 725
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method beginProtectionSession(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z

    return-void
.end method

.method beginProtectionSessionIfNeeded(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getAccessory()Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->isDTCEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->beginProtectionSession(Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public beginUpdateDTCs(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Begin Update DTCs with interval %d(ms)"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedECUs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 432
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v3, p1, v5

    if-ltz v3, :cond_1

    .line 440
    sget-object v3, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->ONE_SHOT_READ:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, p1, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 444
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "beginUpdateDTCs(%1$dms) for ECUs: [%2$s]"

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setECUScanProgress(F)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setDTCTranslationProgress(F)V

    .line 448
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;JLjava/util/Set;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->beginProtectionSessionIfNeeded(Lcom/texa/carelib/core/Callback;)V

    return-void

    .line 441
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Interval value cannot be greater than "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->ONE_SHOT_READ:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Interval value cannot be less than 0."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "No ECU available for DTCs reading."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1

    .line 422
    :cond_4
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public beginUpdateValues(JLjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "beginUpdateValues(%dms) for parameters: [%s]"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->subscribe(ILjava/lang/Long;Ljava/util/Set;)V

    return-void

    .line 277
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Parameter list could not be empty."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 269
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public createSubscribedObjectsPayloadComposer(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;",
            ">;)V"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 798
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Using Diagnosis Ext"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposerExt;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposerExt;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    goto :goto_0

    .line 801
    :cond_0
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Using Diagnosis Legacy"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposerLegacy;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposerLegacy;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    .line 804
    :goto_0
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public endUpdateDTCs()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedECUs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "endUpdateDTCs for ECUs: [%1$s]"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1, v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->unsubscribe(ILjava/util/Set;)V

    return-void

    .line 493
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "No ECU supported"

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0

    .line 484
    :cond_2
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public endUpdateValues(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->unsubscribe(ILjava/util/Set;)V

    return-void

    .line 300
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Parameter list could not be empty."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 292
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method public synthetic lambda$beginUpdateDTCs$1$com-texa-carelib-care-vehicle-internal-SerialVehicle(JLjava/util/Set;Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V
    .locals 1

    .line 449
    invoke-virtual {p4}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p4, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->subscribe(ILjava/lang/Long;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 454
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 p3, 0x1c

    invoke-direct {p2, p4, p3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    const-string p3, "Unable to subscribe DTCs."

    .line 455
    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    .line 456
    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0, p4}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$loadDTCs$0$com-texa-carelib-care-vehicle-internal-SerialVehicle(Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedECUs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->read(ILjava/util/Set;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v2, 0x1c

    invoke-direct {v1, p1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    const-string p1, "Unable to read DTCs."

    .line 230
    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateLoadDTCs(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public loadAvailableDataIDs()V
    .locals 3

    .line 124
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadAvailableDataIDs()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 127
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 128
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public loadDTCs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isDTCReadingAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedECUs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 209
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getSupportedECUs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setECUScanProgress(F)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setDTCTranslationProgress(F)V

    .line 216
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->clearDTCs()V

    .line 219
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getReceivedECUs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 220
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->beginProtectionSessionIfNeeded(Lcom/texa/carelib/core/Callback;)V

    :cond_1
    return-void

    .line 210
    :cond_2
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "No ECU supported for DTCs read."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_3
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Supported ECU has not be loaded."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_4
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Could not read DTCs at this moment."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_5
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0

    .line 193
    :cond_6
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public loadValues(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "loadValues for parameters: [%s]"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getDiagnosisScheduler()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->read(ILjava/util/Set;)V

    return-void

    .line 256
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Parameter list could not be empty."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 248
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 785
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 787
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSessionID:Ljava/lang/String;

    .line 789
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->connected()V

    goto :goto_0

    .line 791
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mOneShotReadWaiter:Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle$OneShotReadWaiter;->notConnected()V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 157
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x2f

    if-ne v0, p1, :cond_0

    .line 158
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetObjectValue(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0x2b

    .line 159
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetObjectValueExt(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0x2e

    .line 161
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetAvailableParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0x2c

    .line 163
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 164
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetSupportedParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_1

    :cond_3
    const/16 p1, 0xe7

    .line 165
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 166
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetTripStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_4
    const/16 p1, 0xe6

    .line 167
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 169
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 170
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageGetDiagnosisMode(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_6
    const/16 p1, 0x20

    .line 171
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-eq p1, v0, :cond_b

    const/16 p1, 0x25

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0x21

    .line 173
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageUnsubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_8
    const/16 p1, 0x24

    .line 175
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleGetNumSubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_9
    const/16 p1, 0x55

    .line 177
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 178
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleGetSupportedECU(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_a
    const/16 p1, 0x4e

    .line 179
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleGetSessionID(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 172
    :cond_b
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->handleMessageSubscribedObjects(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_c
    :goto_1
    return-void
.end method

.method protected onSupportedParametersChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 760
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->onSupportedParametersChanged(Ljava/util/Set;)V

    .line 762
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x24

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setMaximumSubscriptionCountLegacy()V

    :cond_0
    return-void
.end method

.method public read(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 336
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string p2, "Read diagnosis values Type: %1$d ID:[%2$s]"

    invoke-static {v1, p2, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 339
    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadCallback:Lcom/texa/carelib/core/Callback;

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mActionObjectType:Ljava/lang/Integer;

    .line 341
    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    invoke-interface {p3}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;->getCommandId()B

    move-result p3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    sget-object v1, Lcom/texa/carelib/care/vehicle/Vehicle;->ONE_SHOT_READ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p3, p1, v1, v2, v0}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;->getPayload(IJLjava/util/Set;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mReadMessageID:Ljava/util/UUID;

    .line 343
    iget-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 345
    :cond_0
    new-instance p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected resetData()V
    .locals 2

    .line 633
    invoke-super {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleBase;->resetData()V

    .line 635
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 636
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setActiveSubscriptionCount(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public subscribe(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 351
    iput-object p4, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeCallback:Lcom/texa/carelib/core/Callback;

    const/4 p4, 0x0

    if-nez p1, :cond_0

    .line 361
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p3, "No supported parameters found."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getActiveSubscriptionCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getMaximumSubscriptionCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->canSubscribe(Ljava/lang/Integer;Ljava/lang/Integer;I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 368
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, p4

    aput-object p2, v2, v3

    invoke-static {p3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v1

    const-string p4, "Subscribe diagnosis  values Type: %1$d Interval: %2$d ms ID:[%3$s]"

    invoke-static {v0, p4, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    new-instance p4, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p4}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;->getCommandId()B

    move-result v0

    invoke-virtual {p4, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p4

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribedObjectsPayloadComposer:Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2, p3}, Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;->getPayload(IJLjava/util/Set;)[B

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mActionObjectType:Ljava/lang/Integer;

    .line 372
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mSubscribeMessageID:Ljava/util/UUID;

    .line 373
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mObjectPayloadCount:I

    .line 374
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 376
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, p4

    aput-object p2, v2, v3

    invoke-static {p3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "Could not subscribe diagnosis values Type: %1$d Interval: %2$d ms ID:[%3$s]."

    invoke-static {v0, p2, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 p3, 0x1d

    invoke-direct {p2, v3, p3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/texa/carelib/profile/R$string;->error_command_status_too_much_subscriptions:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, p4

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    .line 378
    invoke-direct {p0, p0, p2}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->terminateSubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;Lcom/texa/carelib/core/CareError;)V

    if-ne v3, p1, :cond_2

    const/4 p1, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setECUScanProgress(F)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->setDTCTranslationProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unsubscribe(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 389
    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeCallback:Lcom/texa/carelib/core/Callback;

    .line 391
    sget-object p3, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Unsubscribe diagnosis values Type: %1$d ID:[%2$s]"

    invoke-static {p3, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 394
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-byte v0, p1

    .line 396
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 397
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 398
    invoke-static {p3, v1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mObjectPayloadCount:I

    .line 403
    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x21

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    .line 404
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p3

    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUnsubscribeMessageID:Ljava/util/UUID;

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mActionObjectType:Ljava/lang/Integer;

    .line 406
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public updateAvailableParameters(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateAvailableParameterCallback:Lcom/texa/carelib/core/Callback;

    .line 319
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public updateECUs(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateECUCallback:Lcom/texa/carelib/core/Callback;

    .line 310
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x55

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public updateSubscriptionCounters(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Sending GetNumSubscribedObjects"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersCallback:Lcom/texa/carelib/core/Callback;

    .line 414
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSubscriptionCountersMessageID:Ljava/util/UUID;

    .line 416
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public updateSupportedParameters(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mUpdateSupportedParameterCallback:Lcom/texa/carelib/core/Callback;

    .line 328
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 330
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method
