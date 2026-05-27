package com.texa.carelib.care.trips;

import android.os.Bundle;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.utils.CareStruct;
import java.math.BigInteger;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public interface CurrentTrip extends ObservableObject, CareStruct {
    public static final String PROPERTY_TRIP_BEGIN_INFO = "com.texa.carelib.care.trips.CurrentTrip#TRIP_BEGIN_INFO";
    public static final String PROPERTY_TRIP_END_INFO = "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO";
    public static final String PROPERTY_TRIP_ID = "com.texa.carelib.care.trips.CurrentTrip#TRIP_ID";
    public static final String PROPERTY_TRIP_STATISTICS_INFO = "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATISTICS_INFO";
    public static final String PROPERTY_TRIP_STATUS = "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS";

    public enum TripInfoType {
        Begin,
        End,
        Statistics
    }

    Bundle getArguments();

    TripBeginInfo getTripBeginInfo();

    TripEndInfo getTripEndInfo();

    BigInteger getTripID();

    TripStatisticsInfo getTripStatisticsInfo();

    TripStatus getTripStatus();

    void loadTripInfo() throws CareLibException;

    void loadTripInfo(EnumSet<TripInfoType> enumSet) throws CareLibException;
}
