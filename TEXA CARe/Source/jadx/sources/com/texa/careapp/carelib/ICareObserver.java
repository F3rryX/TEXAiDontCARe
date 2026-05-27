package com.texa.careapp.carelib;

import com.texa.careapp.model.DongleModel;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.utils.FirmwareVersion;
import io.reactivex.Observable;
import io.reactivex.schedulers.Timed;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public interface ICareObserver {
    Observable<CommunicationStatus> careCommunicationChange();

    Observable<CommunicationStatus> careConnected();

    Observable<CommunicationStatus> careNotConnected();

    Observable<Accessory> observeAccessory(String str);

    Observable<Accessory> observeAccessory(String str, boolean z);

    Observable<BigInteger> observeAccessoryInterpreterVersion();

    Observable<FirmwareVersion> observeAccessoryMainAppVersion();

    Observable<FirmwareVersion> observeAccessoryMainAppVersionPending();

    Observable<String> observeAccessorySerialNumber();

    Observable<FirmwareVersion> observeAccessoryServiceAppVersion();

    Observable<FirmwareVersion> observeAccessoryServiceAppVersionPending();

    Observable<Accessory> observeCareInfos();

    Observable<Integer> observeCareStatus();

    Observable<CurrentTrip> observeCurrentTrip();

    Observable<VehicleTroubles> observeDtc();

    Observable<DongleModel> observeInfosForConfigurationUpdate();

    Observable<Timed<Long>> observeParametersLastUpdate();

    Observable<CurrentTrip> observeTripStartInfo();

    Observable<CurrentTrip> observeTripStopInfo();

    Observable<String> observeVinCode();

    Observable<CurrentTrip> tripStartSmart();
}
