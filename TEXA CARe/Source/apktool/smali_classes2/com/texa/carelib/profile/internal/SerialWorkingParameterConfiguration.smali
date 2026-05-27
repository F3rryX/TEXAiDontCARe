.class public Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialWorkingParameterConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/WorkingParameterConfiguration;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field private static final DEFAULT_SPEED_LIMIT:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "SerialWorkingParameterConfiguration"


# instance fields
.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-void
.end method

.method private handleMessageGetWorkingParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    if-nez p2, :cond_0

    .line 69
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 72
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "Working parameter [key=%d,value=%s]"

    invoke-static {v2, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSetWorkingParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->loadValues()Z

    :cond_0
    return-void
.end method

.method private setDefaultDiagnosisSpeedLimitIfNeeded(Ljava/lang/Float;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->updateDiagnosisSpeedLimit(F)V

    :cond_0
    return-void
.end method

.method private updateDiagnosisSpeedLimit(F)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->getSetDiagnosisSpeedLimitPayload(F)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method


# virtual methods
.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method getSetDiagnosisSpeedLimitPayload(F)[B
    .locals 2

    const/4 v0, 0x5

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public loadInfo()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/texa/carelib/profile/ProfileSubModule;->loadInfo()V

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->loadValues()Z

    return-void
.end method

.method public loadValues()Z
    .locals 3

    .line 48
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadValues"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 55
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->handleMessageGetWorkingParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;->handleSetWorkingParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
