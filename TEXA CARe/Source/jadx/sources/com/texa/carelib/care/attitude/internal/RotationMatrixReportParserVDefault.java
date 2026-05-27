package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.RotationMatrixReport;
import com.texa.carelib.profile.internal.CareStructParser;

/* JADX INFO: loaded from: classes2.dex */
class RotationMatrixReportParserVDefault extends CareStructParser<RotationMatrixReport> {
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;

    RotationMatrixReportParserVDefault() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public RotationMatrixReport parse(byte[] bArr) {
        RotationMatrixReportBuilder rotationMatrixReportBuilder = new RotationMatrixReportBuilder();
        rotationMatrixReportBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr));
        return rotationMatrixReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }
}
