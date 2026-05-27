package com.texa.carelib.profile.internal.filecarrier.internal;

import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;

/* JADX INFO: loaded from: classes2.dex */
public class SerialFileCarrierFactory {
    public static final String TAG = "SerialFileCarrierFactory";

    public FileCarrier create(SerialProfile serialProfile, int i) {
        CareLog.d(TAG, "Creating FileCarrier for file type: %d", Integer.valueOf(i));
        int transferBlockCount = getTransferBlockCount(serialProfile);
        if (20 == i) {
            return new SerialCrashInformationFileCarrier(serialProfile);
        }
        if (19 == i) {
            return new SerialTripLogBookFileCarrier(serialProfile);
        }
        return new SerialFileCarrier(serialProfile, transferBlockCount);
    }

    private int getTransferBlockCount(Profile profile) {
        int i = profile.getArguments().getInt(Profile.EXTRA_TRANSFER_BLOCK_COUNT, 3);
        if (i >= 1 && i <= 3) {
            return i;
        }
        CareLog.e(TAG, "Invalid argument: EXTRA_TRANSFER_BLOCK_COUNT. Default value will be used.", new Object[0]);
        return 3;
    }
}
