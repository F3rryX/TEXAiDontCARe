package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CrankReportFactory {
    private static final int HEADER_SIZE = 5;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final List<Integer> SUPPORTED_BLOCK_ID = Arrays.asList(Integer.valueOf(CareStructID.CRANK_REPORT_OPERATING.getID()), Integer.valueOf(CareStructID.CRANK_REPORT_STANDBY.getID()));
    private static final String TAG = "CrankReportFactory";

    public CrankReport create(byte[] bArr) {
        int blockID = getBlockID(bArr);
        int blockVersion = getBlockVersion(bArr);
        int iIntValue = getBlockSize(bArr).intValue();
        String str = TAG;
        CareLog.d(str, "Block ID: %d", Integer.valueOf(blockID));
        CareLog.d(str, "Block size: %d", Integer.valueOf(iIntValue));
        CareLog.d(str, "Block version: %d", Integer.valueOf(blockVersion));
        if (!isValidBlockType(blockID)) {
            throw new IllegalArgumentException("The specified data is not a crank report!");
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

    protected CareStructParser<CrankReport> getParserByBlockVersion(int i) {
        return new CrankReportParserV1();
    }

    protected boolean isValidBlockType(int i) {
        return SUPPORTED_BLOCK_ID.contains(Integer.valueOf(i));
    }
}
