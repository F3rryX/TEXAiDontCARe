package com.texa.careapp.utils;

import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleObserver {
    private TexaCareApiServiceUser mApiService;
    private VehicleModel mCurrentVehicle;
    private DongleDataManager mDongleDataManager;
    private EventBus mEventBus;
    private Disposable mVehicleDataDisposable;
    private VehicleDataManager mVehicleDataManager;

    static /* synthetic */ void lambda$getVehicleModelObservable$4(Observer observer) {
    }

    public void forceVehicleUpdateFromServer(String str) {
        Timber.i("CHANGE EVENT SERVER", new Object[0]);
        updateVehicleData(str);
    }

    public VehicleObserver(DongleDataManager dongleDataManager, TexaCareApiServiceUser texaCareApiServiceUser, VehicleDataManager vehicleDataManager, EventBus eventBus, Communication communication) {
        this.mDongleDataManager = dongleDataManager;
        this.mApiService = texaCareApiServiceUser;
        this.mVehicleDataManager = vehicleDataManager;
        this.mEventBus = eventBus;
        communication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda6
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m664lambda$new$0$comtexacareapputilsVehicleObserver(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-utils-VehicleObserver, reason: not valid java name */
    public /* synthetic */ void m664lambda$new$0$comtexacareapputilsVehicleObserver(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName()) && communication.getStatus() == CommunicationStatus.CONNECTED) {
            Disposable disposable = this.mVehicleDataDisposable;
            if (disposable != null) {
                disposable.dispose();
            }
            DeviceInfo currentDevice = communication.getCurrentDevice();
            if (currentDevice == null) {
                throw new IllegalStateException("CommunicationStatus = CONNECTED but getCurrentDevice() is null!");
            }
            String address = currentDevice.getAddress();
            List<DongleModel> dongleByMacAddress = this.mDongleDataManager.getDongleByMacAddress(address);
            this.mDongleDataManager.setDongleLikeSelectedWithMac(address);
            if (dongleByMacAddress.isEmpty()) {
                return;
            }
            this.mCurrentVehicle = dongleByMacAddress.get(0).getCurrentVehicle();
            Timber.i("CHANGE EVENT COMMUNICATION", new Object[0]);
            VehicleModel vehicleModel = this.mCurrentVehicle;
            if (vehicleModel != null) {
                updateVehicleData(vehicleModel.getPlate());
            }
        }
    }

    public VehicleModel getCurrentVehicle() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.e("dongleModel == null", new Object[0]);
            return null;
        }
        VehicleModel currentVehicle = dongleModel.getCurrentVehicle();
        this.mCurrentVehicle = currentVehicle;
        return currentVehicle;
    }

    public VehicleModel getSelectedVehicle() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.e("dongleModel == null", new Object[0]);
            return null;
        }
        return dongleModel.getSelectedVehicle();
    }

    public void resetVehicleObserver() {
        this.mCurrentVehicle = null;
    }

    public void forceUpdate() {
        VehicleModel selectedVehicle = getSelectedVehicle();
        if (selectedVehicle != null) {
            Timber.i("CHANGE EVENT FORCE UPDATE", new Object[0]);
            Disposable disposable = this.mVehicleDataDisposable;
            if (disposable != null) {
                disposable.dispose();
            }
            updateVehicleData(selectedVehicle.getPlate());
        }
    }

    private void updateVehicleData(String str) {
        this.mVehicleDataDisposable = getVehicleModelObservable(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m665xeda98bc9((VehicleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "getVehicleModelObservable exception", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateVehicleData$1$com-texa-careapp-utils-VehicleObserver, reason: not valid java name */
    public /* synthetic */ void m665xeda98bc9(VehicleModel vehicleModel) throws Exception {
        this.mEventBus.post(new VehicleChangedEvent(vehicleModel));
    }

    private Observable<VehicleModel> getVehicleModelObservable(final String str) {
        final VehicleModel vehicleModel = this.mCurrentVehicle;
        Observable<R> observableFlatMap = this.mApiService.getUserVehicleList().flatMap(new Function() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just(((UserVehicleListResponse) obj).getByPlate(str).vehicleId);
            }
        });
        final TexaCareApiServiceUser texaCareApiServiceUser = this.mApiService;
        java.util.Objects.requireNonNull(texaCareApiServiceUser);
        Observable observableOnErrorResumeNext = observableFlatMap.flatMap(new Function() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return texaCareApiServiceUser.getVehicleDetailsObservable((String) obj);
            }
        }).onErrorResumeNext(new ObservableSource() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableSource
            public final void subscribe(Observer observer) {
                VehicleObserver.lambda$getVehicleModelObservable$4(observer);
            }
        });
        if (vehicleModel != null) {
            if (vehicleModel.isSyncNeeded()) {
                return Observable.just(vehicleModel);
            }
            return Observable.concat(Observable.just(vehicleModel), observableOnErrorResumeNext.flatMap(new Function() { // from class: com.texa.careapp.utils.VehicleObserver$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.m663xc4c1755c(vehicleModel, (VehicleResponse) obj);
                }
            }));
        }
        VehicleDataManager vehicleDataManager = this.mVehicleDataManager;
        java.util.Objects.requireNonNull(vehicleDataManager);
        return observableOnErrorResumeNext.flatMap(new LoginHelperRx$$ExternalSyntheticLambda13(vehicleDataManager));
    }

    /* JADX INFO: renamed from: lambda$getVehicleModelObservable$5$com-texa-careapp-utils-VehicleObserver, reason: not valid java name */
    public /* synthetic */ ObservableSource m663xc4c1755c(VehicleModel vehicleModel, VehicleResponse vehicleResponse) throws Exception {
        try {
            return this.mVehicleDataManager.updateVehicle(vehicleModel, vehicleResponse);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not update vehicle information in database", new Object[0]);
            throw new RuntimeException(e);
        }
    }

    public class VehicleChangedEvent {
        private VehicleModel mVehicleModel;

        public VehicleChangedEvent(VehicleModel vehicleModel) {
            this.mVehicleModel = vehicleModel;
        }

        public VehicleModel getVehicleModel() {
            return this.mVehicleModel;
        }
    }
}
