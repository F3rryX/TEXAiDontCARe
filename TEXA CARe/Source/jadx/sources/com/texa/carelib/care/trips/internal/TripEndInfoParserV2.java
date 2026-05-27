package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.core.utils.UUIDHelper;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class TripEndInfoParserV2 extends CareStructParser<TripEndInfo> {
    public static final int DATA_LENGTH = 40;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_DRIVER_ID = 18;
    private static final int INDEX_END_TIME = 34;
    private static final int INDEX_IMPACT_COUNT = 17;
    private static final int INDEX_MAX_VOLTAGE_ENGINE_ON = 13;
    private static final int INDEX_MIL_STATUS = 15;
    private static final int INDEX_ODOMETER = 9;
    private static final int INDEX_ODOMETER_ESTIMATION_METHOD = 14;
    private static final int INDEX_RESERVED = 39;
    private static final int INDEX_TIMEZONE = 38;
    private static final int INDEX_TRIP_END_CAUSE = 16;
    private static final int INDEX_TRIP_NUM = 5;

    TripEndInfoParserV2() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripEndInfo parse(byte[] bArr) {
        TripEndInfoBuilder tripEndInfoBuilder = new TripEndInfoBuilder();
        tripEndInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNumber(bArr)).setOdometer(parseOdometer(bArr)).setMaxVoltageEngineOn(parseMaxVoltageEngineOn(bArr)).setOdometerEstimationMethod(parseOdometerEstimationMethod(bArr)).setIsMILLampDetected(parseMILStatus(bArr)).setTripEndCause(parseTripEndCause(bArr)).setNumOfImpactDetected(parseNumberOfImpactDetected(bArr)).setDriverID(parseDriverID(bArr)).setTimestamp(parseEndTime(bArr)).setTimeZoneOffset(parseTimeZoneOffset(bArr));
        return tripEndInfoBuilder.build();
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

    protected Float parseOdometer(byte[] bArr) {
        if (getUnsignedInt(bArr, 9) == null) {
            return null;
        }
        return Float.valueOf(r3.longValue());
    }

    protected Float parseMaxVoltageEngineOn(byte[] bArr) {
        if (bArr.length < 14) {
            return null;
        }
        Float fValueOf = Float.valueOf((bArr[13] & 255) / 10.0f);
        if (fValueOf.floatValue() == 0.0d) {
            return null;
        }
        return fValueOf;
    }

    protected Boolean parseMILStatus(byte[] bArr) {
        if (bArr.length >= 16) {
            return Boolean.valueOf(bArr[15] == 1);
        }
        return null;
    }

    protected TripEndInfo.OdometerEstimationMethod parseOdometerEstimationMethod(byte[] bArr) {
        if (bArr.length >= 15) {
            int i = bArr[14] & 255;
            if (i == 0) {
                return TripEndInfo.OdometerEstimationMethod.Estimated;
            }
            if (i == 1) {
                return TripEndInfo.OdometerEstimationMethod.Diagnostic;
            }
        }
        return TripEndInfo.OdometerEstimationMethod.Undef;
    }

    protected TripEndInfo.TripEndCause parseTripEndCause(byte[] bArr) {
        if (bArr.length >= 17) {
            int i = bArr[16] & 255;
            if (i == 0) {
                return TripEndInfo.TripEndCause.Undef;
            }
            if (i == 1) {
                return TripEndInfo.TripEndCause.ExternalCommand;
            }
            if (i == 2) {
                return TripEndInfo.TripEndCause.LowRPM;
            }
            if (i == 3) {
                return TripEndInfo.TripEndCause.CommunicationLost;
            }
            if (i == 4) {
                return TripEndInfo.TripEndCause.LowBatteryVoltage;
            }
        }
        return TripEndInfo.TripEndCause.Undef;
    }

    protected Integer parseNumberOfImpactDetected(byte[] bArr) {
        if (bArr.length < 18) {
            return null;
        }
        return Integer.valueOf(bArr[17] & 255);
    }

    protected UUID parseDriverID(byte[] bArr) {
        if (bArr.length < 34) {
            return null;
        }
        boolean z = false;
        for (int i = 18; i < 34 && !z; i++) {
            z = (bArr[i] & 255) != 255;
        }
        if (!z) {
            return null;
        }
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 18, bArr2, 0, 16);
        return UUIDHelper.fromByteArray(bArr2);
    }

    protected Date parseEndTime(byte[] bArr) {
        return getTimestamp(bArr, 34);
    }

    protected Integer parseTimeZoneOffset(byte[] bArr) {
        if (bArr.length < 39) {
            return null;
        }
        return Integer.valueOf(bArr[38] & 255);
    }
}
