package com.texa.careapp.app.settings.tyres;

import com.texa.careapp.sync.CAReWorkerManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class TyresNewInstallScreen_MembersInjector implements MembersInjector<TyresNewInstallScreen> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<EventBus> mEventBusProvider;

    public TyresNewInstallScreen_MembersInjector(Provider<EventBus> provider, Provider<CAReWorkerManager> provider2) {
        this.mEventBusProvider = provider;
        this.mCAReWorkerManagerProvider = provider2;
    }

    public static MembersInjector<TyresNewInstallScreen> create(Provider<EventBus> provider, Provider<CAReWorkerManager> provider2) {
        return new TyresNewInstallScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(TyresNewInstallScreen tyresNewInstallScreen) {
        injectMEventBus(tyresNewInstallScreen, this.mEventBusProvider.get());
        injectMCAReWorkerManager(tyresNewInstallScreen, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMEventBus(TyresNewInstallScreen tyresNewInstallScreen, EventBus eventBus) {
        tyresNewInstallScreen.mEventBus = eventBus;
    }

    public static void injectMCAReWorkerManager(TyresNewInstallScreen tyresNewInstallScreen, CAReWorkerManager cAReWorkerManager) {
        tyresNewInstallScreen.mCAReWorkerManager = cAReWorkerManager;
    }
}
