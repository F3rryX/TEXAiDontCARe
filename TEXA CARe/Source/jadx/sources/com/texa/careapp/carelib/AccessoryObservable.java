package com.texa.careapp.carelib;

import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.core.utils.FirmwareVersion;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

/* JADX INFO: loaded from: classes2.dex */
public class AccessoryObservable {
    private Accessory mAccessory;
    private PropertyChangeListener mPropertyChangeListener;
    private PublishSubject<PropertyChangeEvent> mPublishSubject = PublishSubject.create();

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-carelib-AccessoryObservable, reason: not valid java name */
    public /* synthetic */ void m546lambda$new$0$comtexacareappcarelibAccessoryObservable(PropertyChangeEvent propertyChangeEvent) {
        this.mPublishSubject.onNext(propertyChangeEvent);
    }

    public AccessoryObservable(Accessory accessory) {
        PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda6
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m546lambda$new$0$comtexacareappcarelibAccessoryObservable(propertyChangeEvent);
            }
        };
        this.mPropertyChangeListener = propertyChangeListener;
        this.mAccessory = accessory;
        accessory.addPropertyChangeListener(propertyChangeListener);
    }

    private static boolean isFirmwareVersionValid(FirmwareVersion firmwareVersion) {
        return (firmwareVersion == null || (checkNullValue(firmwareVersion.getVersion().getBuild()) == 0 && checkNullValue(firmwareVersion.getVersion().getMajor()) == 0 && checkNullValue(firmwareVersion.getVersion().getMinor()) == 0 && checkNullValue(firmwareVersion.getVersion().getRevision()) == 0) || firmwareVersion.getApplicationName() == null || firmwareVersion.getBoardName() == null || firmwareVersion.getCustomerName() == null || firmwareVersion.getProductName() == null) ? false : true;
    }

    private static int checkNullValue(Integer num) {
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public Observable<String> observeSerialNumber() {
        return this.mPublishSubject.compose(Utils.filterProperty(Accessory.PROPERTY_SERIAL_NUMBER)).flatMap(new Function() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m547x2448ef13((PropertyChangeEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeSerialNumber$1$com-texa-careapp-carelib-AccessoryObservable, reason: not valid java name */
    public /* synthetic */ ObservableSource m547x2448ef13(PropertyChangeEvent propertyChangeEvent) throws Exception {
        if (this.mAccessory.getSerialNumber() != null) {
            return Observable.just(this.mAccessory.getSerialNumber());
        }
        return Observable.empty();
    }

    public Observable<Boolean> isAuthenticated() {
        return this.mPublishSubject.compose(Utils.filterProperty(Accessory.PROPERTY_IS_AUTHENTICATED)).flatMap(new Function() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m544xb8313826((PropertyChangeEvent) obj);
            }
        }).startWith((ObservableSource) Observable.just(Boolean.valueOf(this.mAccessory.isHostAuthenticated()))).filter(new Predicate() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$isAuthenticated$2$com-texa-careapp-carelib-AccessoryObservable, reason: not valid java name */
    public /* synthetic */ ObservableSource m544xb8313826(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(Boolean.valueOf(this.mAccessory.isHostAuthenticated()));
    }

    public Observable<Integer> isConfiguredAndObdConnected() {
        return this.mPublishSubject.compose(Utils.filterProperty(Accessory.PROPERTY_STATUS)).flatMap(new Function() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m545xaa42ae62((PropertyChangeEvent) obj);
            }
        }).startWith((ObservableSource) Observable.just(Integer.valueOf(this.mAccessory.getStatus()))).filter(new Predicate() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return AccessoryObservable.lambda$isConfiguredAndObdConnected$5((Integer) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$isConfiguredAndObdConnected$4$com-texa-careapp-carelib-AccessoryObservable, reason: not valid java name */
    public /* synthetic */ ObservableSource m545xaa42ae62(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(Integer.valueOf(this.mAccessory.getStatus()));
    }

    static /* synthetic */ boolean lambda$isConfiguredAndObdConnected$5(Integer num) throws Exception {
        return num.intValue() == 4;
    }

    public Observable<String> getSerialNumber() {
        String serialNumber = this.mAccessory.getSerialNumber();
        if (serialNumber != null) {
            return Observable.just(serialNumber);
        }
        return observeSerialNumber().take(1L);
    }

    public Observable<FirmwareVersion> observeServiceAppVersion() {
        return this.mPublishSubject.compose(Utils.filterProperty(Accessory.PROPERTY_SERVICE_APP_VERSION)).flatMap(new Function() { // from class: com.texa.careapp.carelib.AccessoryObservable$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m548x2efaa3bd((PropertyChangeEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeServiceAppVersion$6$com-texa-careapp-carelib-AccessoryObservable, reason: not valid java name */
    public /* synthetic */ ObservableSource m548x2efaa3bd(PropertyChangeEvent propertyChangeEvent) throws Exception {
        if (this.mAccessory.getServiceAPPVersion() != null) {
            return Observable.just(this.mAccessory.getServiceAPPVersion());
        }
        return Observable.empty();
    }

    public Observable<FirmwareVersion> getServiceAppVersion() {
        FirmwareVersion serviceAPPVersion = this.mAccessory.getServiceAPPVersion();
        if (isFirmwareVersionValid(serviceAPPVersion)) {
            return Observable.just(serviceAPPVersion);
        }
        return observeServiceAppVersion().take(1L);
    }

    protected PropertyChangeListener getPropertyChangeListener() {
        return this.mPropertyChangeListener;
    }
}
