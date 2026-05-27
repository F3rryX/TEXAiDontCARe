package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.AccelerationVector;
import com.texa.carelib.care.impacts.VerboseCrashReport;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class VerboseCrashReportParserV2 extends CareStructParser<VerboseCrashReport> {
    private static final int ACCELERATION_SPEED_VECTOR_SIZE = 8;
    private static final int INDEX_ACCELERATION_SPEED_VECTOR = 72;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_COEFFICIENT_U_G = 10;
    private static final int INDEX_COMPLETED = 7;
    private static final int INDEX_CRASH_INDEX = 44;
    private static final int INDEX_DUMMY = 19;
    private static final int INDEX_INCOMPLETE_VALIDATION = 5;
    private static final int INDEX_IS_THE_RIGHT_SAMPLE = 18;
    private static final int INDEX_LAST_INSERTION_INDEX = 40;
    private static final int INDEX_MATRIX_ORIENTATION = 54;
    private static final int INDEX_MIN_PERIOD_OF_CONTINUOUS_OVER_THRESHOLD = 32;
    private static final int INDEX_NUMBER_OF_SAMPLES = 14;
    private static final int INDEX_OFFSET_COMPONENTS = 48;
    private static final int INDEX_OVER_THRESHOLD_REGISTERED = 6;
    private static final int INDEX_PEAK_POSITION = 16;
    private static final int INDEX_SAMPLE_FREQUENCY = 12;
    private static final int INDEX_THRESHOLD = 8;
    private static final int INDEX_TIME_TO_STOP_MOVING_AFTER_THRESHOLD_HIT = 24;

    VerboseCrashReportParserV2() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public VerboseCrashReport parse(byte[] bArr) {
        int coefficientUg = parseCoefficientUg(bArr);
        int numberOfSamples = parseNumberOfSamples(bArr);
        int lastInsertionIndex = parseLastInsertionIndex(bArr);
        VerboseCrashReportBuilder verboseCrashReportBuilder = new VerboseCrashReportBuilder();
        verboseCrashReportBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setNumberOfSamples(numberOfSamples).setOffsetComponents(parseOffsetComponents(bArr, coefficientUg)).setAccelerationVectors(parseAccelerationVectors(bArr, numberOfSamples, lastInsertionIndex, coefficientUg)).setSpeedVectors(parseSpeedVector(bArr, numberOfSamples, lastInsertionIndex)).setSampleFrequency(Integer.valueOf(parseSampleFrequency(bArr)));
        return verboseCrashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected int parseNumberOfSamples(byte[] bArr) {
        Integer unsignedChar = getUnsignedChar(bArr, 14);
        if (unsignedChar == null) {
            return 0;
        }
        return unsignedChar.intValue();
    }

    protected int parseSampleFrequency(byte[] bArr) {
        Integer unsignedChar = getUnsignedChar(bArr, 12);
        if (unsignedChar == null) {
            return 0;
        }
        return unsignedChar.intValue();
    }

    protected int parseCoefficientUg(byte[] bArr) {
        Integer unsignedChar = getUnsignedChar(bArr, 10);
        if (unsignedChar == null) {
            return 1;
        }
        return unsignedChar.intValue();
    }

    protected List<Integer> parseSpeedVector(byte[] bArr, int i, int i2) {
        if (bArr.length < (i * 8) + 72) {
            return Collections.emptyList();
        }
        if (i2 < 0 || i2 > bArr.length) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = ((((i2 + 1) + i3) % i) * 8) + 72;
            arrayList.add(Integer.valueOf(bArr[i4 + 6] + ((bArr[i4 + 7] << 8) & 65280)));
        }
        return arrayList;
    }

    protected List<AccelerationVector> parseAccelerationVectors(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = bArr;
        if (bArr2.length < (i * 8) + 72) {
            return Collections.emptyList();
        }
        if (i2 < 0 || i2 > bArr2.length) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < i) {
            int i5 = ((((i2 + 1) + i4) % i) * 8) + 72;
            arrayList.add(new AccelerationVector((short) (bArr2[i5] + ((bArr2[i5 + 1] << 8) & 65280)), (short) (bArr2[i5 + 2] + ((bArr2[i5 + 3] << 8) & 65280)), (short) (bArr2[i5 + 4] + ((bArr2[i5 + 5] << 8) & 65280)), i3));
            i4++;
            bArr2 = bArr;
        }
        return arrayList;
    }

    protected int parseLastInsertionIndex(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 40);
        if (unsignedByte == null) {
            return -1;
        }
        return unsignedByte.shortValue();
    }

    protected AccelerationVector parseOffsetComponents(byte[] bArr, int i) {
        if (bArr.length < 54) {
            return null;
        }
        return new AccelerationVector((short) (bArr[48] + ((bArr[49] << 8) & 65280)), (short) (bArr[50] + ((bArr[51] << 8) & 65280)), (short) (bArr[52] + ((bArr[53] << 8) & 65280)), i);
    }
}
