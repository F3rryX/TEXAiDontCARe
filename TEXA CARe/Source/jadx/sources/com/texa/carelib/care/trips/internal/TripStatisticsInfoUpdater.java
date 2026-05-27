package com.texa.carelib.care.trips.internal;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class TripStatisticsInfoUpdater {
    private static final String TAG = "TripStatisticsInfoUpdater";

    TripStatisticsInfoUpdater() {
    }

    public synchronized byte[] update(byte[] bArr, byte[] bArr2) throws TripStatisticsInfoUpdaterException {
        int i = 0;
        int iIncrementOffset = 0;
        while (i < bArr2.length) {
            byte b = bArr2[i];
            if (b == 0) {
                i++;
                validateOffset(bArr2, i);
                iIncrementOffset = incrementOffset(iIncrementOffset, bArr2, i);
            } else {
                validateOffset(bArr, iIncrementOffset);
                updateValue(bArr, iIncrementOffset, b);
                iIncrementOffset++;
            }
            i++;
        }
        return bArr;
    }

    protected int incrementOffset(int i, byte[] bArr, int i2) {
        return i + (bArr[i2] & 255);
    }

    protected void updateValue(byte[] bArr, int i, byte b) {
        bArr[i] = (byte) (bArr[i] + (b & 255));
    }

    protected void validateOffset(byte[] bArr, int i) throws TripStatisticsInfoUpdaterException {
        if (i < 0 || i >= bArr.length) {
            throw new TripStatisticsInfoUpdaterException(String.format(Locale.US, "Offset out of bound exception[Data length: %d, offset=: %d]", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
    }

    public static class TripStatisticsInfoUpdaterException extends Exception {
        public TripStatisticsInfoUpdaterException(String str) {
            super(str);
        }
    }
}
