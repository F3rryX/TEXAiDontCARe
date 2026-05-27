package com.texa.careapp.app.sos;

import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SosPrerequisiteScreen_MembersInjector implements MembersInjector<SosPrerequisiteScreen> {
    private final Provider<ChecksFactory> mChecksFactoryProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SosPrerequisiteScreen_MembersInjector(Provider<DongleDataManager> provider, Provider<ServiceDataManager> provider2, Provider<Communication> provider3, Provider<ChecksFactory> provider4, Provider<UserDataManager> provider5) {
        this.mDongleDataManagerProvider = provider;
        this.mServiceDataManagerProvider = provider2;
        this.mCommunicationProvider = provider3;
        this.mChecksFactoryProvider = provider4;
        this.mUserDataManagerProvider = provider5;
    }

    public static MembersInjector<SosPrerequisiteScreen> create(Provider<DongleDataManager> provider, Provider<ServiceDataManager> provider2, Provider<Communication> provider3, Provider<ChecksFactory> provider4, Provider<UserDataManager> provider5) {
        return new SosPrerequisiteScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SosPrerequisiteScreen sosPrerequisiteScreen) {
        injectMDongleDataManager(sosPrerequisiteScreen, this.mDongleDataManagerProvider.get());
        injectMServiceDataManager(sosPrerequisiteScreen, this.mServiceDataManagerProvider.get());
        injectMCommunication(sosPrerequisiteScreen, this.mCommunicationProvider.get());
        injectMChecksFactory(sosPrerequisiteScreen, this.mChecksFactoryProvider.get());
        injectMUserDataManager(sosPrerequisiteScreen, this.mUserDataManagerProvider.get());
    }

    public static void injectMDongleDataManager(SosPrerequisiteScreen sosPrerequisiteScreen, DongleDataManager dongleDataManager) {
        sosPrerequisiteScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMServiceDataManager(SosPrerequisiteScreen sosPrerequisiteScreen, ServiceDataManager serviceDataManager) {
        sosPrerequisiteScreen.mServiceDataManager = serviceDataManager;
    }

    public static void injectMCommunication(SosPrerequisiteScreen sosPrerequisiteScreen, Communication communication) {
        sosPrerequisiteScreen.mCommunication = communication;
    }

    public static void injectMChecksFactory(SosPrerequisiteScreen sosPrerequisiteScreen, ChecksFactory checksFactory) {
        sosPrerequisiteScreen.mChecksFactory = checksFactory;
    }

    public static void injectMUserDataManager(SosPrerequisiteScreen sosPrerequisiteScreen, UserDataManager userDataManager) {
        sosPrerequisiteScreen.mUserDataManager = userDataManager;
    }
}
