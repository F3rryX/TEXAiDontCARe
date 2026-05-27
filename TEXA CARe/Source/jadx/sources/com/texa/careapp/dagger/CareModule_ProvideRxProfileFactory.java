package com.texa.careapp.dagger;

import com.texa.care.eco_driving.RxProfile;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideRxProfileFactory implements Factory<RxProfile> {
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideRxProfileFactory(CareModule careModule, Provider<Profile> provider) {
        this.module = careModule;
        this.profileProvider = provider;
    }

    @Override // javax.inject.Provider
    public RxProfile get() {
        return provideRxProfile(this.module, this.profileProvider.get());
    }

    public static CareModule_ProvideRxProfileFactory create(CareModule careModule, Provider<Profile> provider) {
        return new CareModule_ProvideRxProfileFactory(careModule, provider);
    }

    public static RxProfile provideRxProfile(CareModule careModule, Profile profile) {
        return (RxProfile) Preconditions.checkNotNullFromProvides(careModule.provideRxProfile(profile));
    }
}
