package com.texa.care.eco_driving;

import android.util.Log;
import com.texa.care.eco_driving.RxObservableObject;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import io.reactivex.Observable;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class RxDataManagerConfiguration extends RxObservableObject {
    private static final String TAG = "RxDataManagerConfiguration";
    private final DataManagerConfiguration mDataManagerConfiguration;

    RxDataManagerConfiguration(DataManagerConfiguration dataManagerConfiguration) {
        this.mDataManagerConfiguration = dataManagerConfiguration;
        dataManagerConfiguration.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxDataManagerConfiguration$$ExternalSyntheticLambda3
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m89x6ad3ae17(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxDataManagerConfiguration, reason: not valid java name */
    public /* synthetic */ void m89x6ad3ae17(PropertyChangeEvent propertyChangeEvent) {
        Log.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    Observable<Integer> observeTemperatureThreshold() {
        final DataManagerConfiguration dataManagerConfiguration = this.mDataManagerConfiguration;
        Objects.requireNonNull(dataManagerConfiguration);
        return observePropertyChanges(DataManagerConfiguration.PROPERTY_TEMPERATURE_THRESHOLD, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxDataManagerConfiguration$$ExternalSyntheticLambda2
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return dataManagerConfiguration.getTemperatureThreshold();
            }
        });
    }

    Observable<Float> observeBrakeThreshold() {
        final DataManagerConfiguration dataManagerConfiguration = this.mDataManagerConfiguration;
        Objects.requireNonNull(dataManagerConfiguration);
        return observePropertyChanges(DataManagerConfiguration.PROPERTY_BRAKE_THRESHOLD, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxDataManagerConfiguration$$ExternalSyntheticLambda1
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return dataManagerConfiguration.getBrakeThreshold();
            }
        });
    }

    Observable<Float> observeAccelerationThreshold() {
        final DataManagerConfiguration dataManagerConfiguration = this.mDataManagerConfiguration;
        Objects.requireNonNull(dataManagerConfiguration);
        return observePropertyChanges(DataManagerConfiguration.PROPERTY_ACCELERATION_THRESHOLD, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxDataManagerConfiguration$$ExternalSyntheticLambda0
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return dataManagerConfiguration.getAccelerationThreshold();
            }
        });
    }
}
