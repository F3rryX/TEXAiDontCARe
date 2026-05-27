package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.MechanicDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideMechanicDataManagerFactory implements Factory<MechanicDataManager> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<SharedPreferences> sharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceProvider;

    public CareModule_ProvideMechanicDataManagerFactory(CareModule careModule, Provider<SharedPreferences> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3) {
        this.module = careModule;
        this.sharedPreferencesProvider = provider;
        this.texaCareApiServiceProvider = provider2;
        this.dongleDataManagerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public MechanicDataManager get() {
        return provideMechanicDataManager(this.module, this.sharedPreferencesProvider.get(), this.texaCareApiServiceProvider.get(), this.dongleDataManagerProvider.get());
    }

    public static CareModule_ProvideMechanicDataManagerFactory create(CareModule careModule, Provider<SharedPreferences> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3) {
        return new CareModule_ProvideMechanicDataManagerFactory(careModule, provider, provider2, provider3);
    }

    public static MechanicDataManager provideMechanicDataManager(CareModule careModule, SharedPreferences sharedPreferences, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager) {
        return (MechanicDataManager) Preconditions.checkNotNullFromProvides(careModule.provideMechanicDataManager(sharedPreferences, texaCareApiServiceUser, dongleDataManager));
    }
}
