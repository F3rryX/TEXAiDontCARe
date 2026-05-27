package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.care.attitude.AttitudeEstimationStatus;
import com.texa.carelib.care.attitude.RotationMatrixReport;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AttitudeBase extends ProfileSubModule implements Attitude {
    private AttitudeEstimationStatus mAttitudeEstimationStatus;
    private final FeatureVerifier mFeatureVerifier;
    private RotationMatrixReport mRotationMatrixReport;

    public AttitudeBase(FeatureVerifier featureVerifier) {
        this.mFeatureVerifier = featureVerifier;
        resetData(false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            resetData(false);
        }
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public RotationMatrixReport getRotationMatrixReport() {
        return this.mRotationMatrixReport;
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public boolean needsEstimation() {
        return AttitudeEstimationStatus.WaitingCalibrationCommand == this.mAttitudeEstimationStatus || AttitudeEstimationStatus.EstimationError == this.mAttitudeEstimationStatus || AttitudeEstimationStatus.Z_Aborted == this.mAttitudeEstimationStatus;
    }

    protected void resetData(boolean z) {
        if (z) {
            setRotationMatrixReport(null);
            setAttitudeEstimationStatus(AttitudeEstimationStatus.Undefined);
        } else {
            this.mAttitudeEstimationStatus = AttitudeEstimationStatus.Undefined;
            this.mRotationMatrixReport = null;
        }
    }

    public void setRotationMatrixReport(RotationMatrixReport rotationMatrixReport) {
        RotationMatrixReport rotationMatrixReport2 = this.mRotationMatrixReport;
        this.mRotationMatrixReport = rotationMatrixReport;
        firePropertyChange(new PropertyChangeEvent(this, Attitude.PROPERTY_ROTATION_MATRIX_REPORT, rotationMatrixReport2, rotationMatrixReport));
    }

    @Override // com.texa.carelib.care.attitude.Attitude
    public AttitudeEstimationStatus getAttitudeEstimationStatus() {
        return this.mAttitudeEstimationStatus;
    }

    public void setAttitudeEstimationStatus(AttitudeEstimationStatus attitudeEstimationStatus) {
        AttitudeEstimationStatus attitudeEstimationStatus2 = this.mAttitudeEstimationStatus;
        this.mAttitudeEstimationStatus = attitudeEstimationStatus;
        firePropertyChange(new PropertyChangeEvent(this, Attitude.PROPERTY_ATTITUDE_STATUS, attitudeEstimationStatus2, attitudeEstimationStatus));
        if (AttitudeEstimationStatus.Complete == this.mAttitudeEstimationStatus) {
            try {
                loadAttitudeInfo();
            } catch (CareLibException unused) {
            }
        }
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
