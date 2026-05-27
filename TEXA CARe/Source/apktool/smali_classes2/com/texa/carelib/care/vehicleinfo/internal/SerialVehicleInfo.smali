.class public Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;
.super Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;
.source "SerialVehicleInfo.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialVehicleInfo"


# instance fields
.field private mAccessoryStatus:I

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;-><init>()V

    .line 42
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfile;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    .line 43
    iput-object p2, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    const/4 p2, 0x1

    const/16 v0, 0x2d

    .line 44
    invoke-virtual {p1, p2, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->enableCommandSubscription(ZI)V

    const/16 p1, 0xff

    .line 46
    iput p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mAccessoryStatus:I

    return-void
.end method

.method private handleMessageGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 95
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->getStatus()I

    move-result p1

    .line 98
    iget p2, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mAccessoryStatus:I

    if-eq p1, p2, :cond_0

    .line 99
    iput p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mAccessoryStatus:I

    .line 101
    iget-object p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {p1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isVehicleInfoAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->loadVehicleInfo()Z

    :cond_0
    return-void
.end method

.method private handleMessageGetVIN(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_1

    .line 116
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetVINPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 118
    sget-object p1, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Could not retrieve the VEHICLE_ID code."

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    .line 119
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->setVehicleID(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    sget-object p2, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "VEHICLE_ID: %s"

    invoke-static {p2, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->setVehicleID(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadVehicleInfo()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isVehicleInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method public loadInfo()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->loadInfo()V

    .line 58
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->loadVehicleInfo()Z

    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 132
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_0

    const/16 p1, 0xff

    .line 133
    iput p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->mAccessoryStatus:I

    :cond_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 75
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->handleMessageGetStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;->handleMessageGetVIN(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
