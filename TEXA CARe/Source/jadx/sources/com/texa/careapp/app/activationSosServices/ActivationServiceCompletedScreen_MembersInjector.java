package com.texa.careapp.app.activationSosServices;

import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationServiceCompletedScreen_MembersInjector implements MembersInjector<ActivationServiceCompletedScreen> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public ActivationServiceCompletedScreen_MembersInjector(Provider<EventBus> provider, Provider<UserDataManager> provider2, Provider<CAReWorkerManager> provider3) {
        this.mEventBusProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mCAReWorkerManagerProvider = provider3;
    }

    public static MembersInjector<ActivationServiceCompletedScreen> create(Provider<EventBus> provider, Provider<UserDataManager> provider2, Provider<CAReWorkerManager> provider3) {
        return new ActivationServiceCompletedScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceCompletedScreen activationServiceCompletedScreen) {
        injectMEventBus(activationServiceCompletedScreen, this.mEventBusProvider.get());
        injectMUserDataManager(activationServiceCompletedScreen, this.mUserDataManagerProvider.get());
        injectMCAReWorkerManager(activationServiceCompletedScreen, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMEventBus(ActivationServiceCompletedScreen activationServiceCompletedScreen, EventBus eventBus) {
        activationServiceCompletedScreen.mEventBus = eventBus;
    }

    public static void injectMUserDataManager(ActivationServiceCompletedScreen activationServiceCompletedScreen, UserDataManager userDataManager) {
        activationServiceCompletedScreen.mUserDataManager = userDataManager;
    }

    public static void injectMCAReWorkerManager(ActivationServiceCompletedScreen activationServiceCompletedScreen, CAReWorkerManager cAReWorkerManager) {
        activationServiceCompletedScreen.mCAReWorkerManager = cAReWorkerManager;
    }
}
