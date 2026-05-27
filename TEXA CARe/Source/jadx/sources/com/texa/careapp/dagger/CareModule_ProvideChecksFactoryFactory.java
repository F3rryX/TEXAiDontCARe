package com.texa.careapp.dagger;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideChecksFactoryFactory implements Factory<ChecksFactory> {
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<ReactiveLocationProvider> mReactiveLocationProvider;
    private final CareModule module;
    private final Provider<ServiceDataManager> serviceDataManagerProvider;
    private final Provider<UserDataManager> userDataManagerProvider;

    public CareModule_ProvideChecksFactoryFactory(CareModule careModule, Provider<UserDataManager> provider, Provider<CommunicationObservable> provider2, Provider<DongleDataManager> provider3, Provider<ReactiveLocationProvider> provider4, Provider<ServiceDataManager> provider5) {
        this.module = careModule;
        this.userDataManagerProvider = provider;
        this.communicationObservableProvider = provider2;
        this.dongleDataManagerProvider = provider3;
        this.mReactiveLocationProvider = provider4;
        this.serviceDataManagerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public ChecksFactory get() {
        return provideChecksFactory(this.module, this.userDataManagerProvider.get(), this.communicationObservableProvider.get(), this.dongleDataManagerProvider.get(), this.mReactiveLocationProvider.get(), this.serviceDataManagerProvider.get());
    }

    public static CareModule_ProvideChecksFactoryFactory create(CareModule careModule, Provider<UserDataManager> provider, Provider<CommunicationObservable> provider2, Provider<DongleDataManager> provider3, Provider<ReactiveLocationProvider> provider4, Provider<ServiceDataManager> provider5) {
        return new CareModule_ProvideChecksFactoryFactory(careModule, provider, provider2, provider3, provider4, provider5);
    }

    public static ChecksFactory provideChecksFactory(CareModule careModule, UserDataManager userDataManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, ReactiveLocationProvider reactiveLocationProvider, ServiceDataManager serviceDataManager) {
        return (ChecksFactory) Preconditions.checkNotNullFromProvides(careModule.provideChecksFactory(userDataManager, communicationObservable, dongleDataManager, reactiveLocationProvider, serviceDataManager));
    }
}
