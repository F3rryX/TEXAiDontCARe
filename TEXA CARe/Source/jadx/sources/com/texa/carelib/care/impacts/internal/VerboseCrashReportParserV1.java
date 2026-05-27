package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.AccelerationVector;
import com.texa.carelib.care.impacts.VerboseCrashReport;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class VerboseCrashReportParserV1 extends CareStructParser<VerboseCrashReport> {
    private static final int ACCELERATION_COEFFICIENT = 732;
    private static final int ACCELERATION_VECTOR_SIZE = 6;
    private static final int INDEX_BLOCK_ACCELERATION_VECTOR = 46;
    private static final int INDEX_BLOCK_CONFIGURATION_PARAMETERS = 8;
    private static final int INDEX_BLOCK_CRASH_INDEX = 36;
    private static final int INDEX_BLOCK_DUMMY = 6;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_INCOMPLETE_VALIDATION = 5;
    private static final int INDEX_BLOCK_LAST_INSERTION_INDEX = 32;
    private static final int INDEX_BLOCK_OFFSET_COMPONENTS = 40;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_SPEED_VECTOR = 2446;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int NUMBER_OF_SAMPLES = 400;
    private static final int SPEED_VECTOR_SIZE = 2;

    VerboseCrashReportParserV1() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public VerboseCrashReport parse(byte[] bArr) {
        VerboseCrashReportBuilder verboseCrashReportBuilder = new VerboseCrashReportBuilder();
        verboseCrashReportBuilder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setNumberOfSamples(400).setSpeedVectors(parseSpeedVector(bArr)).setAccelerationVectors(parseAccelerationVectors(bArr)).setOffsetComponents(parseOffsetComponents(bArr));
        return verboseCrashReportBuilder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected List<Integer> parseSpeedVector(byte[] bArr) {
        if (bArr.length < 3246) {
            return Collections.emptyList();
        }
        int lastInsertionIndex = parseLastInsertionIndex(bArr);
        if (lastInsertionIndex < 0 || lastInsertionIndex > bArr.length) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 400; i++) {
            int i2 = ((((lastInsertionIndex + 1) + i) % 400) * 2) + INDEX_BLOCK_SPEED_VECTOR;
            arrayList.add(Integer.valueOf(bArr[i2] + ((bArr[i2 + 1] << 8) & 65280)));
        }
        return arrayList;
    }

    protected int parseLastInsertionIndex(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 32);
        if (unsignedByte == null) {
            return -1;
        }
        return unsignedByte.shortValue();
    }

    private List<AccelerationVector> parseAccelerationVectors(byte[] bArr) {
        if (bArr.length < INDEX_BLOCK_SPEED_VECTOR) {
            return Collections.emptyList();
        }
        int lastInsertionIndex = parseLastInsertionIndex(bArr);
        if (lastInsertionIndex < 0 || lastInsertionIndex > bArr.length) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 400; i++) {
            int i2 = ((((lastInsertionIndex + 1) + i) % 400) * 6) + 46;
            arrayList.add(new AccelerationVector((short) (bArr[i2] + ((bArr[i2 + 1] << 8) & 65280)), (short) (bArr[i2 + 2] + ((bArr[i2 + 3] << 8) & 65280)), (short) (bArr[i2 + 4] + ((bArr[i2 + 5] << 8) & 65280)), 732L));
        }
        return arrayList;
    }

    protected AccelerationVector parseOffsetComponents(byte[] bArr) {
        if (bArr.length < 46) {
            return null;
        }
        return new AccelerationVector((short) (bArr[40] + ((bArr[41] << 8) & 65280)), (short) (bArr[42] + ((bArr[43] << 8) & 65280)), (short) (bArr[44] + ((bArr[45] << 8) & 65280)), 732L);
    }
}
