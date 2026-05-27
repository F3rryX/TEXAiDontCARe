package com.texa.carelib.care.trips.internal;

import android.util.SparseArray;
import com.texa.carelib.care.featureverifier.FeatureNotSupportedException;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripDataDownloadListener;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.trips.events.TripDataErasedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.beans.PropertyChangeEvent;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockTripLogBook extends TripLogBookBase {
    public static final String TAG = "MockTripLogBook";
    private static final int TRIP_ODOMETER_LENGTH = 100;
    private static final int TRIP_ODOMETER_OFFSET = 1000;
    private SparseArray<TripInfo> mCachedTripsInfo;
    private final ReentrantLockWrapper mCachedTripsInfoLock;
    private volatile boolean mErasePending;
    private final ScheduledExecutorService mExecutor;
    private volatile boolean mReadPending;
    private SparseArray<TripInfo> mTripsInfo;

    public MockTripLogBook(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        this.mCachedTripsInfoLock = new ReentrantLockWrapper(TAG, "mCachedTripsInfoLock");
        this.mExecutor = Executors.newSingleThreadScheduledExecutor();
        this.mTripsInfo = new SparseArray<>();
        initCachedTripsInfo();
    }

    private void initCachedTripsInfo() {
        this.mCachedTripsInfoLock.lock("initCachedTripsInfo");
        try {
            SparseArray<TripInfo> sparseArray = new SparseArray<>();
            this.mCachedTripsInfo = sparseArray;
            sparseArray.put(1, createTrip(1L));
            this.mCachedTripsInfo.put(2, createTrip(2L));
            this.mCachedTripsInfo.put(3, createTrip(3L));
        } finally {
            this.mCachedTripsInfoLock.unlock("initCachedTripsInfo");
        }
    }

    @Override // com.texa.carelib.care.trips.internal.TripLogBookBase
    protected void resetData(boolean z) {
        super.resetData(z);
        if (z) {
            this.mCachedTripsInfoLock.lock("resetData");
            try {
                List<TripInfo> tripsInfoAsList = getTripsInfoAsList(this.mTripsInfo.clone());
                SparseArray<TripInfo> sparseArray = new SparseArray<>();
                this.mTripsInfo = sparseArray;
                List<TripInfo> tripsInfoAsList2 = getTripsInfoAsList(sparseArray);
                this.mCachedTripsInfoLock.unlock("resetData");
                firePropertyChange(new PropertyChangeEvent(this, TripLogBook.PROPERTY_TRIPS_INFO, tripsInfoAsList, tripsInfoAsList2));
                return;
            } catch (Throwable th) {
                this.mCachedTripsInfoLock.unlock("resetData");
                throw th;
            }
        }
        this.mTripsInfo = new SparseArray<>();
    }

    private TripInfo createTrip(Long l) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2015, 0, 1, 8, 0, 0);
        calendar.add(6, l.intValue());
        TripInfo tripInfo = new TripInfo();
        tripInfo.setTripStatus(TripStatus.Ended);
        TripBeginInfoBuilder tripBeginInfoBuilder = new TripBeginInfoBuilder();
        tripBeginInfoBuilder.setTripNumber(l).setTimeZoneOffset(128).setTimestamp(calendar.getTime()).setOdometer(Float.valueOf((l.longValue() * 100) + 1000.0f)).setMinVoltageEngineOff(Float.valueOf(9.4f)).setAverageVoltageEngineOff(Float.valueOf(12.3f));
        calendar.add(10, 1);
        TripEndInfoBuilder tripEndInfoBuilder = new TripEndInfoBuilder();
        tripEndInfoBuilder.setTimeZoneOffset(128).setTripNumber(l).setTimeZoneOffset(128).setTimestamp(calendar.getTime()).setOdometer(Float.valueOf((l.longValue() * 100) + 1100.0f)).setMaxVoltageEngineOn(Float.valueOf(14.3f)).setDriverID(UUID.randomUUID());
        TripStatisticsInfoBuilder tripStatisticsInfoBuilder = new TripStatisticsInfoBuilder();
        tripStatisticsInfoBuilder.setTripNumber(l).setHardAccelerationCount(2).setTripIdleTime(Integer.valueOf(l.intValue() * 10)).setHardBrakeCount(1);
        tripInfo.setTripBeginInfo(tripBeginInfoBuilder.build());
        tripInfo.setTripEndInfo(tripEndInfoBuilder.build());
        tripInfo.setTripStatisticsInfo(tripStatisticsInfoBuilder.build());
        return tripInfo;
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public List<TripInfo> getTripsInfo() {
        this.mCachedTripsInfoLock.lock("getTripsInfo");
        try {
            return getTripsInfoAsList(this.mTripsInfo);
        } finally {
            this.mCachedTripsInfoLock.unlock("getTripsInfo");
        }
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public synchronized void eraseTripsInfo(final Callback<TripDataErasedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        this.mErasePending = true;
        this.mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.MockTripLogBook$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m715xb453552e(callback);
            }
        }, 150L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$eraseTripsInfo$0$com-texa-carelib-care-trips-internal-MockTripLogBook, reason: not valid java name */
    public /* synthetic */ void m715xb453552e(Callback callback) {
        setEraseTripDataCallback(callback);
        this.mCachedTripsInfoLock.lock("eraseTripsInfo");
        try {
            this.mCachedTripsInfo.clear();
            this.mCachedTripsInfoLock.unlock("eraseTripsInfo");
            this.mErasePending = false;
            fireTripDataEraseCompleted(this, null);
        } catch (Throwable th) {
            this.mCachedTripsInfoLock.unlock("eraseTripsInfo");
            throw th;
        }
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public synchronized void readTripsInfo(TripDataDownloadListener tripDataDownloadListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(3)) {
            throw new FeatureNotSupportedException();
        }
        setTripDataDownloadListener(tripDataDownloadListener);
        this.mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.MockTripLogBook$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m716xbf8f097();
            }
        }, 2000L, TimeUnit.MILLISECONDS);
        this.mReadPending = true;
    }

    /* JADX INFO: renamed from: lambda$readTripsInfo$1$com-texa-carelib-care-trips-internal-MockTripLogBook, reason: not valid java name */
    public /* synthetic */ void m716xbf8f097() {
        this.mCachedTripsInfoLock.lock("readTripsInfo");
        try {
            List<TripInfo> tripsInfoAsList = getTripsInfoAsList(this.mTripsInfo.clone());
            this.mTripsInfo = new SparseArray<>(this.mCachedTripsInfo.size());
            for (int i = 0; i < this.mCachedTripsInfo.size(); i++) {
                this.mTripsInfo.put(this.mCachedTripsInfo.keyAt(i), this.mCachedTripsInfo.valueAt(i));
            }
            List<TripInfo> tripsInfoAsList2 = getTripsInfoAsList(this.mTripsInfo);
            this.mCachedTripsInfoLock.unlock("readTripsInfo");
            this.mReadPending = false;
            firePropertyChange(new PropertyChangeEvent(this, TripLogBook.PROPERTY_TRIPS_INFO, tripsInfoAsList, tripsInfoAsList2));
        } catch (Throwable th) {
            this.mCachedTripsInfoLock.unlock("readTripsInfo");
            throw th;
        }
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public boolean isErasingTripsInfo() {
        return this.mErasePending;
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public boolean isReadingTripsInfo() {
        return this.mReadPending;
    }

    @Override // com.texa.carelib.care.trips.internal.TripLogBookBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            initCachedTripsInfo();
        }
        this.mErasePending = false;
        this.mReadPending = false;
    }

    private static List<TripInfo> getTripsInfoAsList(SparseArray<TripInfo> sparseArray) {
        if (sparseArray == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(sparseArray.valueAt(i));
        }
        return arrayList;
    }
}
