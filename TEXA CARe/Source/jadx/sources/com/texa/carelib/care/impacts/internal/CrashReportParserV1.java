package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.CrashReportStatus;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportParserV1 extends CareStructParser<CrashReport> {
    private static final int ACCELERATION_COEFFICIENT = 732;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_DETECTED = 12;
    private static final int INDEX_DUMMY = 5;
    private static final int INDEX_INTENSITY = 14;
    private static final int INDEX_STATUS = 16;
    private static final int INDEX_TIMESTAMP = 8;
    private static final int INDEX_VERBOSE_REPORT_CONTENT = 24;
    private static final int INDEX_VERBOSE_REPORT_POINTER = 20;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public CrashReport parse(byte[] bArr) {
        CrashReportBuilder crashReportBuilder = new CrashReportBuilder();
        crashReportBuilder.setRawData(bArr).setVersion(Integer.valueOf(parseBlockVersion(bArr))).setCrashID(parseCrashID(bArr).longValue()).setTimestamp(parseTimestamp(bArr)).setCrashReportStatus(parseCrashReportStatus(bArr)).setIntensity(Long.valueOf(parseIntensity(bArr)));
        return crashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected long parseIntensity(byte[] bArr) {
        if (bArr.length < 16) {
            return 0L;
        }
        return (((long) (bArr[14] & 255)) + ((((long) bArr[15]) << 8) & 65280)) * 732;
    }

    protected CrashReportStatus parseCrashReportStatus(byte[] bArr) {
        if (bArr.length < 20) {
            return CrashReportStatus.Undefined;
        }
        long j = ((long) (bArr[16] & 255)) + 0 + ((((long) bArr[17]) << 8) & 65280) + ((((long) bArr[18]) << 16) & 16711680) + ((((long) bArr[19]) << 24) & (-16777216));
        if (1 == j) {
            return CrashReportStatus.Valid;
        }
        if (3 == j) {
            return CrashReportStatus.ValidSimulated;
        }
        if (4 == j) {
            return CrashReportStatus.NotValidatedOverThreshold;
        }
        return CrashReportStatus.NotSupported;
    }

    protected Date parseTimestamp(byte[] bArr) {
        if (bArr.length < 12) {
            return null;
        }
        long j = ((long) (bArr[8] & 255)) + 0 + ((((long) bArr[9]) << 8) & 65280) + ((((long) bArr[10]) << 16) & 16711680) + ((((long) bArr[11]) << 24) & (-16777216));
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j * 1000);
        if (calendar.get(1) < 2015) {
            return null;
        }
        return calendar.getTime();
    }

    protected Long parseCrashID(byte[] bArr) {
        if (bArr.length < 12) {
            return CrashReport.CRASH_ID_UNDEF;
        }
        return getUnsignedInt(bArr, 8);
    }
}
