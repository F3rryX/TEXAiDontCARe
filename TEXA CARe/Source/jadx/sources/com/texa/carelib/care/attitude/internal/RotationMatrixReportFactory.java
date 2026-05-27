package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.RotationMatrixReport;
import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RotationMatrixReportFactory {
    private static final int HEADER_SIZE = 5;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final List<Integer> SUPPORTED_BLOCK_ID = Collections.singletonList(Integer.valueOf(CareStructID.ROTATION_MATRIX.getID()));
    public static final String TAG = "RotationMatrixReportFactory";

    public RotationMatrixReport create(byte[] bArr) {
        if (bArr.length < 5) {
            return null;
        }
        int blockID = getBlockID(bArr);
        int blockVersion = getBlockVersion(bArr);
        int blockSize = getBlockSize(bArr);
        String str = TAG;
        CareLog.d(str, "Block size: %d", Integer.valueOf(blockSize));
        CareLog.d(str, "Block version: %d", Integer.valueOf(blockVersion));
        if (!isRotationMatrixInfoBlock(blockID)) {
            throw new IllegalArgumentException(String.format("Invalid block ID: %04X", Integer.valueOf(blockID)));
        }
        return getParserByBlockVersion(blockVersion).parse(bArr);
    }

    protected CareStructParser<RotationMatrixReport> getParserByBlockVersion(int i) {
        return new RotationMatrixReportParserV1();
    }

    protected static int getBlockID(byte[] bArr) {
        if (bArr.length < 2) {
            return 0;
        }
        return (bArr[0] & 255) + 0 + ((bArr[1] << 8) & 65280);
    }

    protected int getBlockSize(byte[] bArr) {
        if (bArr.length < 4) {
            return 0;
        }
        return (bArr[2] & 255) + 0 + ((bArr[3] << 8) & 65280);
    }

    protected int getBlockVersion(byte[] bArr) {
        if (bArr.length < 5) {
            return 0;
        }
        return bArr[4] & 255;
    }

    protected boolean isRotationMatrixInfoBlock(int i) {
        return SUPPORTED_BLOCK_ID.contains(Integer.valueOf(i));
    }
}
