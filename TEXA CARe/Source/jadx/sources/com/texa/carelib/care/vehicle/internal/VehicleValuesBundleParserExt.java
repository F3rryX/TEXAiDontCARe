package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Base64Helper;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleValuesBundleParserExt {
    private static final boolean D = false;
    private static final int DATA_DEF_SIZE = 1;
    private static final int DATA_FIELD_SIZE_LENGTH = 2;
    private static final int DATA_ID_LENGTH = 2;
    private static final int DETAILS_LENGTH = 4;
    private static final int FLOAT_VALUE_SIZE = 4;
    private static final int HEADER = 0;
    private static final int HEADER_LENGTH = 8;
    private static final int OBD_BIT_INDEX = 4;
    private static final int OCCURRENCE_COUNTER_AVAILABLE_BIT_INDEX = 5;
    private static final int PARAMETER_ID_SIZE = 4;
    private static final String TAG = "VehicleValuesBundleParserExt";
    private static final List<DiaValueInfo> sParameters = new ArrayList();
    private static final Map<Long, Map<String, DTCDetail>> sDTCs = new HashMap();

    static boolean isDTCOccurrenceAvailable(int i) {
        return (i & 32) != 0;
    }

    static boolean isFromOBD(int i) {
        return (i & 16) != 0;
    }

    public static List<DiaValueInfo> getParameters() {
        return sParameters;
    }

    public static Map<Long, Map<String, DTCDetail>> getDTCs() {
        return sDTCs;
    }

    public static synchronized void parse(VehicleValueParser vehicleValueParser, byte[] bArr, Date date) {
        sDTCs.clear();
        sParameters.clear();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferWrap.position(0);
        while (byteBufferWrap.remaining() >= 8) {
            byte[] bArr2 = new byte[4];
            byteBufferWrap.get(bArr2);
            ValueDataType dataType = vehicleValueParser.getDataType(bArr2);
            int unsignedShort = ByteBufferUtils.getUnsignedShort(byteBufferWrap);
            long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            byte[] bArr3 = new byte[unsignedShort];
            if (unsignedShort > 0) {
                byteBufferWrap.get(bArr3);
            }
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[dataType.ordinal()];
            if (i == 1 || i == 2) {
                getParameters().add(createGenericParameter(vehicleValueParser, unsignedInt, dataType, bArr3, bArr2, date));
            } else if (i == 3) {
                getParameters().add(parseStringParameter(vehicleValueParser, unsignedInt, bArr3, bArr2, date));
            } else if (i == 4) {
                Pair<Long, Map<String, DTCDetail>> eCUDTCs = parseECUDTCs(unsignedInt, bArr3, date);
                getDTCs().put(eCUDTCs.first, eCUDTCs.second);
            } else {
                CareLog.e(TAG, "Data type is unknown. DataID: %1$s DataType: %2$s DataLength: %3$s --- This data will be ignored.", Long.valueOf(unsignedInt), dataType, Integer.valueOf(unsignedShort));
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicle.internal.VehicleValuesBundleParserExt$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType;

        static {
            int[] iArr = new int[ValueDataType.values().length];
            $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType = iArr;
            try {
                iArr[ValueDataType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.DTC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static DiaValueInfo parseStringParameter(VehicleValueParser vehicleValueParser, long j, byte[] bArr, byte[] bArr2, Date date) {
        if (vehicleValueParser.isDateTime(bArr2, bArr)) {
            return createGenericParameter(vehicleValueParser, j, ValueDataType.DATETIME, bArr, bArr2, date);
        }
        return createGenericParameter(vehicleValueParser, j, ValueDataType.STRING, bArr, bArr2, date);
    }

    static DTCStatus getDTCStatus(boolean z, int i) {
        DTCStatus dTCStatusFromInt = DTCStatus.fromInt(i & 15);
        return (DTCStatus.Undefined == dTCStatusFromInt && z) ? DTCStatus.UndefinedOBD : dTCStatusFromInt;
    }

    static Long getDTCOccurrenceCounter(int i) {
        if (isDTCOccurrenceAvailable(i)) {
            return Long.valueOf((i & 4194240) >> 6);
        }
        return null;
    }

    static Pair<Long, Map<String, DTCDetail>> parseECUDTCs(long j, byte[] bArr, Date date) {
        Pair<Long, Map<String, DTCDetail>> pair = new Pair<>(Long.valueOf(j), new HashMap());
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        if (byteBufferWrap.remaining() > 0) {
            byte b = byteBufferWrap.get();
            for (int i = 0; i < b; i++) {
                byte[] bArr2 = new byte[32];
                byteBufferWrap.get(bArr2);
                String strEncode = Base64Helper.encode(bArr2);
                int i2 = byteBufferWrap.getInt();
                long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBufferWrap);
                boolean zIsFromOBD = isFromOBD(i2);
                Long dTCOccurrenceCounter = getDTCOccurrenceCounter(i2);
                pair.second.put(strEncode, new DTCDetail(zIsFromOBD, getDTCStatus(zIsFromOBD, i2), dTCOccurrenceCounter, Long.valueOf(unsignedInt)));
            }
        }
        return pair;
    }

    private static DiaValueInfo createGenericParameter(VehicleValueParser vehicleValueParser, long j, ValueDataType valueDataType, byte[] bArr, byte[] bArr2, Date date) {
        DiaValueInfo diaValueInfo = new DiaValueInfo();
        diaValueInfo.setID(j).setData(bArr, bArr2, vehicleValueParser).setType(valueDataType).setDateLastUpdate(date);
        return diaValueInfo;
    }

    private VehicleValuesBundleParserExt() {
    }

    static class Pair<K, V> {
        K first;
        V second;

        public Pair() {
        }

        Pair(K k, V v) {
            this.first = k;
            this.second = v;
        }
    }
}
