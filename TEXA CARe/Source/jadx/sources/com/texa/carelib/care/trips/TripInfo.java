package com.texa.carelib.care.trips;

import com.texa.carelib.care.trips.internal.TripIDProvider;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.utils.internal.CareStructJoiner;
import java.beans.PropertyChangeEvent;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class TripInfo extends ObservableObjectBase implements ObservableObject {
    public static final String PROPERTY_TRIP_BEGIN_INFO = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_BEGIN_INFO";
    public static final String PROPERTY_TRIP_END_INFO = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_END_INFO";
    public static final String PROPERTY_TRIP_ERROR_INFO = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_ERROR_INFO";
    public static final String PROPERTY_TRIP_STATISTICS_INFO = "com.texa.carelib.care.trips.TripInfo#PROPERTY_TRIP_STATISTICS_INFO";
    private TripBeginInfo mTripBeginInfo;
    private TripEndInfo mTripEndInfo;
    private BigInteger mTripID = BigInteger.ZERO;
    private TripStatisticsInfo mTripStatisticsInfo;
    private TripStatus mTripStatus;

    public BigInteger getTripID() {
        return this.mTripID;
    }

    public TripBeginInfo getTripBeginInfo() {
        return this.mTripBeginInfo;
    }

    public TripInfo setTripBeginInfo(TripBeginInfo tripBeginInfo) {
        TripBeginInfo tripBeginInfo2 = this.mTripBeginInfo;
        this.mTripBeginInfo = tripBeginInfo;
        this.mTripID = TripIDProvider.getTripID(tripBeginInfo);
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_TRIP_BEGIN_INFO, tripBeginInfo2, this.mTripBeginInfo));
        return this;
    }

    public TripEndInfo getTripEndInfo() {
        return this.mTripEndInfo;
    }

    public TripInfo setTripEndInfo(TripEndInfo tripEndInfo) {
        TripEndInfo tripEndInfo2 = this.mTripEndInfo;
        this.mTripEndInfo = tripEndInfo;
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_TRIP_END_INFO, tripEndInfo2, this.mTripEndInfo));
        return this;
    }

    public TripStatisticsInfo getTripStatisticsInfo() {
        return this.mTripStatisticsInfo;
    }

    public TripInfo setTripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        TripStatisticsInfo tripStatisticsInfo2 = this.mTripStatisticsInfo;
        this.mTripStatisticsInfo = tripStatisticsInfo;
        firePropertyChange(new PropertyChangeEvent(this, PROPERTY_TRIP_STATISTICS_INFO, tripStatisticsInfo2, this.mTripStatisticsInfo));
        return this;
    }

    public byte[] getRawData() {
        return CareStructJoiner.join(this.mTripBeginInfo, this.mTripEndInfo, this.mTripStatisticsInfo);
    }

    public TripInfo setTripStatus(TripStatus tripStatus) {
        this.mTripStatus = tripStatus;
        return this;
    }

    public TripStatus getTripStatus() {
        return this.mTripStatus;
    }
}
