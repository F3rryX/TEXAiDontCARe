package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GetEraseTripCrashStatusParser {

    public enum EraseTripCrashStatus {
        Unknown,
        NotActive,
        TripActive,
        CrashActive,
        Completed
    }

    private GetEraseTripCrashStatusParser() {
    }

    public static GetEraseTripCrashStatusResponse parse(Message message) {
        if (message.getStatus() != 0) {
            return new GetEraseTripCrashStatusResponse();
        }
        byte[] data = message.getData();
        GetEraseTripCrashStatusResponse getEraseTripCrashStatusResponse = new GetEraseTripCrashStatusResponse();
        if (data != null && data.length > 0) {
            int i = data[0] & 255;
            if (i == 0) {
                getEraseTripCrashStatusResponse.setStatus(EraseTripCrashStatus.NotActive);
            } else if (i == 1) {
                getEraseTripCrashStatusResponse.setStatus(EraseTripCrashStatus.TripActive);
            } else if (i == 2) {
                getEraseTripCrashStatusResponse.setStatus(EraseTripCrashStatus.CrashActive);
            } else if (i == 3) {
                getEraseTripCrashStatusResponse.setStatus(EraseTripCrashStatus.Completed);
            }
        }
        return getEraseTripCrashStatusResponse;
    }

    public static class GetEraseTripCrashStatusResponse {
        private EraseTripCrashStatus mStatus = EraseTripCrashStatus.Unknown;

        public EraseTripCrashStatus getStatus() {
            return this.mStatus;
        }

        GetEraseTripCrashStatusResponse setStatus(EraseTripCrashStatus eraseTripCrashStatus) {
            this.mStatus = eraseTripCrashStatus;
            return this;
        }
    }
}
