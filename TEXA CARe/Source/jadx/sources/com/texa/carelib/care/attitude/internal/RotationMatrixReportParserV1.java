package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.RotationMatrix;
import com.texa.carelib.care.attitude.RotationMatrixReport;
import com.texa.carelib.profile.internal.CareStructParser;

/* JADX INFO: loaded from: classes2.dex */
class RotationMatrixReportParserV1 extends CareStructParser<RotationMatrixReport> {
    private static final int DATA_LENGTH = 150;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_RESERVED = 5;
    private static final int INDEX_ROTATION_MATRIX_FINAL = 102;
    private static final int INDEX_ROTATION_MATRIX_FINAL_STATUS = 138;
    private static final int INDEX_ROTATION_MATRIX_FINAL_TIME_STAMP = 146;
    private static final int INDEX_ROTATION_MATRIX_FINAL_TRIP_NUM = 142;
    private static final int INDEX_ROTATION_MATRIX_PLANE = 54;
    private static final int INDEX_ROTATION_MATRIX_PLANE_STATUS = 90;
    private static final int INDEX_ROTATION_MATRIX_PLANE_TIME_STAMP = 98;
    private static final int INDEX_ROTATION_MATRIX_PLANE_TRIP_NUM = 94;
    private static final int INDEX_ROTATION_MATRIX_Z = 6;
    private static final int INDEX_ROTATION_MATRIX_Z_STATUS = 42;
    private static final int INDEX_ROTATION_MATRIX_Z_TIME_STAMP = 50;
    private static final int INDEX_ROTATION_MATRIX_Z_TRIP_NUM = 46;

    RotationMatrixReportParserV1() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public RotationMatrixReport parse(byte[] bArr) {
        RotationMatrixReportBuilder rotationMatrixReportBuilder = new RotationMatrixReportBuilder();
        rotationMatrixReportBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setRotationMatrixFinal(parseRotationMatrixFinal(bArr));
        return rotationMatrixReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    private RotationMatrix parseRotationMatrixFinal(byte[] bArr) {
        return parseRotationMatrix(bArr, 102);
    }

    private RotationMatrix parseRotationMatrix(byte[] bArr, int i) {
        if (bArr.length < i + 4 + 36 + 4 + 4) {
            return null;
        }
        float[] fArr = new float[9];
        for (int i2 = 0; i2 < 9; i2++) {
            Float f = getFloat(bArr, (i2 * 4) + i);
            if (f != null) {
                fArr[i2] = f.floatValue();
            }
        }
        int i3 = i + 36;
        Integer signedInt = getSignedInt(bArr, i3);
        if (signedInt == null) {
            throw new IllegalStateException("Parse error");
        }
        return new RotationMatrix(fArr, getTimestamp(bArr, i3 + 4 + 4), signedInt.intValue());
    }
}
