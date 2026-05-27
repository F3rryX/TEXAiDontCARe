package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.DateTime;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.ValueDataType;

/* JADX INFO: loaded from: classes2.dex */
public interface VehicleValueParser {
    byte getDataStatus(byte[] bArr);

    ValueDataType getDataType(byte[] bArr);

    DateTime getDateTime(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException;

    long getEnumValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException;

    int getParameterPrecision(byte[] bArr);

    float getParameterValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException;

    String getTextValue(byte[] bArr, byte[] bArr2) throws InvalidVehicleValueException;

    boolean isDateTime(byte[] bArr, byte[] bArr2);

    void setDataStatus(byte[] bArr, byte b) throws InvalidVehicleValueException;
}
