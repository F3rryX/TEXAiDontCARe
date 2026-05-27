package com.texa.careapp.app.onboarding;

import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareAuthenticationScreen_MembersInjector implements MembersInjector<CareAuthenticationScreen> {
    private final Provider<ArmadilloSharedPreferences> mArmadilloSharedPreferencesProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<ICareObserver> mICareObserverProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<TexaProfileDelegate> mTexaProfileDelegateProvider;

    public CareAuthenticationScreen_MembersInjector(Provider<DongleDataManager> provider, Provider<TexaProfileDelegate> provider2, Provider<Profile> provider3, Provider<LoggerManager> provider4, Provider<Communication> provider5, Provider<ICareObserver> provider6, Provider<ArmadilloSharedPreferences> provider7) {
        this.mDongleDataManagerProvider = provider;
        this.mTexaProfileDelegateProvider = provider2;
        this.mProfileProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mCommunicationProvider = provider5;
        this.mICareObserverProvider = provider6;
        this.mArmadilloSharedPreferencesProvider = provider7;
    }

    public static MembersInjector<CareAuthenticationScreen> create(Provider<DongleDataManager> provider, Provider<TexaProfileDelegate> provider2, Provider<Profile> provider3, Provider<LoggerManager> provider4, Provider<Communication> provider5, Provider<ICareObserver> provider6, Provider<ArmadilloSharedPreferences> provider7) {
        return new CareAuthenticationScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CareAuthenticationScreen careAuthenticationScreen) {
        injectMDongleDataManager(careAuthenticationScreen, this.mDongleDataManagerProvider.get());
        injectMTexaProfileDelegate(careAuthenticationScreen, this.mTexaProfileDelegateProvider.get());
        injectMProfile(careAuthenticationScreen, this.mProfileProvider.get());
        injectMLoggerManager(careAuthenticationScreen, this.mLoggerManagerProvider.get());
        injectMCommunication(careAuthenticationScreen, this.mCommunicationProvider.get());
        injectMICareObserver(careAuthenticationScreen, this.mICareObserverProvider.get());
        injectMArmadilloSharedPreferences(careAuthenticationScreen, this.mArmadilloSharedPreferencesProvider.get());
    }

    public static void injectMDongleDataManager(CareAuthenticationScreen careAuthenticationScreen, DongleDataManager dongleDataManager) {
        careAuthenticationScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMTexaProfileDelegate(CareAuthenticationScreen careAuthenticationScreen, TexaProfileDelegate texaProfileDelegate) {
        careAuthenticationScreen.mTexaProfileDelegate = texaProfileDelegate;
    }

    public static void injectMProfile(CareAuthenticationScreen careAuthenticationScreen, Profile profile) {
        careAuthenticationScreen.mProfile = profile;
    }

    public static void injectMLoggerManager(CareAuthenticationScreen careAuthenticationScreen, LoggerManager loggerManager) {
        careAuthenticationScreen.mLoggerManager = loggerManager;
    }

    public static void injectMCommunication(CareAuthenticationScreen careAuthenticationScreen, Communication communication) {
        careAuthenticationScreen.mCommunication = communication;
    }

    public static void injectMICareObserver(CareAuthenticationScreen careAuthenticationScreen, ICareObserver iCareObserver) {
        careAuthenticationScreen.mICareObserver = iCareObserver;
    }

    public static void injectMArmadilloSharedPreferences(CareAuthenticationScreen careAuthenticationScreen, ArmadilloSharedPreferences armadilloSharedPreferences) {
        careAuthenticationScreen.mArmadilloSharedPreferences = armadilloSharedPreferences;
    }
}
