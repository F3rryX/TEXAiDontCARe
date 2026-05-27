package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.profile.internal.CareStructParser;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportParserVDefault extends CareStructParser<CrashReport> {
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public CrashReport parse(byte[] bArr) {
        CrashReportBuilder crashReportBuilder = new CrashReportBuilder();
        crashReportBuilder.setRawData(bArr).setVersion(Integer.valueOf(parseBlockVersion(bArr)));
        return crashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return -1;
        }
        return unsignedByte.shortValue();
    }
}
