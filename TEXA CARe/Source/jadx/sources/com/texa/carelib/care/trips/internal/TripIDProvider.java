package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class TripIDProvider {
    public static final String TAG = "TripIDProvider";

    public static BigInteger getTripID(TripBeginInfo tripBeginInfo) {
        if (tripBeginInfo != null) {
            try {
                if (Utils.isNotEmpty(tripBeginInfo.getRawData())) {
                    int length = tripBeginInfo.getRawData().length;
                    byte[] bArr = new byte[length];
                    System.arraycopy(tripBeginInfo.getRawData(), 0, bArr, 0, length);
                    return getTripID(tripBeginInfo.getVersion(), bArr);
                }
            } catch (NoSuchAlgorithmException e) {
                CareLog.e(TAG, e, "Could not calculate trip unique ID", new Object[0]);
            }
        }
        return BigInteger.ZERO;
    }

    public static BigInteger getTripID(int i, byte[] bArr) throws NoSuchAlgorithmException {
        resetOdometer(i, bArr);
        if (i >= 5) {
            resetTimeStamp(bArr);
        }
        byte[] bArr2 = new byte[8];
        System.arraycopy(MessageDigest.getInstance("MD5").digest(bArr), 0, bArr2, 0, 8);
        Utils.reverse(bArr2);
        return new BigInteger(1, bArr2);
    }

    private static void resetOdometer(int i, byte[] bArr) {
        int i2;
        int iMin;
        if (i == 1) {
            i2 = 7;
            iMin = Math.min(bArr.length, 11);
        } else {
            i2 = 9;
            iMin = Math.min(bArr.length, 13);
        }
        while (i2 < iMin) {
            bArr[i2] = 0;
            i2++;
        }
    }

    private static void resetTimeStamp(byte[] bArr) {
        int iMin = Math.min(bArr.length, 20);
        for (int i = 16; i < iMin; i++) {
            bArr[i] = 0;
        }
    }
}
