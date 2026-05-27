package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ParametersCardViewPresenter_MembersInjector implements MembersInjector<ParametersCardViewPresenter> {
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<VehicleParamMapperV2> mVehicleParamMapperProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public ParametersCardViewPresenter_MembersInjector(Provider<Context> provider, Provider<DongleDataManager> provider2, Provider<VehicleParametersManagerV2> provider3, Provider<VehicleParamMapperV2> provider4, Provider<SharedPreferences> provider5, Provider<Communication> provider6) {
        this.mContextProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mVehicleParametersManagerV2Provider = provider3;
        this.mVehicleParamMapperProvider = provider4;
        this.mPreferencesProvider = provider5;
        this.mCommunicationProvider = provider6;
    }

    public static MembersInjector<ParametersCardViewPresenter> create(Provider<Context> provider, Provider<DongleDataManager> provider2, Provider<VehicleParametersManagerV2> provider3, Provider<VehicleParamMapperV2> provider4, Provider<SharedPreferences> provider5, Provider<Communication> provider6) {
        return new ParametersCardViewPresenter_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ParametersCardViewPresenter parametersCardViewPresenter) {
        injectMContext(parametersCardViewPresenter, this.mContextProvider.get());
        injectMDongleDataManager(parametersCardViewPresenter, this.mDongleDataManagerProvider.get());
        injectMVehicleParametersManagerV2(parametersCardViewPresenter, this.mVehicleParametersManagerV2Provider.get());
        injectMVehicleParamMapper(parametersCardViewPresenter, this.mVehicleParamMapperProvider.get());
        injectMPreferences(parametersCardViewPresenter, this.mPreferencesProvider.get());
        injectMCommunication(parametersCardViewPresenter, this.mCommunicationProvider.get());
    }

    public static void injectMContext(ParametersCardViewPresenter parametersCardViewPresenter, Context context) {
        parametersCardViewPresenter.mContext = context;
    }

    public static void injectMDongleDataManager(ParametersCardViewPresenter parametersCardViewPresenter, DongleDataManager dongleDataManager) {
        parametersCardViewPresenter.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleParametersManagerV2(ParametersCardViewPresenter parametersCardViewPresenter, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        parametersCardViewPresenter.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMVehicleParamMapper(ParametersCardViewPresenter parametersCardViewPresenter, VehicleParamMapperV2 vehicleParamMapperV2) {
        parametersCardViewPresenter.mVehicleParamMapper = vehicleParamMapperV2;
    }

    public static void injectMPreferences(ParametersCardViewPresenter parametersCardViewPresenter, SharedPreferences sharedPreferences) {
        parametersCardViewPresenter.mPreferences = sharedPreferences;
    }

    public static void injectMCommunication(ParametersCardViewPresenter parametersCardViewPresenter, Communication communication) {
        parametersCardViewPresenter.mCommunication = communication;
    }
}
