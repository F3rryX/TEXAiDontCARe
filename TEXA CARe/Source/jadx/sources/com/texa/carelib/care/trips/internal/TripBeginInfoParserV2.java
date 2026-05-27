package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
class TripBeginInfoParserV2 extends CareStructParser<TripBeginInfo> {
    static final int DATA_LENGTH = 52;
    static final int INDEX_AVG_VOLTAGE_ENGINE_OFF = 13;
    static final int INDEX_BLOCK_ID = 0;
    static final int INDEX_BLOCK_SIZE = 2;
    static final int INDEX_BLOCK_VERSION = 4;
    static final int INDEX_CREATION_DATE = 48;
    static final int INDEX_FIRMWARE_VERSION = 24;
    static final int INDEX_MIN_VOLTAGE_ENGINE_OFF = 14;
    static final int INDEX_ODOMETER = 9;
    static final int INDEX_RELATIVE_TRIP_NUM = 22;
    static final int INDEX_RESERVED = 21;
    static final int INDEX_START_STOP_MODALITY = 15;
    static final int INDEX_START_TIME = 16;
    static final int INDEX_TIMEZONE = 20;
    static final int INDEX_TRIP_NUM = 5;
    static final int INDEX_VIN_CODE = 28;

    TripBeginInfoParserV2() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripBeginInfo parse(byte[] bArr) {
        TripBeginInfoBuilder tripBeginInfoBuilder = new TripBeginInfoBuilder();
        tripBeginInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNumber(bArr)).setOdometer(parseOdometer(bArr)).setAverageVoltageEngineOff(parseAverageVoltageEngineOff(bArr)).setMinVoltageEngineOff(parseMinVoltageEngineOff(bArr)).setTimestamp(parseStartTime(bArr)).setTimeZoneOffset(parseTimeZoneOffset(bArr)).setRelativeTripNumber(parseRelativeTripNumber(bArr));
        return tripBeginInfoBuilder.build();
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

    protected Long parseRelativeTripNumber(byte[] bArr) {
        if (getUnsignedChar(bArr, 22) == null) {
            return null;
        }
        return Long.valueOf(r3.intValue());
    }

    protected Float parseOdometer(byte[] bArr) {
        if (getUnsignedInt(bArr, 9) == null) {
            return null;
        }
        return Float.valueOf(r3.longValue());
    }

    protected Float parseAverageVoltageEngineOff(byte[] bArr) {
        if (bArr.length < 14) {
            return Float.valueOf(0.0f);
        }
        float f = (bArr[13] & 255) / 10.0f;
        if (f == 0.0d) {
            return null;
        }
        return Float.valueOf(f);
    }

    protected Float parseMinVoltageEngineOff(byte[] bArr) {
        if (bArr.length < 15) {
            return null;
        }
        float f = (bArr[14] & 255) / 10.0f;
        if (f == 0.0d) {
            return null;
        }
        return Float.valueOf(f);
    }

    protected Date parseStartTime(byte[] bArr) {
        return getTimestamp(bArr, 16);
    }

    protected Integer parseTimeZoneOffset(byte[] bArr) {
        Short unsignedByte;
        if (bArr.length < 21 || (unsignedByte = getUnsignedByte(bArr, 20)) == null) {
            return 0;
        }
        return Integer.valueOf(unsignedByte.shortValue() & 255);
    }
}
