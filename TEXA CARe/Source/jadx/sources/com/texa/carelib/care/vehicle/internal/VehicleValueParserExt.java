package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.DateTime;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.diagresources.EnumValue;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.ParseException;
import java.util.Locale;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleValueParserExt implements VehicleValueParser {
    private static final String TAG = "VehicleValueParserLegacy";

    public int getParameterPrecision(byte b) {
        return b & 15;
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public float getParameterValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException, IllegalArgumentException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 4);
        checkValueDataType(bArr2, ValueDataType.NUMERIC);
        checkDataStatus(bArr2, (byte) 0);
        checkDataLength(bArr, 4);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getFloat();
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public long getEnumValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 4);
        checkValueDataType(bArr2, ValueDataType.ENUM);
        checkDataStatus(bArr2, (byte) 0);
        checkDataLength(bArr, 4);
        float f = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getFloat();
        return Float.compare(Float.MAX_VALUE, f) == 0 ? EnumValue.ERROR.getId() : (long) f;
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public String getTextValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 4);
        checkValueDataType(bArr2, ValueDataType.STRING);
        checkDataStatus(bArr2, (byte) 0);
        checkMinDataLength(bArr, 1);
        try {
            return new String(bArr, 0, bArr.length, "UTF-8").trim();
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, e.getMessage() != null ? e.getMessage() : "Encoding not supported", e);
        }
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public DateTime getDateTime(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        String textValue = getTextValue(bArr, bArr2);
        if (StringUtils.isNullOrEmpty(textValue)) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, "Value is null or empty.");
        }
        try {
            return DateTime.parse(textValue);
        } catch (IllegalArgumentException | ParseException e) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, e.getMessage() != null ? e.getMessage() : "Encoding not supported", e);
        }
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public void setDataStatus(byte[] bArr, byte b) throws InvalidVehicleValueException {
        checkMinDataLength(bArr, 4);
        if (b < 0 || b > 31) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NotSupported, "Data status not available.");
        }
        int i = ((b & 15) << 4) & Commands.GetSOSStatus;
        int i2 = (b & Tnaf.POW_2_WIDTH) >> 4;
        bArr[0] = (byte) (bArr[0] & 15);
        bArr[0] = (byte) (i | bArr[0]);
        bArr[1] = (byte) (bArr[1] & 254);
        bArr[1] = (byte) (i2 | bArr[1]);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public boolean isDateTime(byte[] bArr, byte[] bArr2) {
        try {
            getDateTime(bArr, bArr2);
            return true;
        } catch (InvalidVehicleValueException unused) {
            return false;
        }
    }

    protected void checkDataAvailability(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        if (bArr == null) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NoDataAvailable, "No data available.");
        }
        if (bArr2 == null) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NoDataAvailable, "No data details available.");
        }
    }

    protected void checkDataStatus(byte[] bArr, byte b) throws InvalidVehicleValueException {
        byte dataStatus = getDataStatus(bArr);
        if (b != dataStatus) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, "Invalid data status.", dataStatus & 255);
        }
    }

    protected void checkValueDataType(byte[] bArr, ValueDataType valueDataType) throws InvalidVehicleValueException {
        if (valueDataType != getDataType(bArr)) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataTypeMismatch, "Data type mismatch.");
        }
    }

    protected void checkDataLength(byte[] bArr, int i) throws InvalidVehicleValueException {
        if (bArr.length != i) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, String.format(Locale.US, "Invalid data length. Actual=%d Expected=%d", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
    }

    protected void checkMinDataLength(byte[] bArr, int i) throws InvalidVehicleValueException {
        if (bArr.length < i) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, "Invalid data length.");
        }
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public ValueDataType getDataType(byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            return ValueDataType.UNDEF;
        }
        return getDataType(bArr[1]);
    }

    ValueDataType getDataType(byte b) {
        return ValueDataType.fromInt((b & 62) >> 1);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public int getParameterPrecision(byte[] bArr) {
        if (bArr.length < 1) {
            return 0;
        }
        return getParameterPrecision(bArr[0]);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public byte getDataStatus(byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            return (byte) -1;
        }
        return (byte) (((byte) ((bArr[0] & 240) >> 4)) + (((bArr[1] & 1) << 4) & 16));
    }
}
