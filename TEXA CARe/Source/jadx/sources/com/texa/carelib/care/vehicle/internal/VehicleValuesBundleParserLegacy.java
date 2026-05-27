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
public class VehicleValuesBundleParserLegacy {
    private static final boolean D = false;
    private static final int DATA_DEF_SIZE = 1;
    private static final int HEADER = 0;
    private static final int OBD_BIT_INDEX = 4;
    private static final int PARAMETER_ID_SIZE = 4;
    private static final String TAG = "VehicleValuesBundleParserLegacy";
    private static final int VALUE_SIZE = 4;
    private static final List<DiaValueInfo> sParameters = new ArrayList();
    private static final Map<Long, Map<String, DTCDetail>> sDTCs = new HashMap();

    static boolean isOBD(int i) {
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
        while (byteBufferWrap.position() < (byteBufferWrap.limit() - 4) - 1) {
            ValueDataType dataType = vehicleValueParser.getDataType(new byte[]{byteBufferWrap.get(byteBufferWrap.position())});
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[dataType.ordinal()];
            if (i == 1 || i == 2) {
                DiaValueInfo floatParameter = parseFloatParameter(vehicleValueParser, byteBufferWrap, dataType, date);
                if (floatParameter != null) {
                    getParameters().add(floatParameter);
                }
            } else if (i == 3) {
                getParameters().add(parseStringParameter(vehicleValueParser, byteBufferWrap, date));
            } else if (i == 4) {
                Pair<Long, Map<String, DTCDetail>> eCUDTCs = parseECUDTCs(byteBufferWrap);
                getDTCs().put(eCUDTCs.first, eCUDTCs.second);
            } else {
                CareLog.e(TAG, "Data type is unknown. Parameters could be truncated.", new Object[0]);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicle.internal.VehicleValuesBundleParserLegacy$1, reason: invalid class name */
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

    static DTCStatus getDTCStatus(boolean z, int i) {
        DTCStatus dTCStatusFromInt = DTCStatus.fromInt(i & 15);
        return (DTCStatus.Undefined == dTCStatusFromInt && z) ? DTCStatus.UndefinedOBD : dTCStatusFromInt;
    }

    static Pair<Long, Map<String, DTCDetail>> parseECUDTCs(ByteBuffer byteBuffer) {
        byteBuffer.get();
        long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBuffer);
        byte b = byteBuffer.get();
        Pair<Long, Map<String, DTCDetail>> pair = new Pair<>(Long.valueOf(unsignedInt), new HashMap());
        for (int i = 0; i < b; i++) {
            byte[] bArr = new byte[16];
            byteBuffer.get(bArr);
            String strEncode = Base64Helper.encode(bArr);
            int i2 = byteBuffer.getInt();
            boolean zIsOBD = isOBD(i2);
            pair.second.put(strEncode, new DTCDetail(zIsOBD, getDTCStatus(zIsOBD, i2), null, null));
        }
        return pair;
    }

    static DiaValueInfo parseStringParameter(VehicleValueParser vehicleValueParser, ByteBuffer byteBuffer, Date date) {
        byte b = byteBuffer.get();
        long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBuffer);
        int iPosition = byteBuffer.position();
        while (true) {
            if (iPosition >= byteBuffer.limit()) {
                break;
            }
            int i = iPosition + 1;
            if (byteBuffer.get(iPosition) == 0) {
                iPosition = i;
                break;
            }
            iPosition = i;
        }
        int iPosition2 = iPosition - byteBuffer.position();
        byte[] bArr = new byte[iPosition2];
        if (iPosition2 > 0) {
            byteBuffer.get(bArr);
        }
        byte[] bArr2 = {b};
        DiaValueInfo data = new DiaValueInfo().setID(unsignedInt).setDateLastUpdate(date).setData(bArr, bArr2, vehicleValueParser);
        if (vehicleValueParser.isDateTime(bArr, bArr2)) {
            data.setType(ValueDataType.DATETIME);
        } else {
            data.setType(ValueDataType.STRING);
        }
        return data;
    }

    private static DiaValueInfo parseFloatParameter(VehicleValueParser vehicleValueParser, ByteBuffer byteBuffer, ValueDataType valueDataType, Date date) {
        byte b = byteBuffer.get();
        long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBuffer);
        if (byteBuffer.position() + 4 <= byteBuffer.limit()) {
            byte[] bArr = new byte[4];
            byteBuffer.get(bArr);
            DiaValueInfo diaValueInfo = new DiaValueInfo();
            diaValueInfo.setID(unsignedInt).setData(bArr, new byte[]{b}, vehicleValueParser).setType(valueDataType).setDateLastUpdate(date);
            return diaValueInfo;
        }
        CareLog.e(TAG, "parseFloatParameter() Invalid data length!!", new Object[0]);
        return null;
    }

    private VehicleValuesBundleParserLegacy() {
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
