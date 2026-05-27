package com.texa.careapp.app.onboarding;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class InstallationHelpScreen_MembersInjector implements MembersInjector<InstallationHelpScreen> {
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;

    public InstallationHelpScreen_MembersInjector(Provider<Communication> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<EventBus> provider4) {
        this.mCommunicationProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mEventBusProvider = provider4;
    }

    public static MembersInjector<InstallationHelpScreen> create(Provider<Communication> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<EventBus> provider4) {
        return new InstallationHelpScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(InstallationHelpScreen installationHelpScreen) {
        injectMCommunication(installationHelpScreen, this.mCommunicationProvider.get());
        injectMDongleDataManager(installationHelpScreen, this.mDongleDataManagerProvider.get());
        injectMPreferences(installationHelpScreen, this.mPreferencesProvider.get());
        injectMEventBus(installationHelpScreen, this.mEventBusProvider.get());
    }

    public static void injectMCommunication(InstallationHelpScreen installationHelpScreen, Communication communication) {
        installationHelpScreen.mCommunication = communication;
    }

    public static void injectMDongleDataManager(InstallationHelpScreen installationHelpScreen, DongleDataManager dongleDataManager) {
        installationHelpScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMPreferences(InstallationHelpScreen installationHelpScreen, SharedPreferences sharedPreferences) {
        installationHelpScreen.mPreferences = sharedPreferences;
    }

    public static void injectMEventBus(InstallationHelpScreen installationHelpScreen, EventBus eventBus) {
        installationHelpScreen.mEventBus = eventBus;
    }
}
