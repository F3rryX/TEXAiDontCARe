package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.CrashReportStatus;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportParserV3 extends CareStructParser<CrashReport> {
    public static final int DATA_LENGTH = 28;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_CLIENT_DEVICE_CONNECTED = 13;
    private static final int INDEX_COEFFICIENT_U_G = 18;
    private static final int INDEX_DETECTED = 14;
    private static final int INDEX_INTENSITY = 16;
    private static final int INDEX_STATUS = 20;
    private static final int INDEX_TIMESTAMP = 9;
    private static final int INDEX_TRIP_NUM = 5;
    private static final int INDEX_VERBOSE_REPORT_POINTER = 24;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public CrashReport parse(byte[] bArr) {
        CrashReportBuilder crashReportBuilder = new CrashReportBuilder();
        crashReportBuilder.setRawData(bArr).setVersion(Integer.valueOf(parseBlockVersion(bArr))).setCrashID(parseCrashID(bArr)).setTimestamp(parseTimestamp(bArr)).setCrashReportStatus(parseCrashReportStatus(bArr)).setIsClientDeviceConnected(parseIsClientDeviceConnected(bArr)).setTripNumber(parseTripNumber(bArr)).setIntensity(parseIntensity(bArr, parseCoefficientUg(bArr)));
        return crashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected Long parseTripNumber(byte[] bArr) {
        return getUnsignedInt(bArr, 5);
    }

    protected Boolean parseIsClientDeviceConnected(byte[] bArr) {
        if (bArr.length < 14) {
            return null;
        }
        return Boolean.valueOf(1 == bArr[13]);
    }

    protected Date parseTimestamp(byte[] bArr) {
        return getTimestamp(bArr, 9);
    }

    protected long parseCrashID(byte[] bArr) {
        Long unsignedInt = getUnsignedInt(bArr, 9);
        if (unsignedInt == null) {
            return CrashReport.CRASH_ID_UNDEF.longValue();
        }
        return unsignedInt.longValue();
    }

    protected Integer parseCoefficientUg(byte[] bArr) {
        return getUnsignedChar(bArr, 18);
    }

    protected Long parseIntensity(byte[] bArr, Integer num) {
        if (getUnsignedChar(bArr, 16) == null) {
            return null;
        }
        Long lValueOf = Long.valueOf(r3.intValue());
        return num != null ? Long.valueOf(lValueOf.longValue() * ((long) num.intValue())) : lValueOf;
    }

    protected CrashReportStatus parseCrashReportStatus(byte[] bArr) {
        Long unsignedInt = getUnsignedInt(bArr, 20);
        if (unsignedInt != null) {
            if (1 == unsignedInt.longValue()) {
                return CrashReportStatus.Valid;
            }
            if (3 == unsignedInt.longValue()) {
                return CrashReportStatus.ValidSimulated;
            }
            if (4 == unsignedInt.longValue()) {
                return CrashReportStatus.NotValidatedOverThreshold;
            }
        }
        return CrashReportStatus.NotSupported;
    }
}
