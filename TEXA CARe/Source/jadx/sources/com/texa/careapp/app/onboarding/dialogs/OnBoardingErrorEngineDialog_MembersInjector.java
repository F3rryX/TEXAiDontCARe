package com.texa.careapp.app.onboarding.dialogs;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class OnBoardingErrorEngineDialog_MembersInjector implements MembersInjector<OnBoardingErrorEngineDialog> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public OnBoardingErrorEngineDialog_MembersInjector(Provider<EventBus> provider, Provider<DongleDataManager> provider2, Provider<UserDataManager> provider3) {
        this.mEventBusProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mUserDataManagerProvider = provider3;
    }

    public static MembersInjector<OnBoardingErrorEngineDialog> create(Provider<EventBus> provider, Provider<DongleDataManager> provider2, Provider<UserDataManager> provider3) {
        return new OnBoardingErrorEngineDialog_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog) {
        injectMEventBus(onBoardingErrorEngineDialog, this.mEventBusProvider.get());
        injectMDongleDataManager(onBoardingErrorEngineDialog, this.mDongleDataManagerProvider.get());
        injectMUserDataManager(onBoardingErrorEngineDialog, this.mUserDataManagerProvider.get());
    }

    public static void injectMEventBus(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog, EventBus eventBus) {
        onBoardingErrorEngineDialog.mEventBus = eventBus;
    }

    public static void injectMDongleDataManager(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog, DongleDataManager dongleDataManager) {
        onBoardingErrorEngineDialog.mDongleDataManager = dongleDataManager;
    }

    public static void injectMUserDataManager(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog, UserDataManager userDataManager) {
        onBoardingErrorEngineDialog.mUserDataManager = userDataManager;
    }
}
