package com.texa.care.eco_driving;

import android.util.Log;
import com.texa.care.eco_driving.RxObservableObject;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import io.reactivex.Observable;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RxCommunication extends RxObservableObject {
    private static final String TAG = "RxCurrentTrip";
    private final Communication mCommunication;

    public RxCommunication(Communication communication) {
        this.mCommunication = communication;
        communication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxCommunication$$ExternalSyntheticLambda1
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m87lambda$new$0$comtexacareeco_drivingRxCommunication(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxCommunication, reason: not valid java name */
    public /* synthetic */ void m87lambda$new$0$comtexacareeco_drivingRxCommunication(PropertyChangeEvent propertyChangeEvent) {
        Log.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    public Observable<CommunicationStatus> observeCommunicationStatus() {
        final Communication communication = this.mCommunication;
        Objects.requireNonNull(communication);
        return observePropertyChanges(Communication.PROPERTY_STATUS, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxCommunication$$ExternalSyntheticLambda0
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return communication.getStatus();
            }
        });
    }
}
