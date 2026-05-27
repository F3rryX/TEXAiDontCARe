package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
class TripBeginInfoParserV1 extends CareStructParser<TripBeginInfo> {
    static final int DATA_LENGTH = 20;
    static final int INDEX_AVG_VOLTAGE_ENGINE_OFF = 11;
    static final int INDEX_BLOCK_ID = 0;
    static final int INDEX_BLOCK_SIZE = 2;
    static final int INDEX_BLOCK_VERSION = 4;
    static final int INDEX_MIN_VOLTAGE_ENGINE_OFF = 12;
    static final int INDEX_ODOMETER = 7;
    static final int INDEX_RESERVED = 19;
    static final int INDEX_START_STOP_MODALITY = 13;
    static final int INDEX_START_TIME = 14;
    static final int INDEX_TIMEZONE = 18;
    static final int INDEX_TRIP_NUM = 5;

    TripBeginInfoParserV1() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripBeginInfo parse(byte[] bArr) {
        TripBeginInfoBuilder tripBeginInfoBuilder = new TripBeginInfoBuilder();
        tripBeginInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNumber(bArr)).setOdometer(parseOdometer(bArr)).setAverageVoltageEngineOff(parseAverageVoltageEngineOff(bArr)).setMinVoltageEngineOff(parseMinVoltageEngineOff(bArr)).setTimestamp(parseStartTime(bArr)).setTimeZoneOffset(parseTimeZoneOffset(bArr));
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
        if (getUnsignedChar(bArr, 5) == null) {
            return null;
        }
        return Long.valueOf(r3.intValue());
    }

    protected Float parseOdometer(byte[] bArr) {
        if (getUnsignedInt(bArr, 7) == null) {
            return null;
        }
        return Float.valueOf(r3.longValue());
    }

    protected Float parseAverageVoltageEngineOff(byte[] bArr) {
        if (bArr.length < 12) {
            return null;
        }
        float f = (bArr[11] & 255) / 10.0f;
        if (f == 0.0d) {
            return null;
        }
        return Float.valueOf(f);
    }

    protected Float parseMinVoltageEngineOff(byte[] bArr) {
        if (bArr.length < 13) {
            return null;
        }
        float f = (bArr[12] & 255) / 10.0f;
        if (f == 0.0d) {
            return null;
        }
        return Float.valueOf(f);
    }

    protected Date parseStartTime(byte[] bArr) {
        return getTimestamp(bArr, 14);
    }

    protected Integer parseTimeZoneOffset(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 18);
        if (unsignedByte == null) {
            return 0;
        }
        return Integer.valueOf(unsignedByte.shortValue() & 255);
    }
}
