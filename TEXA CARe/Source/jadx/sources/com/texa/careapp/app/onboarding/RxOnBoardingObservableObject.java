package com.texa.careapp.app.onboarding;

import com.texa.careapp.model.DongleModel;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.math.BigInteger;
import java.util.Objects;
import java.util.concurrent.Callable;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class RxOnBoardingObservableObject {
    private static final String TAG = "RxOnBoardingObservableObject";
    private final Accessory mAccessory;
    private final DongleModel mDongleModel;
    private final PublishSubject<PropertyChangeEvent> mPropertyChangeEventSubject = PublishSubject.create();
    private BehaviorSubject<String> mVehicleIdSubject;
    private final VehicleInfo mVehicleInfo;

    interface Supplier<T> {
        T get();
    }

    RxOnBoardingObservableObject(DongleModel dongleModel, Accessory accessory, VehicleInfo vehicleInfo) {
        this.mDongleModel = dongleModel;
        this.mAccessory = accessory;
        this.mVehicleInfo = vehicleInfo;
        accessory.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda4
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m290xe4c12aba(propertyChangeEvent);
            }
        });
        if (vehicleInfo.getVehicleID() != null) {
            this.mVehicleIdSubject = BehaviorSubject.createDefault(vehicleInfo.getVehicleID());
        } else {
            this.mVehicleIdSubject = BehaviorSubject.create();
        }
        vehicleInfo.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda5
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m291x78ff9a59(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-onboarding-RxOnBoardingObservableObject, reason: not valid java name */
    public /* synthetic */ void m290xe4c12aba(PropertyChangeEvent propertyChangeEvent) {
        Timber.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-onboarding-RxOnBoardingObservableObject, reason: not valid java name */
    public /* synthetic */ void m291x78ff9a59(PropertyChangeEvent propertyChangeEvent) {
        if (VehicleInfo.PROPERTY_VEHICLE_ID.equals(propertyChangeEvent.getPropertyName())) {
            if (this.mVehicleInfo.getVehicleID() == null) {
                this.mVehicleIdSubject.onNext("");
            } else {
                this.mVehicleIdSubject.onNext(this.mVehicleInfo.getVehicleID());
            }
        }
    }

    Observable<String> observeSerialNumber() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_SERIAL_NUMBER, new Supplier() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda1
            @Override // com.texa.careapp.app.onboarding.RxOnBoardingObservableObject.Supplier
            public final Object get() {
                return accessory.getSerialNumber();
            }
        });
    }

    Observable<BigInteger> observeInterpreterVersion() {
        final Accessory accessory = this.mAccessory;
        Objects.requireNonNull(accessory);
        return observePropertyChanges(Accessory.PROPERTY_INTERPRETER_VERSION, new Supplier() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda0
            @Override // com.texa.careapp.app.onboarding.RxOnBoardingObservableObject.Supplier
            public final Object get() {
                return accessory.getInterpreterVersion();
            }
        });
    }

    Observable<String> observeVehicleID() {
        return this.mVehicleIdSubject;
    }

    private <T> Observable<T> observePropertyChanges(String str, final Supplier<T> supplier) {
        return Observable.merge(Observable.defer(new Callable() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return RxOnBoardingObservableObject.lambda$observePropertyChanges$2(supplier);
            }
        }), _observePropertyChanges(str, null));
    }

    static /* synthetic */ ObservableSource lambda$observePropertyChanges$2(Supplier supplier) throws Exception {
        Object obj = supplier.get();
        if (obj != null) {
            return Observable.just(obj);
        }
        return Observable.empty();
    }

    private <T> Observable<T> _observePropertyChanges(final String str, final T t) {
        return (Observable<T>) this.mPropertyChangeEventSubject.filter(new Predicate() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return str.equals(((PropertyChangeEvent) obj).getPropertyName());
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.onboarding.RxOnBoardingObservableObject$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RxOnBoardingObservableObject.lambda$_observePropertyChanges$4(t, (PropertyChangeEvent) obj);
            }
        });
    }

    static /* synthetic */ ObservableSource lambda$_observePropertyChanges$4(Object obj, PropertyChangeEvent propertyChangeEvent) throws Exception {
        if (propertyChangeEvent.getNewValue() != null) {
            try {
                Object newValue = propertyChangeEvent.getNewValue();
                if (newValue != null) {
                    return Observable.just(newValue);
                }
                if (obj != null) {
                    return Observable.just(obj);
                }
                Timber.w(TAG, "Null value receveid..");
            } catch (ClassCastException e) {
                Timber.e(TAG, "Could not obtain the new property value!", e);
            }
        }
        return Observable.empty();
    }
}
