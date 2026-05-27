package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.BatteryVoltageHistogram;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryVoltageHistogramFactory {
    public static final int BLOCK_ID_LOW_POWER_RECENT_HISTOGRAM = 59908;
    public static final int BLOCK_ID_LOW_POWER_TOTAL_HISTOGRAM = 59909;
    public static final int BLOCK_ID_OPERATING_RECENT_HISTOGRAM = 59910;
    private static final int HEADER_SIZE = 5;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    public static final String TAG = "BatteryVoltageHistogramFactory";

    public BatteryVoltageHistogram create(byte[] bArr) {
        int blockID = getBlockID(bArr);
        int blockVersion = getBlockVersion(bArr);
        int iIntValue = getBlockSize(bArr).intValue();
        String str = TAG;
        CareLog.d(str, "Block version: %d", Integer.valueOf(blockVersion));
        CareLog.d(str, "Block size: %d", Integer.valueOf(iIntValue));
        if (!isValidBlockType(blockID)) {
            throw new IllegalArgumentException("The specified data is not a battery voltage histogram!");
        }
        return getParserByBlockVersion(blockVersion).parse(bArr);
    }

    protected int getBlockID(byte[] bArr) {
        if (bArr.length < 2) {
            return 0;
        }
        return (bArr[0] & 255) + 0 + ((bArr[1] << 8) & 65280);
    }

    protected Integer getBlockSize(byte[] bArr) {
        if (bArr.length < 4) {
            return 0;
        }
        return Integer.valueOf((bArr[2] & 255) + 0 + ((bArr[3] << 8) & 65280));
    }

    protected int getBlockVersion(byte[] bArr) {
        if (bArr.length < 5) {
            return 0;
        }
        return bArr[4];
    }

    protected CareStructParser<BatteryVoltageHistogram> getParserByBlockVersion(int i) {
        return new BatteryVoltageHistogramParserV1();
    }

    protected boolean isValidBlockType(int i) {
        return Arrays.asList(Integer.valueOf(BLOCK_ID_LOW_POWER_RECENT_HISTOGRAM), Integer.valueOf(BLOCK_ID_LOW_POWER_TOTAL_HISTOGRAM), Integer.valueOf(BLOCK_ID_OPERATING_RECENT_HISTOGRAM)).contains(Integer.valueOf(i));
    }
}
