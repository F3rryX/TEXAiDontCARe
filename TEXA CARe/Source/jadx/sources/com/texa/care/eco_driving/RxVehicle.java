package com.texa.care.eco_driving;

import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.ValueInfo;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.VehicleListener;
import com.texa.carelib.care.vehicle.events.ParametersUpdatedEvent;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class RxVehicle {
    private PublishSubject<List<Long>> mParametersUpdatedSubject = PublishSubject.create();
    private Subject<Set<Long>> mSupportedParametersIDsSubject;
    private Subject<Set<ValueInfo>> mSupportedParametersSubject;
    private final Vehicle mVehicle;

    public RxVehicle(Vehicle vehicle) {
        this.mVehicle = vehicle;
        this.mSupportedParametersSubject = BehaviorSubject.createDefault(toSetOfValueInfo(vehicle.getSupportedDataIDs()));
        this.mSupportedParametersIDsSubject = BehaviorSubject.createDefault(vehicle.getSupportedDataIDs());
        vehicle.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxVehicle$$ExternalSyntheticLambda0
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m92lambda$new$0$comtexacareeco_drivingRxVehicle(propertyChangeEvent);
            }
        });
        vehicle.addVehicleListener(new VehicleListener() { // from class: com.texa.care.eco_driving.RxVehicle.1
            @Override // com.texa.carelib.care.vehicle.VehicleListener
            public void onParametersUpdated(ParametersUpdatedEvent parametersUpdatedEvent) {
                super.onParametersUpdated(parametersUpdatedEvent);
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(parametersUpdatedEvent.getUpdatedParametersIDs());
                RxVehicle.this.mParametersUpdatedSubject.onNext(arrayList);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxVehicle, reason: not valid java name */
    public /* synthetic */ void m92lambda$new$0$comtexacareeco_drivingRxVehicle(PropertyChangeEvent propertyChangeEvent) {
        if (Vehicle.PROPERTY_SUPPORTED_DATA_IDS.equals(propertyChangeEvent.getPropertyName())) {
            this.mSupportedParametersIDsSubject.onNext(this.mVehicle.getSupportedDataIDs());
            this.mSupportedParametersSubject.onNext(toSetOfValueInfo(this.mVehicle.getSupportedDataIDs()));
        }
    }

    public Observable<Set<ValueInfo>> observeSupportedParameters() {
        return this.mSupportedParametersSubject;
    }

    public Observable<Set<Long>> observeSupportedParametersIDs() {
        return this.mSupportedParametersIDsSubject;
    }

    public Observable<List<Long>> observeParameterUpdates() {
        return this.mParametersUpdatedSubject;
    }

    private Set<ValueInfo> toSetOfValueInfo(Set<Long> set) {
        HashSet hashSet = new HashSet();
        Iterator<Long> it = set.iterator();
        while (it.hasNext()) {
            try {
                hashSet.add(this.mVehicle.getValueInfo(it.next()));
            } catch (InvalidVehicleValueException unused) {
            }
        }
        return hashSet;
    }
}
