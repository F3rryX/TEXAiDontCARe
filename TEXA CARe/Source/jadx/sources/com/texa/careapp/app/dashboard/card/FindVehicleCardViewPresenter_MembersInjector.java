package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class FindVehicleCardViewPresenter_MembersInjector implements MembersInjector<FindVehicleCardViewPresenter> {
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public FindVehicleCardViewPresenter_MembersInjector(Provider<Context> provider, Provider<Communication> provider2, Provider<VehicleObserver> provider3) {
        this.mContextProvider = provider;
        this.mCommunicationProvider = provider2;
        this.mVehicleObserverProvider = provider3;
    }

    public static MembersInjector<FindVehicleCardViewPresenter> create(Provider<Context> provider, Provider<Communication> provider2, Provider<VehicleObserver> provider3) {
        return new FindVehicleCardViewPresenter_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FindVehicleCardViewPresenter findVehicleCardViewPresenter) {
        injectMContext(findVehicleCardViewPresenter, this.mContextProvider.get());
        injectMCommunication(findVehicleCardViewPresenter, this.mCommunicationProvider.get());
        injectMVehicleObserver(findVehicleCardViewPresenter, this.mVehicleObserverProvider.get());
    }

    public static void injectMContext(FindVehicleCardViewPresenter findVehicleCardViewPresenter, Context context) {
        findVehicleCardViewPresenter.mContext = context;
    }

    public static void injectMCommunication(FindVehicleCardViewPresenter findVehicleCardViewPresenter, Communication communication) {
        findVehicleCardViewPresenter.mCommunication = communication;
    }

    public static void injectMVehicleObserver(FindVehicleCardViewPresenter findVehicleCardViewPresenter, VehicleObserver vehicleObserver) {
        findVehicleCardViewPresenter.mVehicleObserver = vehicleObserver;
    }
}
