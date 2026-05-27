package com.texa.careapp.dagger;

import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideProfileFactory implements Factory<Profile> {
    private final Provider<Communication> communicationProvider;
    private final CareModule module;
    private final Provider<TexaProfileDelegate> texaProfileDelegateProvider;

    public CareModule_ProvideProfileFactory(CareModule careModule, Provider<Communication> provider, Provider<TexaProfileDelegate> provider2) {
        this.module = careModule;
        this.communicationProvider = provider;
        this.texaProfileDelegateProvider = provider2;
    }

    @Override // javax.inject.Provider
    public Profile get() {
        return provideProfile(this.module, this.communicationProvider.get(), this.texaProfileDelegateProvider.get());
    }

    public static CareModule_ProvideProfileFactory create(CareModule careModule, Provider<Communication> provider, Provider<TexaProfileDelegate> provider2) {
        return new CareModule_ProvideProfileFactory(careModule, provider, provider2);
    }

    public static Profile provideProfile(CareModule careModule, Communication communication, TexaProfileDelegate texaProfileDelegate) {
        return (Profile) Preconditions.checkNotNullFromProvides(careModule.provideProfile(communication, texaProfileDelegate));
    }
}
