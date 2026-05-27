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
public class TripStatisticsInfoParserV3 extends CareStructParser<TripStatisticsInfo> {
    public static final int DATA_LENGTH = 404;
    private static final int INDEX_ACCELERATION_COUNTERS = 276;
    private static final int INDEX_ACCELERATION_THRESHOLD = 9;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_BRAKE_THRESHOLD = 11;
    private static final int INDEX_HARD_ACCELERATION_COUNT = 13;
    private static final int INDEX_HARD_BRAKE_COUNT = 15;
    private static final int INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD = 212;
    private static final int INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD = 148;
    private static final int INDEX_SPEED_COUNTERS = 20;
    private static final int INDEX_TEMPERATURE_THRESHOLD = 19;
    private static final int INDEX_TRIP_IDLE_TIME = 17;
    private static final int INDEX_TRIP_NUM = 5;
    private static final int INDEX_VOLTAGE_COUNTERS = 340;
    public static CountersDescriptionType AccelerationCountersInfo = new CountersDescriptionType(-10.0f, 10.0f, 0.625f);
    public static CountersDescriptionType SpeedCountersInfo = new CountersDescriptionType(-3.0f, 251.0f, 4.0f);
    public static CountersDescriptionType RPMOverTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static CountersDescriptionType RPMUnderTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static CountersDescriptionType VoltageCountersInfo = new CountersDescriptionType(8.0f, 16.0f, 0.25f);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripStatisticsInfo parse(byte[] bArr) {
        TripStatisticsInfoBuilder tripStatisticsInfoBuilder = new TripStatisticsInfoBuilder();
        tripStatisticsInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNum(bArr)).setHardAccelerationCount(parseHardAccelerationCount(bArr)).setHardBrakeCount(parseHardBrakeCount(bArr)).setTripIdleTime(parseTripIdleTime(bArr)).setSpeedCounters(parseSpeedCounters(SpeedCountersInfo, bArr)).setRPMUnderTempThresholdCounters(parseRPMUnderTempThresholdCounters(RPMUnderTempThresholdCountersInfo, bArr)).setRPMOverTempThresholdCounters(parseRPMOverTempThresholdCounters(RPMOverTempThresholdCountersInfo, bArr)).setAccelerationCounters(parseAccelerationCounters(AccelerationCountersInfo, bArr)).setVoltageCounters(parseVoltageCounters(VoltageCountersInfo, bArr)).setAccelerationCounters(parseAccelerationCounters(AccelerationCountersInfo, bArr)).setVoltageCounters(parseVoltageCounters(VoltageCountersInfo, bArr)).setSpeedCountersInfo(SpeedCountersInfo).setRPMUnderTempThresholdCountersInfo(RPMUnderTempThresholdCountersInfo).setRPMOverTempThresholdCountersInfo(RPMOverTempThresholdCountersInfo).setAccelerationCountersInfo(AccelerationCountersInfo).setVoltageCountersInfo(VoltageCountersInfo);
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
        return getUnsignedInt(bArr, 5);
    }

    protected Integer parseHardAccelerationCount(byte[] bArr) {
        if (bArr.length < 15) {
            return null;
        }
        return Integer.valueOf((bArr[13] & 255) + ((bArr[14] << 8) & 65280));
    }

    protected Integer parseHardBrakeCount(byte[] bArr) {
        if (bArr.length < 17) {
            return null;
        }
        return Integer.valueOf((bArr[15] & 255) + ((bArr[16] << 8) & 65280));
    }

    protected Integer parseTripIdleTime(byte[] bArr) {
        if (bArr.length < 19) {
            return null;
        }
        return Integer.valueOf((bArr[17] & 255) + 0 + ((bArr[18] << 8) & 65280));
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
        if (bArr.length < 148) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(64);
        for (int i = 0; i < 128; i += 2) {
            int i2 = i + 20;
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
            int i2 = i + 212;
            arrayList.add(new CounterInfo(getRPMOverTempThresholdCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseRPMUnderTempThresholdCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 212) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            int i2 = i + 148;
            arrayList.add(new CounterInfo(getRPMUnderTempThresholdCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseVoltageCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 404) {
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
