package com.texa.careapp.app.settings.troubleshooting;

import android.content.Context;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ProblemResolutionScreen_MembersInjector implements MembersInjector<ProblemResolutionScreen> {
    private final Provider<Communication> communicationProvider;
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<CurrentTrip> mCurrentTripProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public ProblemResolutionScreen_MembersInjector(Provider<Context> provider, Provider<VehicleParametersManagerV2> provider2, Provider<ICareObserver> provider3, Provider<CurrentTrip> provider4, Provider<Accessory> provider5, Provider<VehicleObserver> provider6, Provider<Communication> provider7, Provider<TexaCareApiServiceUser> provider8) {
        this.mContextProvider = provider;
        this.mVehicleParametersManagerV2Provider = provider2;
        this.mCareObserverProvider = provider3;
        this.mCurrentTripProvider = provider4;
        this.mAccessoryProvider = provider5;
        this.mVehicleObserverProvider = provider6;
        this.communicationProvider = provider7;
        this.texaCareApiServiceUserProvider = provider8;
    }

    public static MembersInjector<ProblemResolutionScreen> create(Provider<Context> provider, Provider<VehicleParametersManagerV2> provider2, Provider<ICareObserver> provider3, Provider<CurrentTrip> provider4, Provider<Accessory> provider5, Provider<VehicleObserver> provider6, Provider<Communication> provider7, Provider<TexaCareApiServiceUser> provider8) {
        return new ProblemResolutionScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ProblemResolutionScreen problemResolutionScreen) {
        injectMContext(problemResolutionScreen, this.mContextProvider.get());
        injectMVehicleParametersManagerV2(problemResolutionScreen, this.mVehicleParametersManagerV2Provider.get());
        injectMCareObserver(problemResolutionScreen, this.mCareObserverProvider.get());
        injectMCurrentTrip(problemResolutionScreen, this.mCurrentTripProvider.get());
        injectMAccessory(problemResolutionScreen, this.mAccessoryProvider.get());
        injectMVehicleObserver(problemResolutionScreen, this.mVehicleObserverProvider.get());
        injectCommunication(problemResolutionScreen, this.communicationProvider.get());
        injectTexaCareApiServiceUser(problemResolutionScreen, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectMContext(ProblemResolutionScreen problemResolutionScreen, Context context) {
        problemResolutionScreen.mContext = context;
    }

    public static void injectMVehicleParametersManagerV2(ProblemResolutionScreen problemResolutionScreen, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        problemResolutionScreen.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMCareObserver(ProblemResolutionScreen problemResolutionScreen, ICareObserver iCareObserver) {
        problemResolutionScreen.mCareObserver = iCareObserver;
    }

    public static void injectMCurrentTrip(ProblemResolutionScreen problemResolutionScreen, CurrentTrip currentTrip) {
        problemResolutionScreen.mCurrentTrip = currentTrip;
    }

    public static void injectMAccessory(ProblemResolutionScreen problemResolutionScreen, Accessory accessory) {
        problemResolutionScreen.mAccessory = accessory;
    }

    public static void injectMVehicleObserver(ProblemResolutionScreen problemResolutionScreen, VehicleObserver vehicleObserver) {
        problemResolutionScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectCommunication(ProblemResolutionScreen problemResolutionScreen, Communication communication) {
        problemResolutionScreen.communication = communication;
    }

    public static void injectTexaCareApiServiceUser(ProblemResolutionScreen problemResolutionScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        problemResolutionScreen.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
