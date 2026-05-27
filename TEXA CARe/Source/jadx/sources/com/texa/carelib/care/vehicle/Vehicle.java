package com.texa.carelib.care.vehicle;

import com.texa.carelib.care.DateTime;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.Date;
import java.util.Set;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public interface Vehicle extends ObservableObject {
    public static final Long ONE_SHOT_READ = Long.valueOf(BodyPartID.bodyIdMax);
    public static final String PROPERTY_ACTIVE_SUBSCRIPTION_COUNT = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT";
    public static final String PROPERTY_AVAILABLE_DATA_IDS = "com.texa.carelib.care.vehicle.PROPERTY_AVAILABLE_DATA_IDS";
    public static final String PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT";
    public static final String PROPERTY_SUPPORTED_DATA_IDS = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_SUPPORTED_DATA_IDS";

    VehicleListener addVehicleListener(VehicleListener vehicleListener);

    void beginUpdateValues(long j, Set<Long> set) throws CareLibException;

    void beginUpdateValues(long j, Long... lArr) throws CareLibException;

    void endUpdateValues(Set<Long> set) throws CareLibException;

    void endUpdateValues(Long... lArr) throws CareLibException;

    Integer getActiveSubscriptionCount();

    Set<Long> getAvailableDataIDs();

    Date getDateLastUpdate(long j) throws InvalidVehicleValueException;

    DateTime getDateTimeValue(Long l) throws InvalidVehicleValueException;

    long getEnumValue(Long l) throws InvalidVehicleValueException;

    String getFormattedNumericValue(Long l) throws InvalidVehicleValueException;

    Integer getMaximumSubscriptionCount();

    double getNumericValue(Long l) throws InvalidVehicleValueException;

    int getPrecision(Long l) throws InvalidVehicleValueException;

    Long getSubscriptionInterval(Long l);

    SubscriptionState getSubscriptionState(Long l);

    Set<Long> getSupportedDataIDs();

    String getTextValue(Long l) throws InvalidVehicleValueException;

    ValueInfo getValueInfo(Long l) throws InvalidVehicleValueException;

    boolean isAvailable(Long l);

    void loadAvailableDataIDs() throws CareLibException;

    void loadValues(Set<Long> set) throws CareLibException;

    void loadValues(Long... lArr) throws CareLibException;

    void removeVehicleListener(VehicleListener vehicleListener);
}
