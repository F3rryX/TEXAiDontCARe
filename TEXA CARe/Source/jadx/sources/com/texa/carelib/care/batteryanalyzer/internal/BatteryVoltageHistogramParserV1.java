package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.BatteryVoltageHistogram;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.core.Range;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.profile.internal.CareStructParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryVoltageHistogramParserV1 extends CareStructParser<BatteryVoltageHistogram> {
    protected static final int BLOCK_SIZE = 140;
    private static final int INDEX_BEAM_LIST = 60;
    private static final int INDEX_BEAM_WIDTH = 52;
    private static final int INDEX_BLOCK_ID = 0;
    private static final int INDEX_BLOCK_RESERVED_1 = 5;
    private static final int INDEX_BLOCK_RESERVED_2 = 12;
    private static final int INDEX_BLOCK_SIZE = 2;
    private static final int INDEX_BLOCK_VERSION = 4;
    private static final int INDEX_SMOOTH_FACTOR = 56;
    private static final int INDEX_TIMESTAMP = 8;
    private static final Float MIN_VOLTAGE = Float.valueOf(6.0f);
    private static final Float MAX_VOLTAGE = Float.valueOf(16.0f);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.texa.carelib.profile.internal.CareStructParser
    public BatteryVoltageHistogram parse(byte[] bArr) {
        BatteryVoltageHistogram.Builder builder = new BatteryVoltageHistogram.Builder();
        Float beamWidth = parseBeamWidth(bArr);
        builder.setData(bArr).setVersion(parseBlockVersion(bArr)).setTimestamp(parseTimestamp(bArr)).setBeamWidth(beamWidth).setSmoothFactor(parseSmoothFactor(bArr));
        if (beamWidth != null) {
            builder.setBeamList(parseBeamList(bArr, beamWidth));
        }
        return builder.build();
    }

    protected int parseBlockVersion(byte[] bArr) {
        Short unsignedByte = getUnsignedByte(bArr, 4);
        if (unsignedByte == null) {
            return 0;
        }
        return unsignedByte.shortValue();
    }

    protected Date parseTimestamp(byte[] bArr) {
        return getTimestamp(bArr, 8);
    }

    protected Float parseBeamWidth(byte[] bArr) {
        if (getUnsignedInt(bArr, 52) == null) {
            return null;
        }
        return Float.valueOf(r3.longValue() / 1000.0f);
    }

    protected Float parseSmoothFactor(byte[] bArr) {
        return getFloat(bArr, 56);
    }

    protected List<CounterInfo> parseBeamList(byte[] bArr, Float f) {
        if (bArr.length < 60) {
            return Collections.emptyList();
        }
        if (f.floatValue() == 0.0f) {
            return Collections.emptyList();
        }
        int iRound = Math.round((MAX_VOLTAGE.floatValue() - MIN_VOLTAGE.floatValue()) / f.floatValue());
        ArrayList arrayList = new ArrayList(iRound);
        for (int i = 0; i < iRound; i++) {
            arrayList.add(new CounterInfo(getVoltageRange(MIN_VOLTAGE.floatValue(), f.floatValue(), i), 0));
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr, 60, bArr.length - 60).order(ByteOrder.LITTLE_ENDIAN);
        while (byteBufferOrder.remaining() >= 8) {
            float f2 = byteBufferOrder.getFloat();
            int iRound2 = Math.round((((ByteBufferUtils.getUnsignedInt(byteBufferOrder) / 1000.0f) - MIN_VOLTAGE.floatValue()) / f.floatValue()) + 0.5f);
            arrayList.set(iRound2, new CounterInfo(((CounterInfo) arrayList.get(iRound2)).getRange(), Math.round(f2)));
        }
        return arrayList;
    }

    private Range<Float> getVoltageRange(float f, float f2, int i) {
        return new Range<>(Float.valueOf((i * f2) + f), Float.valueOf(f + ((i + 1) * f2)));
    }
}
