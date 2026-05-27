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

/* JADX INFO: loaded from: classes2.dex */
public class VehicleValueParserLegacy implements VehicleValueParser {
    private static final String TAG = "VehicleValueParserLegacy";

    private int getParameterPrecision(byte b) {
        return b & 15;
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public ValueDataType getDataType(byte[] bArr) {
        if (bArr == null || bArr.length < 1) {
            return ValueDataType.UNDEF;
        }
        return getDataType(bArr[0]);
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
        if (bArr == null || bArr.length < 1) {
            return (byte) -1;
        }
        return (byte) (((byte) (bArr[0] & 48)) >> 4);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public float getParameterValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 1);
        checkValueDataType(bArr2, ValueDataType.NUMERIC);
        checkDataStatus(bArr2, (byte) 0);
        checkDataLength(bArr, 4);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getFloat();
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public long getEnumValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 1);
        checkValueDataType(bArr2, ValueDataType.ENUM);
        checkDataStatus(bArr2, (byte) 0);
        checkDataLength(bArr, 4);
        float f = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getFloat();
        return Float.compare(Float.MAX_VALUE, f) == 0 ? EnumValue.ERROR.getId() : (long) f;
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleValueParser
    public String getTextValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        checkDataAvailability(bArr, bArr2);
        checkDataLength(bArr2, 1);
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
        checkMinDataLength(bArr, 1);
        if (b < 0 || b > 3) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NotSupported, "Data status out of range.");
        }
        bArr[0] = (byte) (bArr[0] & 207);
        bArr[0] = (byte) (((b << 4) & Commands.GetSOSStatus) | bArr[0]);
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

    void checkDataAvailability(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException {
        if (bArr == null) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NoDataAvailable, "No data available.");
        }
        if (bArr2 == null) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NoDataAvailable, "No data details available.");
        }
    }

    private void checkDataStatus(byte[] bArr, byte b) throws InvalidVehicleValueException {
        byte dataStatus = getDataStatus(bArr);
        if (b != dataStatus) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, "Invalid data status.", dataStatus & 255);
        }
    }

    void checkValueDataType(byte[] bArr, ValueDataType valueDataType) throws InvalidVehicleValueException {
        if (valueDataType != getDataType(bArr)) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataTypeMismatch, "Data type mismatch.");
        }
    }

    void checkDataLength(byte[] bArr, int i) throws InvalidVehicleValueException {
        if (bArr.length != i) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, String.format(Locale.US, "Invalid data length. Actual=%d Expected=%d", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
    }

    void checkMinDataLength(byte[] bArr, int i) throws InvalidVehicleValueException {
        if (bArr.length < i) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.DataRead, "Invalid data length.");
        }
    }

    private ValueDataType getDataType(byte b) {
        return ValueDataType.fromInt((b & 192) >> 6);
    }
}
