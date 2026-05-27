package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.CrashReportStatus;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportParserV2 extends CareStructParser<CrashReport> {
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_CLIENT_DEVICE_CONNECTED = 7;
    private static final int INDEX_DETECTED = 12;
    private static final int INDEX_INTENSITY = 14;
    private static final int INDEX_RESERVED = 20;
    private static final int INDEX_STATUS = 16;
    private static final int INDEX_TIMESTAMP = 8;
    private static final int INDEX_TRIP_NUM = 5;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public CrashReport parse(byte[] bArr) {
        CrashReportBuilder crashReportBuilder = new CrashReportBuilder();
        crashReportBuilder.setRawData(bArr).setVersion(Integer.valueOf(parseBlockVersion(bArr))).setCrashID(parseCrashID(bArr)).setTimestamp(parseTimestamp(bArr)).setCrashReportStatus(parseCrashReportStatus(bArr)).setIsClientDeviceConnected(parseIsClientDeviceConnected(bArr)).setTripNumber(parseTripNumber(bArr));
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
        if (getUnsignedChar(bArr, 5) == null) {
            return null;
        }
        return Long.valueOf(r3.intValue());
    }

    protected Boolean parseIsClientDeviceConnected(byte[] bArr) {
        if (bArr.length < 8) {
            return null;
        }
        return Boolean.valueOf(1 == bArr[7]);
    }

    protected long parseCrashID(byte[] bArr) {
        Long unsignedInt = getUnsignedInt(bArr, 8);
        if (unsignedInt == null) {
            return CrashReport.CRASH_ID_UNDEF.longValue();
        }
        return unsignedInt.longValue();
    }

    protected Date parseTimestamp(byte[] bArr) {
        return getTimestamp(bArr, 8);
    }

    protected CrashReportStatus parseCrashReportStatus(byte[] bArr) {
        Long unsignedInt = getUnsignedInt(bArr, 16);
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
