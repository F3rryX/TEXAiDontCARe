.class public Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;
.super Lcom/texa/carelib/care/trips/internal/CurrentTripBase;
.source "SerialCurrentTrip.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialCurrentTrip"


# instance fields
.field private final mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

.field private mStatisticsProgressiveIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 41
    iput-object p3, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    .line 43
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 44
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/4 p2, 0x1

    const/16 p3, 0xe7

    .line 45
    invoke-interface {p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    :goto_0
    return-void
.end method

.method private handleCommandGetStartTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_1

    .line 273
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 274
    new-instance p2, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;-><init>()V

    .line 275
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleCommandGetStartTripData error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCommandGetStatisticsTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->updateProgressiveIndex(Ljava/lang/Integer;)V

    if-nez p2, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 314
    new-instance p2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;-><init>()V

    .line 316
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleCommandGetStatisticsTripData error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCommandGetStopTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_1

    .line 292
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 293
    new-instance p2, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;-><init>()V

    .line 295
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleCommandGetStopTripData error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCommandGetTripStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p2

    .line 250
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetTripStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    if-eq p2, p1, :cond_1

    .line 253
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 257
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip$1;->$SwitchMap$com$texa$carelib$care$trips$TripStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatus;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->loadTripInfo(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadTripInfo(Ljava/util/EnumSet;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;",
            ">;Z)V"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "loadTripInfo[infoType=%s, force_reload_total_statistic_block=%b]"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendMessage(Lcom/texa/carelib/profile/internal/SerialProfileProxy;Lcom/texa/carelib/communication/Message;)V

    .line 217
    :cond_0
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->isTripStatisticsDiffSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendGetStatisticDiffTripData()V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendGetStatisticsTripData()V

    .line 225
    :cond_2
    :goto_0
    sget-object p2, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x61

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendMessage(Lcom/texa/carelib/profile/internal/SerialProfileProxy;Lcom/texa/carelib/communication/Message;)V

    :cond_3
    return-void
.end method

.method private loadTripInfo(Z)V
    .locals 3

    .line 201
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    sget-object v1, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    sget-object v2, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->loadTripInfo(Ljava/util/EnumSet;Z)V

    return-void
.end method

.method private sendMessage(Lcom/texa/carelib/profile/internal/SerialProfileProxy;Lcom/texa/carelib/communication/Message;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 243
    invoke-interface {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    return-object v0
.end method

.method getProgressiveIndex()Ljava/lang/Integer;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mStatisticsProgressiveIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getRawData()[B
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripID()Ljava/math/BigInteger;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripID()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    return-object v0
.end method

.method handleCommandGetStatisticDiffTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0x2b

    .line 90
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->updateProgressiveIndex(Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendGetStatisticsTripData()V

    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;

    move-result-object p1

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object p2, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mStatisticsProgressiveIndex:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->getProgressiveIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->isValidProgressiveIndex(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p2

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 106
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->updateProgressiveIndex(Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendGetStatisticsTripData()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->getProgressiveIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->updateProgressiveIndex(Ljava/lang/Integer;)V

    .line 110
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    const-string v1, "Applying diff: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mStatisticsProgressiveIndex:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-static {p2, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mergeStatisticDiffTripData(Lcom/texa/carelib/care/trips/TripStatisticsInfo;[B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->updateProgressiveIndex(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendGetStatisticsTripData()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected isTripStatisticsDiffSupported()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result v0

    return v0
.end method

.method isValidProgressiveIndex(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const v2, 0xffff

    .line 130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 134
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public bridge synthetic loadTripInfo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 37
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->loadTripInfo()V

    return-void
.end method

.method public loadTripInfo(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->loadTripInfo(Ljava/util/EnumSet;Z)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method mergeStatisticDiffTripData(Lcom/texa/carelib/care/trips/TripStatisticsInfo;[B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 144
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Current trip statistics info is null and a diff command response has be received. This condition is forbidden!!!"

    invoke-static {p1, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRawData()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 149
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Current trip statistics info raw data is null and a diff command response has be received. This condition is forbidden!!!"

    invoke-static {p1, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 154
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Diff command response payload is null... This condition is forbidden!!!"

    invoke-static {p1, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 159
    :cond_2
    new-instance v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;

    invoke-direct {v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;-><init>()V

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getRawData()[B

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;->update([B[B)[B

    move-result-object p1

    .line 164
    new-instance p2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;-><init>()V

    .line 165
    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    sget-object p2, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not adaptee subscribe statistics block info from differential data."

    invoke-static {p2, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x60

    if-eq p1, v0, :cond_4

    const/16 v0, 0x61

    if-eq p1, v0, :cond_3

    const/16 v0, 0x63

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->handleCommandGetTripStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->handleCommandGetStatisticDiffTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->handleCommandGetStatisticsTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->handleCommandGetStopTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->handleCommandGetStartTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method sendGetStatisticDiffTripData()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendMessage(Lcom/texa/carelib/profile/internal/SerialProfileProxy;Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method sendGetStatisticsTripData()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->sendMessage(Lcom/texa/carelib/profile/internal/SerialProfileProxy;Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public bridge synthetic setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V

    return-void
.end method

.method public bridge synthetic setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    return-void
.end method

.method public bridge synthetic setTripID(Ljava/math/BigInteger;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripID(Ljava/math/BigInteger;)V

    return-void
.end method

.method public bridge synthetic setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    return-void
.end method

.method public bridge synthetic setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    return-void
.end method

.method updateProgressiveIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialCurrentTrip;->mStatisticsProgressiveIndex:Ljava/lang/Integer;

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
