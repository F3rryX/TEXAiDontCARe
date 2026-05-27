package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.VerboseCrashReport;
import com.texa.carelib.profile.internal.CareStructParser;

/* JADX INFO: loaded from: classes2.dex */
class VerboseCrashReportParserVDefault extends CareStructParser<VerboseCrashReport> {
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;

    VerboseCrashReportParserVDefault() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public VerboseCrashReport parse(byte[] bArr) {
        VerboseCrashReportBuilder verboseCrashReportBuilder = new VerboseCrashReportBuilder();
        verboseCrashReportBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr));
        return verboseCrashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }
}
