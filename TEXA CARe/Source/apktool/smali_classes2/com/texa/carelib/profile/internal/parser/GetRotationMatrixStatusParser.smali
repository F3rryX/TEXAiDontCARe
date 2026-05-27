.class public Lcom/texa/carelib/profile/internal/parser/GetRotationMatrixStatusParser;
.super Ljava/lang/Object;
.source "GetRotationMatrixStatusParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
    .locals 8

    .line 17
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 19
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    .line 23
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    int-to-long v2, v1

    .line 26
    aget-byte v1, p0, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v1, v1

    const/4 v3, 0x1

    .line 27
    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v2, v1

    int-to-long v1, v2

    const/4 v3, 0x2

    .line 28
    aget-byte v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v2, v1

    int-to-long v1, v2

    const/4 v3, 0x3

    .line 29
    aget-byte p0, p0, v3

    int-to-long v3, p0

    const/16 p0, 0x18

    shl-long/2addr v3, p0

    const-wide/32 v5, -0x1000000

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int p0, v1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_Aborted:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->EstimationError:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Complete:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->PlaneInProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgressWaitingSpeed:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 34
    :pswitch_5
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 33
    :pswitch_6
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->WaitingCalibrationCommand:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    goto :goto_0

    .line 32
    :pswitch_7
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Init:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
