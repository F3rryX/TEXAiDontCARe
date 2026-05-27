package com.texa.care.eco_driving;

import android.util.Log;
import com.texa.care.eco_driving.RxObservableObject;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.events.SetDiagnosisModeCompletedEvent;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.Version;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.math.BigInteger;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class RxAccessory extends RxObservableObject {
    private static final String TAG = "RxAccessory";
    private final Accessory mAccessory;

    public RxAccessory(Accessory accessory) {
        this.mAccessory = accessory;
        accessory.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda4
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m84lambda$new$0$comtexacareeco_drivingRxAccessory(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxAccessory, reason: not valid java name */
    public /* synthetic */ void m84lambda$new$0$comtexacareeco_drivingRxAccessory(PropertyChangeEvent propertyChangeEvent) {
        Log.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    public Observable<Boolean> observeHostAuthentication() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_IS_AUTHENTICATED, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda1
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return Boolean.valueOf(accessory.isHostAuthenticated());
            }
        });
    }

    public Observable<Integer> observeDiagnosisMode() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_DIAGNOSIS_MODE, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda6
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return Integer.valueOf(accessory.getDiagnosisMode());
            }
        });
    }

    public Observable<AppType> obseveRunningApp() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_RUNNING_APP, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda12
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getRunningApp();
            }
        });
    }

    public Observable<Version> observeHardwareRevision() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_HARDWARE_REVISION, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda7
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getHardwareRevision();
            }
        });
    }

    public Observable<BigInteger> observeInterpreterVersion() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_INTERPRETER_VERSION, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda8
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getInterpreterVersion();
            }
        });
    }

    public Observable<String> observeMACAddress() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_MAC_ADDRESS, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda11
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getMACAddress();
            }
        });
    }

    public Observable<Date> observeCurrentDate() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_CURRENT_DATE, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda0
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getCurrentDate();
            }
        });
    }

    public Observable<Date> observeLastPlugEventDate() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_LAST_PLUG_DATE, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda9
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getLastPlugEventDate();
            }
        });
    }

    public Observable<Date> observeLastUnplugEventDate() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_LAST_UNPLUG_DATE, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda10
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getLastUnplugEventDate();
            }
        });
    }

    public Observable<Integer> observeStatus() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_STATUS, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda14
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return Integer.valueOf(accessory.getStatus());
            }
        });
    }

    public Observable<String> observeSerialNumber() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_SERIAL_NUMBER, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda13
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return accessory.getSerialNumber();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setDiagnosisMode$3$com-texa-care-eco_driving-RxAccessory, reason: not valid java name */
    public /* synthetic */ CompletableSource m86lambda$setDiagnosisMode$3$comtexacareeco_drivingRxAccessory(final int i) throws Exception {
        return Completable.create(new CompletableOnSubscribe() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda3
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) throws Exception {
                this.f$0.m85lambda$setDiagnosisMode$2$comtexacareeco_drivingRxAccessory(i, completableEmitter);
            }
        });
    }

    public Completable setDiagnosisMode(final int i) {
        return Completable.defer(new Callable() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda5
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m86lambda$setDiagnosisMode$3$comtexacareeco_drivingRxAccessory(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setDiagnosisMode$2$com-texa-care-eco_driving-RxAccessory, reason: not valid java name */
    public /* synthetic */ void m85lambda$setDiagnosisMode$2$comtexacareeco_drivingRxAccessory(int i, final CompletableEmitter completableEmitter) throws Exception {
        try {
            this.mAccessory.setDiagnosisMode(i, new Callback() { // from class: com.texa.care.eco_driving.RxAccessory$$ExternalSyntheticLambda2
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    RxAccessory.lambda$setDiagnosisMode$1(completableEmitter, (SetDiagnosisModeCompletedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            completableEmitter.onError(e);
        }
    }

    static /* synthetic */ void lambda$setDiagnosisMode$1(CompletableEmitter completableEmitter, SetDiagnosisModeCompletedEvent setDiagnosisModeCompletedEvent) {
        CareError error = setDiagnosisModeCompletedEvent.getError();
        if (error != null) {
            completableEmitter.onError(error);
        } else {
            completableEmitter.onComplete();
        }
    }
}
