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
public class TripStatisticsInfoParserV2 extends CareStructParser<TripStatisticsInfo> {
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
    private static final int INDEX_VOLTAGE_COUNTERS = 338;
    public static final CountersDescriptionType AccelerationCountersInfo = new CountersDescriptionType(-10.0f, 10.0f, 0.625f);
    public static final CountersDescriptionType SpeedCountersInfo = new CountersDescriptionType(-3.0f, 251.0f, 4.0f);
    public static final CountersDescriptionType RPMOverTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static final CountersDescriptionType RPMUnderTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static final CountersDescriptionType VoltageCountersInfo = new CountersDescriptionType(8.0f, 16.0f, 0.25f);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripStatisticsInfo parse(byte[] bArr) {
        TripStatisticsInfoBuilder tripStatisticsInfoBuilder = new TripStatisticsInfoBuilder();
        TripStatisticsInfoBuilder tripIdleTime = tripStatisticsInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNum(bArr)).setHardAccelerationCount(Integer.valueOf(parseHardAccelerationCount(bArr))).setHardBrakeCount(Integer.valueOf(parseHardBrakeCount(bArr))).setTripIdleTime(Integer.valueOf(parseTripIdleTime(bArr)));
        CountersDescriptionType countersDescriptionType = SpeedCountersInfo;
        TripStatisticsInfoBuilder speedCounters = tripIdleTime.setSpeedCounters(parseSpeedCounters(countersDescriptionType, bArr));
        CountersDescriptionType countersDescriptionType2 = RPMUnderTempThresholdCountersInfo;
        TripStatisticsInfoBuilder rPMUnderTempThresholdCounters = speedCounters.setRPMUnderTempThresholdCounters(parseRPMUnderTempThresholdCounters(countersDescriptionType2, bArr));
        CountersDescriptionType countersDescriptionType3 = RPMOverTempThresholdCountersInfo;
        TripStatisticsInfoBuilder rPMOverTempThresholdCounters = rPMUnderTempThresholdCounters.setRPMOverTempThresholdCounters(parseRPMOverTempThresholdCounters(countersDescriptionType3, bArr));
        CountersDescriptionType countersDescriptionType4 = VoltageCountersInfo;
        rPMOverTempThresholdCounters.setVoltageCounters(parseVoltageCounters(countersDescriptionType4, bArr)).setSpeedCountersInfo(countersDescriptionType).setRPMUnderTempThresholdCountersInfo(countersDescriptionType2).setRPMOverTempThresholdCountersInfo(countersDescriptionType3).setVoltageCountersInfo(countersDescriptionType4);
        return tripStatisticsInfoBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected Long parseTripNum(byte[] bArr) {
        if (bArr.length < 7) {
            return null;
        }
        return Long.valueOf(((long) (bArr[5] & 255)) + 0 + ((long) ((bArr[6] << 8) & 65280)));
    }

    int parseHardAccelerationCount(byte[] bArr) {
        if (bArr.length < 13) {
            return 0;
        }
        return (bArr[11] & 255) + ((bArr[12] << 8) & 65280);
    }

    int parseHardBrakeCount(byte[] bArr) {
        if (bArr.length < 15) {
            return 0;
        }
        return (bArr[13] & 255) + ((bArr[14] << 8) & 65280);
    }

    int parseTripIdleTime(byte[] bArr) {
        if (bArr.length < 17) {
            return 0;
        }
        return (bArr[15] & 255) + 0 + ((bArr[16] << 8) & 65280);
    }

    List<CounterInfo> parseAccelerationCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < INDEX_VOLTAGE_COUNTERS) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            Range<Float> accelerationCountersRange = getAccelerationCountersRange(countersDescriptionType, arrayList.size());
            int i2 = i + INDEX_ACCELERATION_COUNTERS;
            arrayList.add(new CounterInfo(accelerationCountersRange, (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
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

    List<CounterInfo> parseVoltageCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 402) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            Range<Float> voltageCountersRange = getVoltageCountersRange(countersDescriptionType, arrayList.size());
            int i2 = i + INDEX_VOLTAGE_COUNTERS;
            arrayList.add(new CounterInfo(voltageCountersRange, (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    Range<Float> getAccelerationCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + (i * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((i + 1) * countersDescriptionType.getBinSize())));
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

    Range<Float> getVoltageCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + (i * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((i + 1) * countersDescriptionType.getBinSize())));
    }
}
