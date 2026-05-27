package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.attitude.RotationMatrix;
import com.texa.carelib.care.trips.CountersDescriptionType;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.VehicleAccelerationCounter;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.core.Range;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripStatisticsInfoParserV10 extends CareStructParser<TripStatisticsInfo> {
    public static final int DATA_LENGTH = 1604;
    private static final int INDEX_ACCELERATION_COUNTERS = 1476;
    private static final int INDEX_ACCELERATION_THRESHOLD = 9;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_BRAKE_THRESHOLD = 11;
    private static final int INDEX_FINAL_ROTATION_MATRIX = 20;
    private static final int INDEX_HARD_ACCELERATION_COUNT = 13;
    private static final int INDEX_HARD_BRAKE_COUNT = 15;
    private static final int INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD = 260;
    private static final int INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD = 196;
    private static final int INDEX_SPEED_COUNTERS = 68;
    private static final int INDEX_TEMPERATURE_THRESHOLD = 19;
    private static final int INDEX_TRIP_IDLE_TIME = 17;
    private static final int INDEX_TRIP_NUM = 5;
    private static final int INDEX_VEHICLE_ACCELERATION_COUNTERS = 324;
    private static final int INDEX_VOLTAGE_COUNTERS = 1540;
    public static CountersDescriptionType AccelerationCountersInfo = new CountersDescriptionType(-10.0f, 10.0f, 0.625f);
    public static CountersDescriptionType SpeedCountersInfo = new CountersDescriptionType(-3.0f, 251.0f, 4.0f);
    public static CountersDescriptionType RPMOverTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static CountersDescriptionType RPMUnderTempThresholdCountersInfo = new CountersDescriptionType(0.0f, 7936.0f, 256.0f);
    public static CountersDescriptionType VoltageCountersInfo = new CountersDescriptionType(8.0f, 16.0f, 0.25f);
    public static CountersDescriptionType VehicleAccelerationAngleCountersInfo = new CountersDescriptionType(-180.0f, 180.0f, 20.0f);
    public static CountersDescriptionType VehicleAccelerationIntensityCountersInfo = new CountersDescriptionType(0.0f, 20.8f, 0.65f);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public TripStatisticsInfo parse(byte[] bArr) {
        TripStatisticsInfoBuilder tripStatisticsInfoBuilder = new TripStatisticsInfoBuilder();
        tripStatisticsInfoBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTripNumber(parseTripNum(bArr)).setHardAccelerationCount(parseHardAccelerationCount(bArr)).setHardBrakeCount(parseHardBrakeCount(bArr)).setTripIdleTime(parseTripIdleTime(bArr)).setRotationMatrixFinal(parseRotationMatrixFinal(bArr)).setSpeedCounters(parseSpeedCounters(SpeedCountersInfo, bArr)).setSpeedCountersInfo(SpeedCountersInfo).setRPMUnderTempThresholdCounters(parseRPMUnderTempThresholdCounters(RPMUnderTempThresholdCountersInfo, bArr)).setRPMUnderTempThresholdCountersInfo(RPMUnderTempThresholdCountersInfo).setRPMOverTempThresholdCounters(parseRPMOverTempThresholdCounters(RPMOverTempThresholdCountersInfo, bArr)).setRPMOverTempThresholdCountersInfo(RPMOverTempThresholdCountersInfo).setVehicleAccelerationCounters(parseVehicleAccelerationCounters(VehicleAccelerationAngleCountersInfo, VehicleAccelerationIntensityCountersInfo, bArr)).setVehicleAccelerationAngleCountersInfo(VehicleAccelerationAngleCountersInfo).setVehicleAccelerationIntensityCountersInfo(VehicleAccelerationIntensityCountersInfo).setAccelerationCounters(parseAccelerationCounters(AccelerationCountersInfo, bArr)).setAccelerationCountersInfo(AccelerationCountersInfo).setVoltageCounters(parseVoltageCounters(VoltageCountersInfo, bArr)).setVoltageCountersInfo(VoltageCountersInfo);
        return tripStatisticsInfoBuilder.build();
    }

    private static boolean isAllEqualTo(byte... bArr) {
        byte[] bArr2 = new byte[bArr.length];
        Arrays.fill(bArr2, bArr[0]);
        return Arrays.equals(bArr, bArr2);
    }

    protected RotationMatrix parseRotationMatrixFinal(byte[] bArr) {
        return parseRotationMatrix(bArr, 20);
    }

    protected RotationMatrix parseRotationMatrix(byte[] bArr, int i) {
        if (bArr.length < i + 4 + 36 + 4 + 4) {
            return null;
        }
        float[] fArr = new float[9];
        for (int i2 = 0; i2 < 9; i2++) {
            Float f = getFloat(bArr, (i2 * 4) + i);
            if (f != null) {
                fArr[i2] = f.floatValue();
            }
        }
        int i3 = i + 36;
        Integer signedInt = getSignedInt(bArr, i3);
        if (signedInt == null) {
            throw new IllegalStateException("Parse error");
        }
        return new RotationMatrix(fArr, getTimestamp(bArr, i3 + 4 + 4), signedInt.intValue());
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

    List<VehicleAccelerationCounter> parseVehicleAccelerationCounters(CountersDescriptionType countersDescriptionType, CountersDescriptionType countersDescriptionType2, byte[] bArr) {
        if (bArr.length < INDEX_ACCELERATION_COUNTERS) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(576);
        for (int i = 0; i < 1152; i += 2) {
            Range<Float> accelerationAngleCountersRange = getAccelerationAngleCountersRange(countersDescriptionType, arrayList.size() % 18);
            Range<Float> accelerationIntensityCountersRange = getAccelerationIntensityCountersRange(countersDescriptionType2, arrayList.size() / 18);
            int i2 = i + INDEX_VEHICLE_ACCELERATION_COUNTERS;
            arrayList.add(new VehicleAccelerationCounter(accelerationAngleCountersRange, accelerationIntensityCountersRange, (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseSpeedCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 196) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(64);
        for (int i = 0; i < 128; i += 2) {
            int i2 = i + 68;
            arrayList.add(new CounterInfo(getSpeedCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseRPMOverTempThresholdCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < INDEX_VEHICLE_ACCELERATION_COUNTERS) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            Range<Float> rPMOverTempThresholdCountersRange = getRPMOverTempThresholdCountersRange(countersDescriptionType, arrayList.size());
            int i2 = i + INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD;
            arrayList.add(new CounterInfo(rPMOverTempThresholdCountersRange, (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseRPMUnderTempThresholdCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(32);
        for (int i = 0; i < 64; i += 2) {
            int i2 = i + 196;
            arrayList.add(new CounterInfo(getRPMUnderTempThresholdCountersRange(countersDescriptionType, arrayList.size()), (bArr[i2] & 255) + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    List<CounterInfo> parseVoltageCounters(CountersDescriptionType countersDescriptionType, byte[] bArr) {
        if (bArr.length < 1604) {
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

    Range<Float> getAccelerationAngleCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + ((i % Math.round((countersDescriptionType.getMaxValueX() - countersDescriptionType.getMinValueX()) / countersDescriptionType.getBinSize())) * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((r6 + 1) * countersDescriptionType.getBinSize())));
    }

    Range<Float> getAccelerationIntensityCountersRange(CountersDescriptionType countersDescriptionType, int i) {
        return new Range<>(Float.valueOf(countersDescriptionType.getMinValueX() + ((i % Math.round((countersDescriptionType.getMaxValueX() - countersDescriptionType.getMinValueX()) / countersDescriptionType.getBinSize())) * countersDescriptionType.getBinSize())), Float.valueOf(countersDescriptionType.getMinValueX() + ((r6 + 1) * countersDescriptionType.getBinSize())));
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
