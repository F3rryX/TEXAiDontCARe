package com.texa.careapp.carelib;

import android.util.Log;
import com.activeandroid.Cache;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.VehicleListener;
import com.texa.carelib.care.vehicle.events.ParametersUpdatedEvent;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.utils.FirmwareVersion;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Timed;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CareObserverImpl implements ICareObserver {
    private static final String TAG = "CareObserverImpl";
    private Accessory mAccessory;
    private Communication mCommunication;
    private CurrentTrip mCurrentTrip;
    private DongleDataManager mDongleDataManager;
    private Observable<CurrentTrip> mTripStartObservable = createTripStartObservable();
    private Observable<CurrentTrip> mTripStopObservable = createTripStopObservable();
    private Vehicle mVehicle;
    private VehicleInfo mVehicleInfo;
    private VehicleTroubles mVehicleTroubles;

    public CareObserverImpl(DongleDataManager dongleDataManager, Communication communication, CurrentTrip currentTrip, Accessory accessory, Vehicle vehicle, VehicleTroubles vehicleTroubles, VehicleInfo vehicleInfo) {
        this.mDongleDataManager = dongleDataManager;
        this.mCommunication = communication;
        this.mCurrentTrip = currentTrip;
        this.mAccessory = accessory;
        this.mVehicle = vehicle;
        this.mVehicleTroubles = vehicleTroubles;
        this.mVehicleInfo = vehicleInfo;
    }

    private static Observable<PropertyChangeEvent> observe(final ObservableObject observableObject, final String str) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda29
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                ObservableObject observableObject2 = observableObject;
                observableObject2.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.1
                    @Override // java.beans.PropertyChangeListener
                    public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                        if (observableEmitter.isDisposed()) {
                            observableObject2.removePropertyChangeListener(this);
                        } else if (str.equals(propertyChangeEvent.getPropertyName())) {
                            observableEmitter.onNext(propertyChangeEvent);
                        }
                    }
                });
            }
        });
    }

    private static Observable<PropertyChangeEvent> observeMulti(final ObservableObject observableObject, final List<String> list) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda30
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                ObservableObject observableObject2 = observableObject;
                observableObject2.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.2
                    @Override // java.beans.PropertyChangeListener
                    public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                        if (observableEmitter.isDisposed()) {
                            observableObject2.removePropertyChangeListener(this);
                        } else if (list.contains(propertyChangeEvent.getPropertyName())) {
                            observableEmitter.onNext(propertyChangeEvent);
                        }
                    }
                });
            }
        });
    }

    private static boolean isLoaded(FirmwareVersion firmwareVersion) {
        return (firmwareVersion == null || new FirmwareVersion().equals(firmwareVersion)) ? false : true;
    }

    private Observable<CurrentTrip> createTripStartObservable() {
        return observe(this.mCurrentTrip, CurrentTrip.PROPERTY_TRIP_STATUS).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just((CurrentTrip) ((PropertyChangeEvent) obj).getSource());
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda25
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return CareObserverImpl.lambda$createTripStartObservable$3((CurrentTrip) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda34
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Log.v(CareObserverImpl.TAG, "received trip start, tripStatus=" + ((CurrentTrip) obj));
            }
        });
    }

    static /* synthetic */ boolean lambda$createTripStartObservable$3(CurrentTrip currentTrip) throws Exception {
        return currentTrip.getTripStatus() == TripStatus.InProgress;
    }

    private Observable<CurrentTrip> createTripStopObservable() {
        return observe(this.mCurrentTrip, CurrentTrip.PROPERTY_TRIP_STATUS).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just((CurrentTrip) ((PropertyChangeEvent) obj).getSource());
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda26
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return CareObserverImpl.lambda$createTripStopObservable$6((CurrentTrip) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Log.v(CareObserverImpl.TAG, "received trip stop, tripStatus=" + ((CurrentTrip) obj));
            }
        });
    }

    static /* synthetic */ boolean lambda$createTripStopObservable$6(CurrentTrip currentTrip) throws Exception {
        return currentTrip.getTripStatus() == TripStatus.Ended;
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CurrentTrip> observeTripStartInfo() {
        return this.mTripStartObservable;
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CurrentTrip> observeTripStopInfo() {
        return this.mTripStopObservable;
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<Accessory> observeCareInfos() {
        return observeMulti(this.mAccessory, Arrays.asList(Accessory.PROPERTY_MAIN_APP_VERSION, Accessory.PROPERTY_SERIAL_NUMBER, Accessory.PROPERTY_INTERPRETER_VERSION, Accessory.PROPERTY_STATUS)).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m560xd1de269((PropertyChangeEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeCareInfos$8$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m560xd1de269(PropertyChangeEvent propertyChangeEvent) throws Exception {
        Log.d(TAG, "received new value for propoerty: " + propertyChangeEvent.getPropertyName());
        return Observable.just(this.mAccessory);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<Accessory> observeAccessory(String str, boolean z) {
        Observable observableFlatMap = observe(this.mAccessory, str).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m553x39736248((PropertyChangeEvent) obj);
            }
        });
        if (z) {
            observableFlatMap.doOnSubscribe(new Consumer() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda31
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m552x883b0((Disposable) obj);
                }
            });
        }
        return observableFlatMap;
    }

    /* JADX INFO: renamed from: lambda$observeAccessory$9$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m553x39736248(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(this.mAccessory);
    }

    /* JADX INFO: renamed from: lambda$observeAccessory$10$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m552x883b0(Disposable disposable) throws Exception {
        try {
            this.mAccessory.loadAccessoryInfo();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<Accessory> observeAccessory(String str) {
        return observeAccessory(str, false);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<FirmwareVersion> observeAccessoryMainAppVersion() {
        FirmwareVersion mainAPPVersion = this.mAccessory.getMainAPPVersion();
        if (isLoaded(mainAPPVersion)) {
            return Observable.just(mainAPPVersion);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_MAIN_APP_VERSION).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m555x39de5781((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessoryMainAppVersion$11$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m555x39de5781(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(this.mAccessory.getMainAPPVersion());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<FirmwareVersion> observeAccessoryMainAppVersionPending() {
        FirmwareVersion pendingMainAPPVersion = this.mAccessory.getPendingMainAPPVersion();
        if (isLoaded(pendingMainAPPVersion)) {
            return Observable.just(pendingMainAPPVersion);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_PENDING_MAIN_APP_VERSION).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m556x8fa068d1((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessoryMainAppVersionPending$12$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m556x8fa068d1(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(this.mAccessory.getPendingMainAPPVersion());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<FirmwareVersion> observeAccessoryServiceAppVersion() {
        FirmwareVersion serviceAPPVersion = this.mAccessory.getServiceAPPVersion();
        if (isLoaded(serviceAPPVersion)) {
            return Observable.just(serviceAPPVersion);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_SERVICE_APP_VERSION).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m558xa6ca268d((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessoryServiceAppVersion$13$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m558xa6ca268d(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(this.mAccessory.getServiceAPPVersion());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<FirmwareVersion> observeAccessoryServiceAppVersionPending() {
        FirmwareVersion pendingServiceAPPVersion = this.mAccessory.getPendingServiceAPPVersion();
        if (isLoaded(pendingServiceAPPVersion)) {
            return Observable.just(pendingServiceAPPVersion);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_PENDING_SERVICE_APP_VERSION).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m559xad5b6589((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessoryServiceAppVersionPending$14$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m559xad5b6589(PropertyChangeEvent propertyChangeEvent) throws Exception {
        return Observable.just(this.mAccessory.getPendingServiceAPPVersion());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<String> observeAccessorySerialNumber() {
        String serialNumber = this.mAccessory.getSerialNumber();
        if (serialNumber != null) {
            Timber.v("observeAccessorySerialNumber - returning just: %s", serialNumber);
            return Observable.just(serialNumber);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_SERIAL_NUMBER).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m557xc42d3698((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessorySerialNumber$15$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m557xc42d3698(PropertyChangeEvent propertyChangeEvent) throws Exception {
        Timber.v("observeAccessorySerialNumber - got new value: " + this.mAccessory.getSerialNumber(), new Object[0]);
        return Observable.just(this.mAccessory.getSerialNumber());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<BigInteger> observeAccessoryInterpreterVersion() {
        BigInteger interpreterVersion = this.mAccessory.getInterpreterVersion();
        if (interpreterVersion != null) {
            Timber.v("observeAccessoryInterpreterVersion - returning just: %s", interpreterVersion);
            return Observable.just(interpreterVersion);
        }
        return observe(this.mAccessory, Accessory.PROPERTY_INTERPRETER_VERSION).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m554x8417de98((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeAccessoryInterpreterVersion$16$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m554x8417de98(PropertyChangeEvent propertyChangeEvent) throws Exception {
        Timber.v("observeAccessoryInterpreterVersion - updated value: " + this.mAccessory.getInterpreterVersion(), new Object[0]);
        return Observable.just(this.mAccessory.getInterpreterVersion());
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<String> observeVinCode() {
        String vehicleID = this.mVehicleInfo.getVehicleID();
        if (vehicleID != null) {
            Timber.v("observeVinCode - returning just: %s", vehicleID);
            return Observable.just(vehicleID);
        }
        return observe(this.mVehicleInfo, VehicleInfo.PROPERTY_VEHICLE_ID).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m564x83b0ce1((PropertyChangeEvent) obj);
            }
        }).take(1L);
    }

    /* JADX INFO: renamed from: lambda$observeVinCode$17$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m564x83b0ce1(PropertyChangeEvent propertyChangeEvent) throws Exception {
        String vehicleID = this.mVehicleInfo.getVehicleID();
        Timber.v("observeVinCode - got new value: " + vehicleID, new Object[0]);
        return Observable.just(vehicleID);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<Timed<Long>> observeParametersLastUpdate() {
        return vehicleListenerObserver().filter(new Predicate() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda27
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return Utils.isVehicleParameter(((Long) obj).longValue());
            }
        }).timestamp().doOnNext(new Consumer() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda33
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m563xa53d4c03((Timed) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeParametersLastUpdate$18$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m563xa53d4c03(Timed timed) throws Exception {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        dongleModel.setLastParametersUpdate(Long.valueOf(timed.time()));
        try {
            Utils.safeModelSave(dongleModel, Cache.getContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model.", new Object[0]);
            throw new RuntimeException(e);
        }
    }

    private Observable<Long> vehicleListenerObserver() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda28
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m569xbb7fe9b3(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$vehicleListenerObserver$19$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m569xbb7fe9b3(final ObservableEmitter observableEmitter) throws Exception {
        this.mVehicle.addVehicleListener(new VehicleListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.3
            @Override // com.texa.carelib.care.vehicle.VehicleListener
            public void onParametersUpdated(ParametersUpdatedEvent parametersUpdatedEvent) {
                if (observableEmitter.isDisposed()) {
                    CareObserverImpl.this.mVehicle.removeVehicleListener(this);
                    return;
                }
                Iterator<Long> it = parametersUpdatedEvent.getUpdatedParametersIDs().iterator();
                while (it.hasNext()) {
                    observableEmitter.onNext(it.next());
                }
            }
        });
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<DongleModel> observeInfosForConfigurationUpdate() {
        final DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        return Observable.merge(observeVinCode().flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return CareObserverImpl.lambda$observeInfosForConfigurationUpdate$20(dongleModel, (String) obj);
            }
        }), observeAccessorySerialNumber().flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return CareObserverImpl.lambda$observeInfosForConfigurationUpdate$21(dongleModel, (String) obj);
            }
        }), observeAccessoryInterpreterVersion().flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return CareObserverImpl.lambda$observeInfosForConfigurationUpdate$22(dongleModel, (BigInteger) obj);
            }
        })).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda32
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m562x3b84cb89((Disposable) obj);
            }
        });
    }

    static /* synthetic */ ObservableSource lambda$observeInfosForConfigurationUpdate$20(DongleModel dongleModel, String str) throws Exception {
        Log.v(TAG, "got vin code: " + str);
        dongleModel.setVinCode(str);
        dongleModel.save();
        return Observable.just(dongleModel);
    }

    static /* synthetic */ ObservableSource lambda$observeInfosForConfigurationUpdate$21(DongleModel dongleModel, String str) throws Exception {
        Log.v(TAG, "got serial number: " + str);
        dongleModel.setHwId(str);
        dongleModel.save();
        return Observable.just(dongleModel);
    }

    static /* synthetic */ ObservableSource lambda$observeInfosForConfigurationUpdate$22(DongleModel dongleModel, BigInteger bigInteger) throws Exception {
        Log.v(TAG, "got interpreter version: " + bigInteger);
        dongleModel.setInterpreterVersion(bigInteger);
        dongleModel.save();
        return Observable.just(dongleModel);
    }

    /* JADX INFO: renamed from: lambda$observeInfosForConfigurationUpdate$23$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m562x3b84cb89(Disposable disposable) throws Exception {
        try {
            this.mAccessory.loadAccessoryInfo();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<VehicleTroubles> observeDtc() {
        return observe(this.mVehicleTroubles, VehicleTroubles.PROPERTY_DTCS).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return CareObserverImpl.lambda$observeDtc$24((PropertyChangeEvent) obj);
            }
        });
    }

    static /* synthetic */ ObservableSource lambda$observeDtc$24(PropertyChangeEvent propertyChangeEvent) throws Exception {
        VehicleTroubles vehicleTroubles = (VehicleTroubles) propertyChangeEvent.getSource();
        Log.d(TAG, "received DTCs: " + vehicleTroubles.getDTCs());
        return Observable.just(vehicleTroubles);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<Integer> observeCareStatus() {
        int status = this.mAccessory.getStatus();
        Log.d(TAG, "care status: " + Utils.readableAccessoryStatus(status));
        return observe(this.mAccessory, Accessory.PROPERTY_STATUS).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m561xea3eac5((PropertyChangeEvent) obj);
            }
        }).startWith(Observable.just(Integer.valueOf(this.mAccessory.getStatus())));
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$25$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m561xea3eac5(PropertyChangeEvent propertyChangeEvent) throws Exception {
        int status = this.mAccessory.getStatus();
        Log.d(TAG, "care status update: " + Utils.readableAccessoryStatus(status));
        return Observable.just(Integer.valueOf(status));
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CurrentTrip> observeCurrentTrip() {
        return observe(this.mCurrentTrip, CurrentTrip.PROPERTY_TRIP_END_INFO).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just((CurrentTrip) ((PropertyChangeEvent) obj).getSource());
            }
        });
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CommunicationStatus> careCommunicationChange() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m549xf90e691(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$careCommunicationChange$27$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m549xf90e691(final ObservableEmitter observableEmitter) throws Exception {
        PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.4
            @Override // java.beans.PropertyChangeListener
            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                Communication communication = (Communication) propertyChangeEvent.getSource();
                if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                    if (observableEmitter.isDisposed()) {
                        CareObserverImpl.this.mCommunication.removePropertyChangeListener(this);
                    } else {
                        observableEmitter.onNext(communication.getStatus());
                    }
                }
            }
        };
        observableEmitter.onNext(this.mCommunication.getStatus());
        this.mCommunication.addPropertyChangeListener(propertyChangeListener);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CommunicationStatus> careConnected() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda11
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m550x73c5dfcf(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$careConnected$28$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m550x73c5dfcf(final ObservableEmitter observableEmitter) throws Exception {
        PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.5
            @Override // java.beans.PropertyChangeListener
            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                Communication communication = (Communication) propertyChangeEvent.getSource();
                if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                    if (observableEmitter.isDisposed()) {
                        CareObserverImpl.this.mCommunication.removePropertyChangeListener(this);
                    } else if (communication.getStatus() != CommunicationStatus.CONNECTED) {
                        observableEmitter.onNext(communication.getStatus());
                    }
                }
            }
        };
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            observableEmitter.onNext(CommunicationStatus.CONNECTED);
        }
        this.mCommunication.addPropertyChangeListener(propertyChangeListener);
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CommunicationStatus> careNotConnected() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda22
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m551x6e40ba7(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$careNotConnected$29$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ void m551x6e40ba7(final ObservableEmitter observableEmitter) throws Exception {
        this.mCommunication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CareObserverImpl.6
            @Override // java.beans.PropertyChangeListener
            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                Communication communication = (Communication) propertyChangeEvent.getSource();
                if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                    if (observableEmitter.isDisposed()) {
                        CareObserverImpl.this.mCommunication.removePropertyChangeListener(this);
                    } else if (communication.getStatus() != CommunicationStatus.CONNECTED) {
                        observableEmitter.onNext(communication.getStatus());
                    }
                }
            }
        });
        if (this.mCommunication.getStatus() != CommunicationStatus.CONNECTED) {
            observableEmitter.onNext(this.mCommunication.getStatus());
        }
    }

    @Override // com.texa.careapp.carelib.ICareObserver
    public Observable<CurrentTrip> tripStartSmart() {
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            if (isInProgress(this.mCurrentTrip)) {
                return Observable.just(this.mCurrentTrip);
            }
            return observeTripStartInfo();
        }
        return Observable.merge(careConnected().filter(new Predicate() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda24
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m567xdd54b93a((CommunicationStatus) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m568xc29627fb((CommunicationStatus) obj);
            }
        }), careConnected().filter(new Predicate() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda23
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m565x12d1dbb8((CommunicationStatus) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.carelib.CareObserverImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m566xf8134a79((CommunicationStatus) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$tripStartSmart$30$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ boolean m565x12d1dbb8(CommunicationStatus communicationStatus) throws Exception {
        return isInProgress(this.mCurrentTrip);
    }

    /* JADX INFO: renamed from: lambda$tripStartSmart$31$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m566xf8134a79(CommunicationStatus communicationStatus) throws Exception {
        return Observable.just(this.mCurrentTrip);
    }

    /* JADX INFO: renamed from: lambda$tripStartSmart$32$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ boolean m567xdd54b93a(CommunicationStatus communicationStatus) throws Exception {
        return !isInProgress(this.mCurrentTrip);
    }

    /* JADX INFO: renamed from: lambda$tripStartSmart$33$com-texa-careapp-carelib-CareObserverImpl, reason: not valid java name */
    public /* synthetic */ ObservableSource m568xc29627fb(CommunicationStatus communicationStatus) throws Exception {
        return observeTripStartInfo();
    }

    private boolean isInProgress(CurrentTrip currentTrip) {
        return currentTrip != null && currentTrip.getTripStatus() == TripStatus.InProgress;
    }
}
