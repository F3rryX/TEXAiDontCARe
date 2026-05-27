package com.texa.careapp.app.ecodriving;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingDialogHideTrip_MembersInjector implements MembersInjector<EcoDrivingDialogHideTrip> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public EcoDrivingDialogHideTrip_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2) {
        this.mTexaCareApiServiceProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<EcoDrivingDialogHideTrip> create(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2) {
        return new EcoDrivingDialogHideTrip_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip) {
        injectMTexaCareApiService(ecoDrivingDialogHideTrip, this.mTexaCareApiServiceProvider.get());
        injectMEventBus(ecoDrivingDialogHideTrip, this.mEventBusProvider.get());
    }

    public static void injectMTexaCareApiService(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip, TexaCareApiServiceUser texaCareApiServiceUser) {
        ecoDrivingDialogHideTrip.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMEventBus(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip, EventBus eventBus) {
        ecoDrivingDialogHideTrip.mEventBus = eventBus;
    }
}
