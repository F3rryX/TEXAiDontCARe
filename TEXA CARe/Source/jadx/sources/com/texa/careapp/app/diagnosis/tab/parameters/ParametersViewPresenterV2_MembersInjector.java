package com.texa.careapp.app.diagnosis.tab.parameters;

import android.content.Context;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ParametersViewPresenterV2_MembersInjector implements MembersInjector<ParametersViewPresenterV2> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<VehicleParamMapperV2> mVehicleParamMapperProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public ParametersViewPresenterV2_MembersInjector(Provider<Context> provider, Provider<VehicleParametersManagerV2> provider2, Provider<VehicleParamMapperV2> provider3, Provider<DongleDataManager> provider4, Provider<Communication> provider5, Provider<CommunicationObservable> provider6) {
        this.mContextProvider = provider;
        this.mVehicleParametersManagerV2Provider = provider2;
        this.mVehicleParamMapperProvider = provider3;
        this.mDongleDataManagerProvider = provider4;
        this.mCommunicationProvider = provider5;
        this.mCommunicationObservableProvider = provider6;
    }

    public static MembersInjector<ParametersViewPresenterV2> create(Provider<Context> provider, Provider<VehicleParametersManagerV2> provider2, Provider<VehicleParamMapperV2> provider3, Provider<DongleDataManager> provider4, Provider<Communication> provider5, Provider<CommunicationObservable> provider6) {
        return new ParametersViewPresenterV2_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ParametersViewPresenterV2 parametersViewPresenterV2) {
        injectMContext(parametersViewPresenterV2, this.mContextProvider.get());
        injectMVehicleParametersManagerV2(parametersViewPresenterV2, this.mVehicleParametersManagerV2Provider.get());
        injectMVehicleParamMapper(parametersViewPresenterV2, this.mVehicleParamMapperProvider.get());
        injectMDongleDataManager(parametersViewPresenterV2, this.mDongleDataManagerProvider.get());
        injectMCommunication(parametersViewPresenterV2, this.mCommunicationProvider.get());
        injectMCommunicationObservable(parametersViewPresenterV2, this.mCommunicationObservableProvider.get());
    }

    public static void injectMContext(ParametersViewPresenterV2 parametersViewPresenterV2, Context context) {
        parametersViewPresenterV2.mContext = context;
    }

    public static void injectMVehicleParametersManagerV2(ParametersViewPresenterV2 parametersViewPresenterV2, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        parametersViewPresenterV2.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMVehicleParamMapper(ParametersViewPresenterV2 parametersViewPresenterV2, VehicleParamMapperV2 vehicleParamMapperV2) {
        parametersViewPresenterV2.mVehicleParamMapper = vehicleParamMapperV2;
    }

    public static void injectMDongleDataManager(ParametersViewPresenterV2 parametersViewPresenterV2, DongleDataManager dongleDataManager) {
        parametersViewPresenterV2.mDongleDataManager = dongleDataManager;
    }

    public static void injectMCommunication(ParametersViewPresenterV2 parametersViewPresenterV2, Communication communication) {
        parametersViewPresenterV2.mCommunication = communication;
    }

    public static void injectMCommunicationObservable(ParametersViewPresenterV2 parametersViewPresenterV2, CommunicationObservable communicationObservable) {
        parametersViewPresenterV2.mCommunicationObservable = communicationObservable;
    }
}
