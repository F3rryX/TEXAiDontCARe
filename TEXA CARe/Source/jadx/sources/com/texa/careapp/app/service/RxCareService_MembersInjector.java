package com.texa.careapp.app.service;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class RxCareService_MembersInjector implements MembersInjector<RxCareService> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<CurrentTrip> mCurrentTripProvider;

    public RxCareService_MembersInjector(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4) {
        this.mCurrentTripProvider = provider;
        this.mAccessoryProvider = provider2;
        this.mCommunicationObservableProvider = provider3;
        this.mCommunicationProvider = provider4;
    }

    public static MembersInjector<RxCareService> create(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4) {
        return new RxCareService_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(RxCareService rxCareService) {
        injectMCurrentTrip(rxCareService, this.mCurrentTripProvider.get());
        injectMAccessory(rxCareService, this.mAccessoryProvider.get());
        injectMCommunicationObservable(rxCareService, this.mCommunicationObservableProvider.get());
        injectMCommunication(rxCareService, this.mCommunicationProvider.get());
    }

    public static void injectMCurrentTrip(RxCareService rxCareService, CurrentTrip currentTrip) {
        rxCareService.mCurrentTrip = currentTrip;
    }

    public static void injectMAccessory(RxCareService rxCareService, Accessory accessory) {
        rxCareService.mAccessory = accessory;
    }

    public static void injectMCommunicationObservable(RxCareService rxCareService, CommunicationObservable communicationObservable) {
        rxCareService.mCommunicationObservable = communicationObservable;
    }

    public static void injectMCommunication(RxCareService rxCareService, Communication communication) {
        rxCareService.mCommunication = communication;
    }
}
