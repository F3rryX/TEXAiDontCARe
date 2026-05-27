package com.texa.carelib.care.vehicle;

import com.texa.carelib.care.DateTime;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public interface ValueInfo {
    byte getDataStatus();

    Date getDateLastUpdate();

    long getID();

    int getPrecision() throws InvalidVehicleValueException;

    Long getSubscriptionInterval();

    SubscriptionState getSubscriptionState();

    ValueDataType getType();

    boolean isAvailable();

    DateTime toDateTimeValue() throws InvalidVehicleValueException;

    long toEnumValue() throws InvalidVehicleValueException;

    String toFormattedNumericValue() throws InvalidVehicleValueException;

    double toNumericValue() throws InvalidVehicleValueException;

    double toNumericValue(int i) throws InvalidVehicleValueException;

    String toString();

    String toTextValue() throws InvalidVehicleValueException;
}
