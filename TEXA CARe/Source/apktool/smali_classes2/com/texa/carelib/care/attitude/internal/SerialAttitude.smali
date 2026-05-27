.class public Lcom/texa/carelib/care/attitude/internal/SerialAttitude;
.super Lcom/texa/carelib/care/attitude/internal/AttitudeBase;
.source "SerialAttitude.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialAttitude"


# instance fields
.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 28
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 31
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 32
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/16 p2, 0x91

    const/4 v0, 0x1

    .line 33
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    const/16 p2, 0x92

    .line 34
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    :goto_0
    return-void
.end method

.method private onMessageReceivedGetRotationMatrix(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_1

    .line 99
    new-instance p2, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;-><init>()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->create([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    move-result-object v0

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->setRotationMatrixReport(Lcom/texa/carelib/care/attitude/RotationMatrixReport;)V

    :cond_1
    return-void
.end method

.method private onMessageReceivedGetRotationMatrixStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 112
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetRotationMatrixStatusParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginEstimation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;->$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I

    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->getAttitudeEstimationStatus()Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Attitude estimation is already in progress."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public loadAttitudeInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public loadInfo()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->loadInfo()V

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->loadAttitudeInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 85
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x91

    if-eq p1, v0, :cond_1

    const/16 v0, 0x92

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->onMessageReceivedGetRotationMatrix(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/attitude/internal/SerialAttitude;->onMessageReceivedGetRotationMatrixStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
