.class public Lcom/texa/carelib/care/attitude/internal/MockAttitude;
.super Lcom/texa/carelib/care/attitude/internal/AttitudeBase;
.source "MockAttitude.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MockAttitude"


# instance fields
.field private final TIME_TO_VALIDATE_DYNAMIC_ORIENTATION_MATRIX:I

.field private final TIME_TO_VALIDATE_STATIC_ORIENTATION_MATRIX:I

.field private mCalibrateOrientationMatrixThread:Ljava/lang/Thread;

.field private mInitCalibrationThread:Ljava/lang/Thread;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    const/16 p2, 0x2710

    .line 151
    iput p2, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TIME_TO_VALIDATE_STATIC_ORIENTATION_MATRIX:I

    const/16 p2, 0x3a98

    .line 152
    iput p2, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TIME_TO_VALIDATE_DYNAMIC_ORIENTATION_MATRIX:I

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method private isMatrixOrientationCalibrationInProgress()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mCalibrateOrientationMatrixThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public beginEstimation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->isMatrixOrientationCalibrationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/attitude/internal/MockAttitude$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/attitude/internal/MockAttitude;)V

    const-string v2, "Thread_beginOrientationProcedure"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mCalibrateOrientationMatrixThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 69
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mCalibrateOrientationMatrixThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Attitude estimation is already in progress."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public synthetic lambda$beginEstimation$0$com-texa-carelib-care-attitude-internal-MockAttitude()V
    .locals 3

    .line 43
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    const-wide/16 v0, 0x2710

    .line 46
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 50
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 51
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->PlaneInProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    const-wide/16 v0, 0x3a98

    .line 56
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :catch_1
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Complete:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    goto :goto_1

    .line 64
    :cond_0
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_Aborted:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onCommunicationStatusChanged$1$com-texa-carelib-care-attitude-internal-MockAttitude()V
    .locals 5

    const-wide/16 v0, 0x1f4

    .line 91
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 94
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const-string v1, " has been interrupted."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Init:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    const-wide/16 v3, 0x1388

    .line 102
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 106
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->EstimationError:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    .line 112
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loadAttitudeInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 5

    .line 83
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onCommunicationStatusChanged(%s)"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    sget-object v2, Lcom/texa/carelib/care/attitude/internal/MockAttitude$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mInitCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mInitCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mInitCalibrationThread:Ljava/lang/Thread;

    .line 130
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/texa/carelib/care/attitude/internal/MockAttitude$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/attitude/internal/MockAttitude$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/attitude/internal/MockAttitude;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ThreadCheckCalibrationStatus"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mInitCalibrationThread:Ljava/lang/Thread;

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 116
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/MockAttitude;->mInitCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    :goto_0
    invoke-super {p0, p1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method
