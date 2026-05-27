.class public abstract Lcom/texa/carelib/care/attitude/internal/AttitudeBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "AttitudeBase.java"

# interfaces
.implements Lcom/texa/carelib/care/attitude/Attitude;


# instance fields
.field private mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mRotationMatrixReport:Lcom/texa/carelib/care/attitude/RotationMatrixReport;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->resetData(Z)V

    return-void
.end method


# virtual methods
.method public getAttitudeEstimationStatus()Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    return-object v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getRotationMatrixReport()Lcom/texa/carelib/care/attitude/RotationMatrixReport;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mRotationMatrixReport:Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    return-object v0
.end method

.method public needsEstimation()Z
    .locals 2

    .line 39
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->WaitingCalibrationCommand:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->EstimationError:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_Aborted:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    iget-object v1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->resetData(Z)V

    :cond_0
    return-void
.end method

.method protected resetData(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->setRotationMatrixReport(Lcom/texa/carelib/care/attitude/RotationMatrixReport;)V

    .line 52
    sget-object p1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 56
    iput-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mRotationMatrixReport:Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    :goto_0
    return-void
.end method

.method public setAttitudeEstimationStatus(Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 83
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.attitude.Attitude#PROPERTY_ATTITUDE_STATUS"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 85
    sget-object p1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Complete:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mAttitudeEstimationStatus:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    if-ne p1, v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->loadAttitudeInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setRotationMatrixReport(Lcom/texa/carelib/care/attitude/RotationMatrixReport;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mRotationMatrixReport:Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    .line 67
    iput-object p1, p0, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->mRotationMatrixReport:Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    .line 68
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.attitude.Attitude#PROPERTY_ROTATION_MATRIX_REPORT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/attitude/internal/AttitudeBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
