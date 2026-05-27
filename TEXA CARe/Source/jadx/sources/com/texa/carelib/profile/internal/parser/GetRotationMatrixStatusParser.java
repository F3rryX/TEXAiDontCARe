package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.care.attitude.AttitudeEstimationStatus;
import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GetRotationMatrixStatusParser {
    private GetRotationMatrixStatusParser() {
    }

    public static AttitudeEstimationStatus parse(Message message) {
        AttitudeEstimationStatus attitudeEstimationStatus = AttitudeEstimationStatus.Undefined;
        if (message.getData() == null) {
            return attitudeEstimationStatus;
        }
        byte[] data = message.getData();
        if (data.length < 4) {
            return attitudeEstimationStatus;
        }
        switch ((int) (((long) ((int) (((long) ((int) (((long) ((int) (((long) 0) + (((long) data[0]) & 255)))) + ((((long) data[1]) << 8) & 65280)))) + ((((long) data[2]) << 16) & 16711680)))) + ((((long) data[3]) << 24) & (-16777216)))) {
            case 0:
                return AttitudeEstimationStatus.Init;
            case 1:
                return AttitudeEstimationStatus.WaitingCalibrationCommand;
            case 2:
                return AttitudeEstimationStatus.Z_InProgress;
            case 3:
                return AttitudeEstimationStatus.Z_InProgressWaitingSpeed;
            case 4:
                return AttitudeEstimationStatus.PlaneInProgress;
            case 5:
                return AttitudeEstimationStatus.Complete;
            case 6:
                return AttitudeEstimationStatus.EstimationError;
            case 7:
                return AttitudeEstimationStatus.Z_Aborted;
            default:
                return attitudeEstimationStatus;
        }
    }
}
