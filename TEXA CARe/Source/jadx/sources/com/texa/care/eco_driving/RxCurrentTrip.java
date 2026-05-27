package com.texa.care.eco_driving;

import android.util.Log;
import com.texa.care.eco_driving.RxObservableObject;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import io.reactivex.Observable;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class RxCurrentTrip extends RxObservableObject {
    private static final String TAG = "RxCurrentTrip";
    private final CurrentTrip mCurrentTrip;

    RxCurrentTrip(CurrentTrip currentTrip) {
        this.mCurrentTrip = currentTrip;
        currentTrip.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda5
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m88lambda$new$0$comtexacareeco_drivingRxCurrentTrip(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxCurrentTrip, reason: not valid java name */
    public /* synthetic */ void m88lambda$new$0$comtexacareeco_drivingRxCurrentTrip(PropertyChangeEvent propertyChangeEvent) {
        Log.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    public CurrentTrip getCurrentTrip() {
        return this.mCurrentTrip;
    }

    Observable<TripStatus> observeTripStatus() {
        final CurrentTrip currentTrip = this.mCurrentTrip;
        Objects.requireNonNull(currentTrip);
        return observePropertyChanges(CurrentTrip.PROPERTY_TRIP_STATUS, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda4
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return currentTrip.getTripStatus();
            }
        }, new RxObservableObject.Validator() { // from class: com.texa.care.eco_driving.RxCurrentTrip.1
            @Override // com.texa.care.eco_driving.RxObservableObject.Validator
            public <T> boolean isValid(T t) {
                return super.isValid(t) && TripStatus.Undef != t;
            }
        });
    }

    Observable<TripEndInfo> observeTripStopInfo() {
        final CurrentTrip currentTrip = this.mCurrentTrip;
        Objects.requireNonNull(currentTrip);
        return observePropertyChanges(CurrentTrip.PROPERTY_TRIP_END_INFO, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda1
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return currentTrip.getTripEndInfo();
            }
        });
    }

    Observable<TripBeginInfo> observeTripStartInfo() {
        final CurrentTrip currentTrip = this.mCurrentTrip;
        Objects.requireNonNull(currentTrip);
        return observePropertyChanges(CurrentTrip.PROPERTY_TRIP_BEGIN_INFO, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda0
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return currentTrip.getTripBeginInfo();
            }
        });
    }

    Observable<TripStatisticsInfo> observeTripStatisticsInfo() {
        final CurrentTrip currentTrip = this.mCurrentTrip;
        Objects.requireNonNull(currentTrip);
        return observePropertyChanges(CurrentTrip.PROPERTY_TRIP_STATISTICS_INFO, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda3
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return currentTrip.getTripStatisticsInfo();
            }
        });
    }

    Observable<BigInteger> observeTripID() {
        final CurrentTrip currentTrip = this.mCurrentTrip;
        Objects.requireNonNull(currentTrip);
        return observePropertyChanges(CurrentTrip.PROPERTY_TRIP_ID, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCurrentTrip$$ExternalSyntheticLambda2
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return currentTrip.getTripID();
            }
        });
    }
}
