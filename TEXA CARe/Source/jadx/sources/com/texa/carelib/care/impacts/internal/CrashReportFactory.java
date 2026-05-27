package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportFactory {
    private static final int HEADER_SIZE = 5;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final List<Integer> SUPPORTED_BLOCK_ID = Arrays.asList(Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD.getID()), Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD_NOT_VALIDATED.getID()), Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD_LOW_POWER.getID()));
    public static final String TAG = "CrashReportFactory";

    public CrashReport create(byte[] bArr) {
        int blockID = getBlockID(bArr);
        int blockVersion = getBlockVersion(bArr);
        int iIntValue = getBlockSize(bArr).intValue();
        String str = TAG;
        CareLog.d(str, "Block ID: %d", Integer.valueOf(blockID));
        CareLog.d(str, "Block size: %d", Integer.valueOf(iIntValue));
        CareLog.d(str, "Block version: %d", Integer.valueOf(blockVersion));
        if (!isStandardCrashReportBlock(blockID)) {
            throw new IllegalArgumentException(String.format("Invalid block ID: %04X", Integer.valueOf(blockID)));
        }
        return getParserByBlockVersion(blockVersion).parse(bArr);
    }

    protected static int getBlockID(byte[] bArr) {
        if (bArr.length < 2) {
            return 0;
        }
        return (bArr[0] & 255) + 0 + ((bArr[1] << 8) & 65280);
    }

    protected static Integer getBlockSize(byte[] bArr) {
        if (bArr.length < 4) {
            return 0;
        }
        return Integer.valueOf((bArr[2] & 255) + 0 + ((bArr[3] << 8) & 65280));
    }

    protected static int getBlockVersion(byte[] bArr) {
        if (bArr.length < 5) {
            return 0;
        }
        return bArr[4];
    }

    public static boolean isStandardCrashReportBlock(int i) {
        return SUPPORTED_BLOCK_ID.contains(Integer.valueOf(i));
    }

    public static boolean isStandardCrashReportBlock(byte[] bArr) {
        return isStandardCrashReportBlock(getBlockID(bArr));
    }

    protected CareStructParser<CrashReport> getParserByBlockVersion(int i) {
        if (i >= 3) {
            return new CrashReportParserV3();
        }
        if (i >= 2) {
            return new CrashReportParserV2();
        }
        if (i >= 1) {
            return new CrashReportParserV1();
        }
        return new CrashReportParserVDefault();
    }
}
