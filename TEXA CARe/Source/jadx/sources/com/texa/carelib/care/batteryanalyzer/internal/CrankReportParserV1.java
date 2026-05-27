package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.profile.internal.CareStructParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CrankReportParserV1 extends CareStructParser<CrankReport> {
    protected static final int BLOCK_SIZE = 310;
    private static final int INDEX_AREA = 68;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_RESERVED_1 = 5;
    private static final int INDEX_BLOCK_RESERVED_2 = 12;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_STATUS = 52;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_COEFFICIENT_A = 72;
    private static final int INDEX_COEFFICIENT_B = 80;
    private static final int INDEX_COEFFICIENT_C = 88;
    private static final int INDEX_COEFFICIENT_M = 100;
    private static final int INDEX_COEFFICIENT_Q = 104;
    private static final int INDEX_COEFFICIENT_R2 = 96;
    private static final int INDEX_LIMIT = 108;
    private static final int INDEX_MEAN_VOLTAGE = 64;
    private static final int INDEX_MINIMUM_VOLTAGE = 66;
    private static final int INDEX_SAMPLES = 110;
    private static final int INDEX_SAMPLE_NUMBER = 60;
    private static final int INDEX_SAMPLE_PERIOD = 56;
    private static final int INDEX_TIMESTAMP = 8;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public CrankReport parse(byte[] bArr) {
        CrankReport.Builder builder = new CrankReport.Builder();
        builder.setRawData(bArr).setVersion(parseBlockVersion(bArr)).setTimestamp(parseTimestamp(bArr)).setStatus(parseBlockStatus(bArr)).setSamplePeriod(parseSamplePeriod(bArr)).setMeanVoltage(parseMeanVoltage(bArr)).setMinimumVoltage(parseMinimumVoltage(bArr)).setArea(parseArea(bArr)).setCoefficientA(parseCoefficientA(bArr)).setCoefficientB(parseCoefficientB(bArr)).setCoefficientC(parseCoefficientC(bArr)).setCoefficientR2(parseCoefficientR2(bArr)).setCoefficientM(parseCoefficientM(bArr)).setCoefficientQ(parseCoefficientQ(bArr)).setLimit(parseLimit(bArr)).setSamples(parseSamples(bArr));
        return builder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected Long parseBlockStatus(byte[] bArr) {
        return getUnsignedInt(bArr, 52);
    }

    protected Date parseTimestamp(byte[] bArr) {
        return getTimestamp(bArr, 8);
    }

    protected Float parseSamplePeriod(byte[] bArr) {
        if (getUnsignedInt(bArr, 56) == null) {
            return null;
        }
        return Float.valueOf(r3.longValue() / 1000.0f);
    }

    protected Long parseSampleNumber(byte[] bArr) {
        return getUnsignedInt(bArr, 60);
    }

    protected Short parseMeanVoltage(byte[] bArr) {
        return getSignedChar(bArr, 64);
    }

    protected Short parseMinimumVoltage(byte[] bArr) {
        return getSignedChar(bArr, 66);
    }

    protected Integer parseArea(byte[] bArr) {
        return getSignedInt(bArr, 68);
    }

    protected Long parseCoefficientA(byte[] bArr) {
        return getSignedLong(bArr, 72);
    }

    protected Long parseCoefficientB(byte[] bArr) {
        return getSignedLong(bArr, 80);
    }

    protected Long parseCoefficientC(byte[] bArr) {
        return getSignedLong(bArr, 88);
    }

    protected Float parseCoefficientR2(byte[] bArr) {
        return getFloat(bArr, 96);
    }

    protected Float parseCoefficientM(byte[] bArr) {
        return getFloat(bArr, 100);
    }

    protected Float parseCoefficientQ(byte[] bArr) {
        return getFloat(bArr, 104);
    }

    protected Float parseLimit(byte[] bArr) {
        if (getSignedChar(bArr, 108) == null) {
            return null;
        }
        return Float.valueOf(r2.shortValue() / 1000.0f);
    }

    protected List<Short> parseSamples(byte[] bArr) {
        Long sampleNumber = parseSampleNumber(bArr);
        if (sampleNumber == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sampleNumber.longValue(); i++) {
            int i2 = (i * 2) + 110;
            if (bArr.length < i2 + 2) {
                break;
            }
            arrayList.add(getSignedChar(bArr, i2));
        }
        return arrayList;
    }
}
