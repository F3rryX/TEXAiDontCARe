.class public Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;
.super Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;
.source "SerialCareFeatureVerifier.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# instance fields
.field private mCanChangeLedBehaviour:Z

.field private final mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 24
    iput-object p3, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    return-void
.end method


# virtual methods
.method public canChangeLedBehaviour()Z
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->canChangeLedBehaviour()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCanChangeLedBehaviour:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 6

    const/16 v0, 0x76

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    return v2

    .line 83
    :pswitch_0
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v4, 0x3a

    invoke-interface {p1, v4}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->getAccessory()Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object p1

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ETRK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance v4, Lcom/texa/carelib/core/utils/Version;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v5, v3, v3, v0}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1, v4}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2

    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x23

    .line 80
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 73
    :pswitch_2
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x72

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x73

    .line 74
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x74

    .line 75
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x75

    .line 76
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 70
    :pswitch_3
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x80

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    .line 59
    :pswitch_4
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x92

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x91

    .line 60
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 63
    :pswitch_5
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    .line 66
    :pswitch_6
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x81

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x82

    .line 67
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 50
    :pswitch_7
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0xf0

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    .line 56
    :pswitch_8
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0xe7

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    .line 53
    :pswitch_9
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x42

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    .line 46
    :pswitch_a
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x25

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    const/16 v0, 0x2f

    .line 47
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    if-nez p3, :cond_1

    const/16 p1, 0x53

    .line 32
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p3

    if-ne p1, p3, :cond_1

    .line 33
    invoke-static {p2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;->mCanChangeLedBehaviour:Z

    :cond_1
    return-void
.end method
