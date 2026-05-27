package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.CountersDescriptionType;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.core.Range;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripStatisticsInfoParserV1 extends CareStructParser<TripStatisticsInfo> {
    public static final int DATA_LENGTH = 402;
    private static final int INDEX_ACCELERATION_COUNTERS = 274;
    private static final int INDEX_ACCELERATION_THRESHOLD = 7;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_BRAKE_THRESHOLD = 9;
    private static final int INDEX_HARD_ACCELERATION_COUNT = 11;
    private static final int INDEX_HARD_BRAKE_COUNT = 13;
    private static final int INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD = 210;
    private static final int INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD = 146;
    private static final int INDEX_SPEED_COUNTERS = 18;
    private static final int INDEX_TEMPERATURE_THRESHOLD = 17;
    private static final int INDEX_TRIP_IDLE_TIME = 15;
    private static final int INDEX_TRIP_NUM = 5;
    public static final CountersDescriptionType AccelerationCountersInfo = new CountersDescriptionType(0.0f, 16.0f, 0.625f);
    public static final CountersDescriptionType SpeedCountersInfo = new CountersDescriptionType(-3.0f, 251.0f, 4.0f);
    public static final CountersDescriptionType RPMOverTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static final CountersDescriptionType RPMUnderTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripStatisticsInfo parse(byte[] bArr) {
        TripStatisticsInfoBuilder tripStatisticsInfoBuilder = new TripStatisticsInfoBuilder();
        TripStatisticsInfoBuilder tripIdleTime = tripStatisticsInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNumber(bArr)).setHardAccelerationCount(parseHardAccelerationCount(bArr)).setHardBrakeCount(parseHardBrakeCount(bArr)).setTripIdleTime(parseTripIdleTime(bArr));
        CountersDescriptionType countersDescriptionType = SpeedCountersInfo;
        TripStatisticsInfoBuilder speedCounters = tripIdleTime.setSpeedCounters(parseSpeedCounters(countersDescriptionType, bArr));
        CountersDescriptionType countersDescriptionType2 = RPMUnderTempThresholdCountersInfo;
        TripStatisticsInfoBuilder rPMUnderTempThresholdCounters = speedCounters.setRPMUnderTempThresholdCounters(parseRPMUnderTempThresholdCounters(countersDescriptionType2, bArr));
        CountersDescriptionType countersDescriptionType3 = RPMOverTempThresholdCountersInfo;
        rPMUnderTempThresholdCounters.setRPMOverTempThresholdCounters(parseRPMOverTempThresholdCounters(countersDescriptionType3, bArr)).setSpeedCountersInfo(countersDescriptionType).setRPMUnderTempThresholdCountersInfo(countersDescriptionType2).setRPMOverTempThresholdCountersInfo(countersDescriptionType3);
        return tripStatisticsInfoBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected Long parseTripNumber(byte[] bArr) {
        if (bArr.length < 7) {
            return null;
        }
        return Long.valueOf(((long) (bArr[5] & 255)) + 0 + ((long) ((bArr[6] << 8) & 65280)));
    }

    protected Integer parseHardAccelerationCount(byte[] bArr) {
        if (bArr.length < 13) {
            return null;
        }
        return Integer.valueOf((bArr[11] & 255) + ((bArr[12] << 8) & 65280));
    }

    protected Integer parseHardBrakeCount(byte[] bArr) {
        if (bArr.length < 15) {
            return null;
        }
        return Integer.valueOf((bArr[13] & 255) + ((bArr[14] << 8) & 65280));
    }

    protected Integer parseTripIdleTime(byte[] bArr) {
        if (bArr.length < 17) {
            return null;
        }
        return Integer.valueOf((bArr[15] & 255) + 0 + ((bArr[16] << 8) & 65280));
    }

    List<CounterInfo> parseRPMOverTempThresholdCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < INDEX_ACCELERATION_COUNTERS) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            int i2 = i + 210;
            arrayList.add(new CounterInfo(getRPMOverTempThresholdCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseRPMUnderTempThresholdCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 210) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            int i2 = i + 146;
            arrayList.add(new CounterInfo(getRPMUnderTempThresholdCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseSpeedCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 146) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(64);
        for (int i = 0; i < 128; i += 2) {
            int i2 = i + 18;
            arrayList.add(new CounterInfo(getSpeedCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    Range<Float> getSpeedCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + (i * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((i + 1) * countersDescriptionType.getBinSize())));
    }

    Range<Float> getRPMOverTempThresholdCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + (i * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((i + 1) * countersDescriptionType.getBinSize())));
    }

    Range<Float> getRPMUnderTempThresholdCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + (i * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((i + 1) * countersDescriptionType.getBinSize())));
    }
}
