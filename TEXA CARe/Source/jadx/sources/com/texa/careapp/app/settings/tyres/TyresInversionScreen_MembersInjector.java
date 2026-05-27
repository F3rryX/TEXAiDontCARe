package com.texa.careapp.app.settings.tyres;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.sync.CAReWorkerManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class TyresInversionScreen_MembersInjector implements MembersInjector<TyresInversionScreen> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;

    public TyresInversionScreen_MembersInjector(Provider<EventBus> provider, Provider<CAReWorkerManager> provider2, Provider<TexaCareApiServiceUser> provider3) {
        this.mEventBusProvider = provider;
        this.mCAReWorkerManagerProvider = provider2;
        this.mTexaCareApiServiceUserProvider = provider3;
    }

    public static MembersInjector<TyresInversionScreen> create(Provider<EventBus> provider, Provider<CAReWorkerManager> provider2, Provider<TexaCareApiServiceUser> provider3) {
        return new TyresInversionScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(TyresInversionScreen tyresInversionScreen) {
        injectMEventBus(tyresInversionScreen, this.mEventBusProvider.get());
        injectMCAReWorkerManager(tyresInversionScreen, this.mCAReWorkerManagerProvider.get());
        injectMTexaCareApiServiceUser(tyresInversionScreen, this.mTexaCareApiServiceUserProvider.get());
    }

    public static void injectMEventBus(TyresInversionScreen tyresInversionScreen, EventBus eventBus) {
        tyresInversionScreen.mEventBus = eventBus;
    }

    public static void injectMCAReWorkerManager(TyresInversionScreen tyresInversionScreen, CAReWorkerManager cAReWorkerManager) {
        tyresInversionScreen.mCAReWorkerManager = cAReWorkerManager;
    }

    public static void injectMTexaCareApiServiceUser(TyresInversionScreen tyresInversionScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        tyresInversionScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }
}
